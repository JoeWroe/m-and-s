require "basket"

describe Basket do

  subject(:basket) { described_class.new(product_catalog: product_catalog) }

  let(:product_catalog)  { double(:product_catalog) }

  describe "product catalog" do

    it "can be returned" do
      expect(basket.product_catalog).to eq(product_catalog)
    end
  end
end
