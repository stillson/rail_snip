class Tag < ApplicationRecord
  validates :tag, length: {maximum: 63}, presence: true
  has_many :tag_to_snips
end