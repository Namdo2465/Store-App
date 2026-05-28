require "test_helper"

class ProductTest < ActiveSupport::TestCase
  include ActionMailer::TestHelper

  test "sends email notifications when back in stock" do
    product = products(:tshirt)
  
    product.subscribers.create!(email: "one@example.com")
    product.subscribers.create!(email: "two@example.com")
  
    product.update!(inventory_count: 0)
  
    assert_emails 2 do
      product.update!(inventory_count: 10)
    end
  end
end
