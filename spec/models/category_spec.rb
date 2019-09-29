require 'rails_helper'

RSpec.describe Category do
  let(:author) { create(:author) }
  let(:category) { build(:category) }
  let(:book) { build(:book, category: category) }
  let(:authors_book) { create(:authors_book, book: book, author: author) }

  it 'is invalid without name' do
    category.name = nil
    expect(category).not_to be_valid
  end 

  it 'is saved if it is valid' do
    expect(category.save).to eq(true)
  end

  it 'has many books' do
    expect(category).to respond_to :books
  end
end
