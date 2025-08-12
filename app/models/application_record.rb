class ApplicationRecord < ActiveRecord::Base
  # This is the base class for all models in Rails
  # Since this lab doesn't use a database, models won't inherit from this
  # but we include it for Rails convention
  primary_abstract_class
end
