class OrderMessagesHooks < Spree::ThemeSupport::HookListener
  
  insert_after :admin_order_tabs, "admin/orders/tab"

end
