require "basket"

describe Basket do

  subject(:basket) { described_class.new }

  describe "product catalog" do

    it "can be returned" do
      expect(basket.product_catalog).to eq(product_catalog)
    end
  end
end
