require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "index" do
    get "/products.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Product.count, data.length
  end

  test "create" do
    assert_difference "Product.count", 1 do
      post "/product.json", params: { name: "lake", price: 200, image_url: "abcedfsh", description: "it is cool" }
      assert_response 200
    end
  end

  test "show" do
    get "/product/#{Product.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "is_discounted?", "price", "decimal", "tax", "total", "image_url", "description", "item_tracker", "created_at", "updated_at"], data.keys
  end

  test "update" do
    photo = Product.first
    patch "/product/#{photo.id}.json", params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
  end

  test "destroy" do
    assert_difference "Product.count", -1 do
      delete "/product/#{Product.first.id}.json"
      assert_response 200
    end
  end
end
