describe "User Stories" do

  let(:basket)          { Basket.new(product_catalog: product_catalog) }
  let(:product_catalog) { ProductCatalog.new }

  describe "User Story One" do

    it "As a customer,
    So that I know what products are avliable to put in the basket,
    I'd like the basket to know what's on the product catalog." do
      expect(basket.product_catalog).to eq(product_catalog)
    end
  end
end
