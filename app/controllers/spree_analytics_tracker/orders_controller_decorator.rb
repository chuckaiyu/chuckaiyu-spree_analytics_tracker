module SpreeAnalyticsTracker
  module OrdersControllerDecorator
    def self.included(base)
      base.helper 'spree/analytics_tracker'
    end
  end
end

if defined?(Spree::OrdersController)
  ::Spree::OrdersController.include(::SpreeAnalyticsTracker::OrdersControllerDecorator)
end
