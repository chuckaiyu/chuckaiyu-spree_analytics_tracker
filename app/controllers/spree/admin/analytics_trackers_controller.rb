module Spree
  module Admin
    class AnalyticsTrackersController < ResourceController
      before_action :load_data

      private

      def load_data
        @engines = Spree::AnalyticsTracker.engines.keys.sort.map { |k| [k.humanize, k] }
        @stores = Spree::Store.all
      end
    end
  end
end
