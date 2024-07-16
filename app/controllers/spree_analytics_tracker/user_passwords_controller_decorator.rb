module SpreeAnalyticsTracker
  module UserPasswordsControllerDecorator
    def self.included(base)
      base.helper 'spree/analytics_tracker'
    end
  end
end

if defined?(Spree::UserPasswordsController)
  ::Spree::UserPasswordsController.include(::SpreeAnalyticsTracker::UserPasswordsControllerDecorator)
end
