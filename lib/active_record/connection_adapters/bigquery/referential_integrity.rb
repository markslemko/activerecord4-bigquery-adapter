module ActiveRecord
  module ConnectionAdapters
    module Bigquery
      module ReferentialIntegrity # :nodoc:
        def supports_disable_referential_integrity? # :nodoc:
          false
        end

        def disable_referential_integrity # :nodoc:
          yield
        end
      end
    end
  end
end
