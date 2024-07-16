module SpreeAnalyticsTracker
  module UserSessionsControllerDecorator
    def self.included(base)
      base.helper 'spree/analytics_tracker'
    end
  end
end

if defined?(Spree::UserSessionsController)
  ::Spree::UserSessionsController.include(::SpreeAnalyticsTracker::UserSessionsControllerDecorator)
end
