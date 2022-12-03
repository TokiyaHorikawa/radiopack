# frozen_string_literal: true

module ObjectTypes
  class Post < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :description, String
    field :user_id, Integer
    field :content_id, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end  
end

