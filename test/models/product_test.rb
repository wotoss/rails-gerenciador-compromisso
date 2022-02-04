require "test_helper"

class ProductTest < ActiveSupport::TestCase
  def setup
    @products = Product.new(name: "Computador", description: "Processador em manutenção")
  end

  test "valid should present" do
    @products = true
    assert :success
  end

  test 'Product instance not valid' do
    product = Product.new(name: 'Computador', description: 'Processador em manutenção')
    assert_not product.valid?
  end 
  
  test "name should be present" do
    @products.name = " "
    assert_not @products.valid?
  end

  test "description should be present" do
    @products.description = " "
    assert_not  @products.valid?
  end
end
