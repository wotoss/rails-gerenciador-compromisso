require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get products_path
    assert :success
   
  end

  test "should get new" do
    get new_product_path 
    assert :success
  end 
end
