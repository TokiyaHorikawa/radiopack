module Queries
  class Post < Queries::BaseQuery
    argument :id, ID, required: true

    type ObjectTypes::Post, null: false

    def resolve(id:)
      ::Post.find(id)
    end
  end
end
