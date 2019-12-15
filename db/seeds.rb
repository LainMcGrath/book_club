# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

author_1 = Author.create!(name: "Anthony Doerr")
author_2 = Author.create!(name: "Stieg Larson")

book_1 = author_1.books.create!(title: "All the Light We Cannot See",
                                pages: 544,
                                publication_year: 2014)

book_2 = author_1.books.create!(title: "About Grace",
                                pages: 432,
                                publication_year: 2015)

book_3 = author_2.books.create!(title: "The Girl with the Dragon Tattoo",
                                pages: 463,
                                publication_year: 2005)

book_4 = author_2.books.create!(title: "The Girl Who Played With Fire",
                                pages: 631,
                                publication_year: 2006)

book_5 = author_2.books.create!(title: "The Girl Who Kicked the Hornet's Nest",
                                pages: 602,
                                publication_year: 2007)
