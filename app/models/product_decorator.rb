Spree::Product.class_eval do
  def price_from
    variants.select(:price).min.price
  end
end