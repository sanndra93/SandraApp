class Article < ApplicationRecord
	validates :title, presence: true
	validates :body, presence: true

	#prikaz poslednjeg(najnovijeg) napravljenog artikla na vrhu
	default_scope { order(created_at: :desc)}
end
