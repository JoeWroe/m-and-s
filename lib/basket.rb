class Basket

  attr_reader :product_catalog, :delivery_charge_rules

  def initialize(product_catalog: , delivery_charge_rules: )
    @product_catalog       = product_catalog
    @delivery_charge_rules = delivery_charge_rules
  end
end
