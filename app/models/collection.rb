class Collection < ApplicationRecord
  has_many :collection_books
  has_many :books, through: :collection_books
end
