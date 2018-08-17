require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  describe 'POST :create' do
    let(:valid_product_attributes) do
           { product: { title: 'Sample title', description: 'Sample description', price: 10, image_url: '7apps.jpg' } }
    end

    it 'should create new product' do
      expect{ post :create, params: valid_product_attributes }.to change(Product, :count).by(1)
    end
  end
end
