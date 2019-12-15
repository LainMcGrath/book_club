require 'rails_helper'

RSpec.describe Collection, type: :model do
  describe "relationships" do
    it {should have_many :collection_books}
    it {should have_many(:books).through(:collection_books)}
  end
end