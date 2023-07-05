class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
    @sale = Sale.where("sales.starts_on <= ? AND sales.ends_on >= ?", Date.current, Date.current)
    if @sale[0]
      @products.each do |product|
        product.price = product.price - product.price * (@sale[0]["percent_off"].to_f / 100)
      end
    end
  end

  def show
    @product = Product.find params[:id]
    @sale = Sale.where("sales.starts_on <= ? AND sales.ends_on >= ?", Date.current, Date.current)

    if @sale[0]
      @product.price = @product.price - @product.price * (@sale[0]["percent_off"].to_f / 100)
    end
  end
end
