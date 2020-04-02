class Snip < ApplicationRecord
  validates :description, length: {maximum: 200 }, presence: true
  validates :fragment, length: {maximum: 8192 }, presence: true
  validates :user_id, presence: true
  validates :version, presence: true
  has_many :tag_to_snips
  belongs_to :user
end
