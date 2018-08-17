require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'validations' do
    let(:product) { build(:product) }

    it 'is ok with valid data' do
      expect(product).to be_valid
    end

    it 'should have present title' do
      product.title = nil
      expect(product.valid?).to be_falsey
      expect(product.errors.messages[:title][0]).to eq("can't be blank")
    end

    it 'should have present description' do
      product.description = nil
      expect(product.valid?).to be_falsey
      expect(product.errors.messages[:description][0]).to eq("can't be blank")
    end

    it 'should have unique title' do
      product2 = create(:product)
      expect(product.valid?).to be_falsey
      expect(product.errors.messages[:title][0]).to eq('has already been taken')
    end

    it 'should have numerical price' do
      product.price = 'a'
      expect(product.valid?).to be_falsey
      expect(product.errors.messages[:price][0]).to eq("is not a number")
    end

    it 'should have price greater than 0' do
      product.price = 0
      expect(product.valid?).to be_falsey
      expect(product.errors.messages[:price][0]).to eq("must be greater than or equal to 0.01")
    end
  end
end
