module Spree::OrderMessages::Admin::OrdersController

  def self.included(target)
    target.class_eval do
      def comments
        load_object
      end
    end
  end

end
