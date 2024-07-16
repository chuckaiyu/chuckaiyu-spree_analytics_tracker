module SpreeAnalyticsTracker
  module StoreControllerDecorator
    def self.included(base)
      base.include ::Spree::BaseHelper
      
      base.helper 'spree/analytics_tracker'
    end
  end
end

if defined?(Spree::StoreController)
  ::Spree::StoreController.include(::SpreeAnalyticsTracker::StoreControllerDecorator)
end
