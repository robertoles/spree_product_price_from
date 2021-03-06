Spree::Product.class_eval do
  def price_from
    return price if variants.count.zero?
    variants.map(&:price).min
  end
end