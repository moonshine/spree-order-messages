module Spree::OrderMessages::Order

  def self.included(target)
    target.class_eval do
      acts_as_commentable
    end
  end

end
