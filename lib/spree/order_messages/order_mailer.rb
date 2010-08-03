module Spree::OrderMessages::OrderMailer

  def self.included(target)
    target.class_eval do
      def confirm(order, resend = false, comment = nil)
        @subject    = (resend ? "[RESEND] " : "")
        @subject    += Spree::Config[:site_name] + ' ' + 'Order Confirmation #' + order.number
        @body       = {"order" => order, "comment" => comment}
        @recipients = order.email
        @from       = Spree::Config[:order_from]
        @bcc        = order_bcc
        @sent_on    = Time.now
      end
    end
  end

end
