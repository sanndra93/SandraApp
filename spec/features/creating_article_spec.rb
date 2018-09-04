require "rails_helper"

RSpec.feature "Creating Articles" do 
	scenario "A user creates a new article" do 
		visit "/"

		click_link "New Article"

		fill_in "Title", with: "Creating a blog"
		fill_in "Body", with: "Lorem Ipsum"

		click_button "Create Article"

		#expect -> ocekujemo poruku da li je kreirano ili ne
		expect(page).to have_content("Articles has been created")
		expect(page.current_path).to eq(articles_path)
	end
end