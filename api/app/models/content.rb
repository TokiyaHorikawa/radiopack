class Content < ApplicationRecord
  has_one :channel
  has_meny :posts
end
