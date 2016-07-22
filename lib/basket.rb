class Basket

  attr_reader :product_catalog, :delivery_charge_rules, :current_offers

  def initialize(product_catalog: , delivery_charge_rules: , current_offers: )
    @product_catalog       = product_catalog
    @delivery_charge_rules = delivery_charge_rules
    @current_offers        = current_offers
  end
end
