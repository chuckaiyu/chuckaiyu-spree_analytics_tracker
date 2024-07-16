module SpreeAnalyticsTracker
  module UserConfirmationsControllerDecorator
    def self.included(base)
      base.helper 'spree/analytics_tracker'
    end
  end
end

if defined?(Spree::UserConfirmationsController)
  ::Spree::UserConfirmationsController.include(::SpreeAnalyticsTracker::UserConfirmationsControllerDecorator)
end
