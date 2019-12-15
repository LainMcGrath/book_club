require 'rails_helper'

RSpec.describe "User can see all books", type: :feature do
  it "can see all books" do

    author_1 = Author.create!(name: "Anthony Doerr")
    author_2 = Author.create!(name: "Stieg Larson")

    book_1 = author_1.books.create!(title: "All the Light We Cannot See",
                                    pages: 544,
                                    publication_year: 2014)

    book_2 = author_1.books.create!(title: "About Grace",
                                    pages: 432,
                                    publication_year: 2015)

    book_3 = author_2.books.create!(title: "The Girl With the Dragon Tattoo",
                                    pages: 463,
                                    publication_year: 2005)

    book_4 = author_2.books.create!(title: "The Girl Who Played With Fire",
                                    pages: 631,
                                    publication_year: 2006)

    book_5 = author_2.books.create!(title: "The Girl Who Kicked the Hornet's Nest",
                                    pages: 602,
                                    publication_year: 2007)

    books_array = [book_1, book_2, book_3, book_4, book_5]

    visit "/books"

    books_array.each do |book|
      within "#book-#{book.id}" do
        expect(page).to have_content(book.title)
        expect(page).to have_content(book.pages)
        expect(page).to have_content(book.publication_year)
        expect(page).to have_content(book.authors.name)
      end
    end
  end
end
