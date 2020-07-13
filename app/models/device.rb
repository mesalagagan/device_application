class Device < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
