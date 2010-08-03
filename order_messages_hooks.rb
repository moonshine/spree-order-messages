class OrderMessagesHooks < Spree::ThemeSupport::HookListener
  
  insert_after :admin_order_tabs, :partial => "admin/orders/tab"

end
