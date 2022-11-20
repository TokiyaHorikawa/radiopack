class Content < ApplicationRecord
  has_one :channel
  has_many :posts
end
