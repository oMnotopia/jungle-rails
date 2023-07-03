require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'validates presence of all' do
      @category = Category.create(name: 'Cactus')
      @all_products = Product.all
      @product = Product.create(name: "plant_name", price: 20, quantity: 1, category: @category)
      expect(@product).not_to eq @all_products
    end

    it 'validates error for no presence of name' do
      @category = Category.create(name: 'Cactus')
      @product = Product.create(name: nil, price: 20, quantity: 1, category: @category)
      expect(@product.errors.full_messages[0]).to eq("Name can't be blank")
    end

    it 'validates error for no presence of price' do
      @category = Category.create(name: 'Cactus')
      @product = Product.create(name: "plant_name", quantity: 1, category: @category)
      expect(@product.errors.full_messages[2]).to eq("Price can't be blank")
    end

    it 'validates error for no presence of quantity' do
      @category = Category.create(name: 'Cactus')
      @product = Product.create(name: "plant_name", price: 20, category: @category)
      expect(@product.errors.full_messages[0]).to eq("Quantity can't be blank")
    end

    it 'validates error for no presence of category' do
      @category = Category.create(name: 'Cactus')
      @product = Product.create(name: "plant_name", price: 20, quantity: 1 )
      expect(@product.errors.full_messages[0]).to eq("Category must exist")
    end
  end
end