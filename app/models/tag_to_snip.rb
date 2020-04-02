class TagToSnip < ApplicationRecord
  validates :tag_id , presence: true
  validates :snip_id, presence: true
  belongs_to :snip
  belongs_to :tag
end
