module Mutations
  class UpdatePost < Mutations::BaseMutation
    argument :id, ID, required: true
    argument :params, InputTypes::Post, required: true

    field :post, ObjectTypes::Post, null: false

    def resolve(id:, params:)
      post = Post.find(id)
      post.update!(params.to_h)

      { post: }
    rescue => e
      GraphQL::ExecutionError.new(e.message)
    end
  end
end
