class Author < ApplicationRecord
  has_many :author_books
  has_many :books, through: :author_books


  def avg_number_pages
    books.average(:pages)
  end
end
