class Concept < ApplicationRecord
  validates_presence_of :subject, :category, :subcategory, :amount, :invoice
end
