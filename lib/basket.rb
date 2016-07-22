class Basket

  attr_reader :product_catalog

  def initialize(product_catalog: )
    @product_catalog = product_catalog
  end
end
