module ActiveRecord
  module ConnectionAdapters
    module Bigquery
      module ColumnMethods
        def json(name, options = {})
          column(name, :json, options)
        end

        def jsonb(name, options = {})
          column(name, :jsonb, options)
        end
      end

      class ColumnDefinition < ActiveRecord::ConnectionAdapters::ColumnDefinition
      end

      class TableDefinition < ActiveRecord::ConnectionAdapters::TableDefinition
        include ColumnMethods

        # Defines the primary key field.
        def primary_key(name, type = :primary_key, options = {})
          return super
        end

        private

        def create_column_definition(name, type)
          Bigquery::ColumnDefinition.new name, type
        end
      end

      class Table < ActiveRecord::ConnectionAdapters::Table
        include ColumnMethods
      end
    end
  end
end
