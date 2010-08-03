# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class OrderMessagesExtension < Spree::Extension
  version "1.0"
  description "Allows a message to created on order resend"
  url "http://yourwebsite.com/order_messages"

  def self.require_gems(config)
    config.gem "acts_as_commentable", :version => '2.0.2'
  end
  
  def activate
    Order.send(:include, Spree::OrderMessages::Order)
    Admin::OrdersController.send(:include, Spree::OrderMessages::Admin::OrdersController)
    OrderMailer.send(:include, Spree::OrderMessages::OrderMailer)
  end
end
