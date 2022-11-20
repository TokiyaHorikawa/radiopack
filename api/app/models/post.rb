class Post < ApplicationRecord
  has_one :user
  has_one :content
end
