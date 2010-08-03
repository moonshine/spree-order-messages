module Spree::OrderMessages::Admin::OrdersController

  def self.included(target)
    target.class_eval do
      alias :spree_resend :resend unless method_defined?(:spree_resend)
      
      def resend
      end

      def comments
        load_object
      end

      def resend_order
        load_object
        if params[:comment] && @order
          comment = nil
          comment = Comment.create(params[:comment]) unless params[:comment][:comment].blank?
          OrderMailer.deliver_confirm(@order, true, comment)
          self.notice = t('order_email_resent')
          redirect_to admin_orders_path
        end
      end

    end
  end

end
