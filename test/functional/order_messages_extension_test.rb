require File.dirname(__FILE__) + '/../test_helper'

class OrderMessagesExtensionTest < Test::Unit::TestCase
  
  # Replace this with your real tests.
  def test_this_extension
    flunk
  end
  
  def test_initialization
    assert_equal File.join(File.expand_path(Rails.root), 'vendor', 'extensions', 'order_messages'), OrderMessagesExtension.root
    assert_equal 'Order Messages', OrderMessagesExtension.extension_name
  end
  
end
