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


    visit "/authors/#{author_1.id}"

    expect(page).to have_content("Anthony Doerr")
    expect(page).to have_content("All the Light We Cannot See")
    expect(page).to have_content("About Grace")
    expect(page).to have_content(488)
  end
end
