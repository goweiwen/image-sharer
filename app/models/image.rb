class Image < ApplicationRecord
  belongs_to :user
  attachment :src, content_type: ["image/jpeg", "image/png"]
end
