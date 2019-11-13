require 'rails_helper'

RSpec.describe Book do
  let(:author) { create(:author) }
  let(:category) { create(:category) }
  let(:book) { build(:book, category: category) }
  let(:authors_book) { create(:authors_book, book: book, author: author) }

  it 'is invalid without title' do
    book.title = nil
    expect(book).not_to be_valid
  end

  it 'is invalid without category' do
    book.category = nil
    expect(book).not_to be_valid
  end  

  it 'is saved if it is valid' do
    expect(book.save).to eq(true)
  end

  it 'has many authors' do
    expect(book).to respond_to :authors
  end
end
