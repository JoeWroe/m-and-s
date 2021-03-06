describe "User Stories" do

  let(:basket)          { Basket.new(product_catalog: product_catalog,
                                     delivery_charge_rules: delivery_charge_rules,
                                     current_offers: current_offers
                                     ) }
  let(:product_catalog)  { ProductCatalog.new }
  let(:delivery_charges) { DeliveryCharges.new }
  let(:offers)           { Offers.new }


  let(:delivery_charge_rules) { delivery_charges.rules }
  let(:current_offers)        { offers.current_offers }

  describe "User Story One" do

    it "As a customer,
    So that I know what products are avliable to put in the basket,
    I'd like the basket to know what's on the product catalog." do
      expect(basket.product_catalog).to eq(product_catalog)
    end
  end

  describe "User Story Two" do

    it "As a retailer,
    So that I know customers are being charged for correct delivery fees,
    I'd like the basket to know what the delivery charges are." do
      expect(basket.delivery_charge_rules).to eq(delivery_charge_rules)
    end
  end

  describe "Offers" do

    it "As a customer,
    So I get my discounts added,
    I'd like the basket to know about current offers." do
      expect(basket.current_offers).to eq(current_offers)
    end
  end
end
