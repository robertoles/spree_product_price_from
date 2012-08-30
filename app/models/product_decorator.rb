Spree::Product.class_eval do
  def price_from
    variants.minimum(:price)
  end
end