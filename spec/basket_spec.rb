require "basket"

describe Basket do

  subject(:basket) { described_class.new(product_catalog: product_catalog) }

  let(:product_catalog)  { double(:product_catalog) }

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
end
