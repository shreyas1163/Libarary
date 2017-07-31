class Book < ApplicationRecord
	has_many :articles, inverse_of: :book
	has_many :posts, inverse_of: :book
end
