module Queries
  class Posts < Queries::BaseQuery

    type [ObjectTypes::Post], null: false

    def resolve
      ::Post.all.order(:id)
    end
  end
end
