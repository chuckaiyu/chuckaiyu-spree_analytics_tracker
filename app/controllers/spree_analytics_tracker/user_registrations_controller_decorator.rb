module SpreeAnalyticsTracker
  module UserRegistrationsControllerDecorator
    def self.included(base)
      base.helper 'spree/analytics_tracker'
    end
  end
end

if defined?(Spree::UserRegistrationsController)
  ::Spree::UserRegistrationsController.include(::SpreeAnalyticsTracker::UserRegistrationsControllerDecorator)
end
