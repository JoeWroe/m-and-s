require "basket"

describe Basket do

  subject(:basket) { described_class.new(product_catalog: product_catalog,
                                         delivery_charge_rules: delivery_charge_rules
                                         ) }

  let(:product_catalog)       { double(:product_catalog) }
  let(:delivery_charge_rules) { double(:delivery_charge_rules) }

  describe "product catalog" do

    it "can be returned" do
      expect(basket.product_catalog).to eq(product_catalog)
    end
  end

  describe "delivery charges" do

    it "has rules" do
      expect(basket.delivery_charge_rules).to eq(delivery_charge_rules)
    end
  end

  describe "offers" do
    it "can be returned" do
      
    end
  end
end
