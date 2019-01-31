class Concept < ApplicationRecord
  validates_presence_of :subject, :category, :subcategory, :amount
  belongs_to :project, optional: true
end
