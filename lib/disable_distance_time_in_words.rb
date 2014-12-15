module ActionView
  module Helpers
    module DateHelper
      def distance_of_time_in_words(from_time, to_time = 0, options = {})
        from_time = from_time.to_time if from_time.respond_to?(:to_time)
        to_time = to_time.to_time if to_time.respond_to?(:to_time)
        from_time, to_time = to_time, from_time if from_time > to_time

        I18n.l(from_time.localtime, :format => :absolute, :default => :'time.formats.short')
      end
    end
  end
end
