module ActiveRecord
  module ConnectionAdapters
    module Bigquery
      module OID # :nodoc:
        class Time < Type::Time # :nodoc:
          include Infinity
        end
      end
    end
  end
end
