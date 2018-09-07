require "rails_helper"

RSpec.feature "Users signin" do 
	before do 
		@mika = User.create!(email: "mika@example.com", password: "mika123")
	end

	scenario "with valid credentials" do
		visit "/"

		click_link "Sign in"

		fill_in "Email", with: @mika.email
		fill_in "Password", with: @mika.password

		click_button "Log in"

		expect(page).to have_content("Signed in successfully")
		expect(page).to have_content("Signed in as #{@mika.email}")
		expect(page).not_to have_link("Sign in")
		expect(page).not_to have_link("Sign up")
	end
end