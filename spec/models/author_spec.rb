require 'rails_helper'

RSpec.describe Author, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name}
  end

  describe "relationships" do
    it {should have_many :author_books}
    it {should have_many(:books).through(:author_books)}
  end
end

  describe 'average number of pages' do
    it "can calculate averge number of pages in all books" do

      author_1 = Author.create!(name: "Anthony Doerr")

      book_1 = author_1.books.create!(title: "All the Light We Cannot See",
                                      pages: 544,
                                      publication_year: 2014)

      book_2 = author_1.books.create!(title: "About Grace",
                                      pages: 432,
                                      publication_year: 2015)

      expect(author_1.avg_number_pages).to eq(488)
  end
end
