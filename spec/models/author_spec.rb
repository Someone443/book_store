require 'rails_helper'

RSpec.describe Author do
  let(:author) { build(:author) }
  let(:category) { create(:category) }
  let(:book) { build(:book, category: category) }
  let(:authors_book) { create(:authors_book, book: book, author: author) }

  it 'is invalid without first name' do
    author.first_name = nil
    expect(author).not_to be_valid
  end

  it 'is invalid without last name' do
    author.last_name = nil
    expect(author).not_to be_valid
  end  

  it 'is saved if it is valid' do
    expect(author.save).to eq(true)
  end

  it 'has many authors books' do
    expect(author).to respond_to :authors_books
  end

  it 'has many books' do
    expect(author).to respond_to :books
  end
end
