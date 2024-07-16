module SpreeAnalyticsTracker
  module CheckoutControllerDecorator
    def self.included(base)
      base.helper 'spree/analytics_tracker'
    end
  end
end

if defined?(Spree::CheckoutController)
  ::Spree::CheckoutController.include(::SpreeAnalyticsTracker::CheckoutControllerDecorator)
end
