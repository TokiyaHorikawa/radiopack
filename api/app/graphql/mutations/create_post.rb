module Mutations
  class CreatePost < Mutations::BaseMutation
    argument :params, InputTypes::Post, required: true

    field :post, ObjectTypes::Post, null: false

    def resolve(params:)
      post = Post.create!(params.to_h)

       { post: }
    rescue => e
      GraphQL::ExecutionError.new(e.message)
    end
  end
end
