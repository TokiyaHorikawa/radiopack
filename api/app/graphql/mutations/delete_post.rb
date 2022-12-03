module Mutations
  class DeletePost < Mutations::BaseMutation
    argument :id, ID, required: true

    field :id, ID, null: false

    def resolve(id:)
      Post.find(id).delete

      { id: }
    rescue => e
      GraphQL::ExecutionError.new(e.message)
    end
  end
end

