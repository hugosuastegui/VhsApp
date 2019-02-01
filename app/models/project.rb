class Project < ApplicationRecord
  enum status: { open: 0, closed: 1 }
  validates_presence_of :title, :account, :category, :client, :location, :volume
  has_many :concepts

  accepts_nested_attributes_for :concepts, reject_if: lambda { |attrs| attrs['subject'].blank? }
end
