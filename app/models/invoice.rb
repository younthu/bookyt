class Invoice < ActiveRecord::Base
  # Aspects
  include ApplicationHelper
  
  # Associations
  belongs_to :customer
  belongs_to :company
  
  # Validations
  validates_date :due_date
  
  # Helpers
  def to_s
    "%s für %s à %s" % [title, customer, currency_fmt(amount)]
  end
end