module ActiveRecord
  module ConnectionAdapters
    module Bigquery
      module OID # :nodoc:
        class Integer < Type::Integer # :nodoc:
          include Infinity
        end
      end
    end
  end
end
