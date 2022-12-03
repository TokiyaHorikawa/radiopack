# class InputTypes::Post

module InputTypes
  class Post < Types::BaseInputObject
    # TODO: 命名を再度考える
    graphql_name 'PostAttributes'

    argument :title, String, required: true
    argument :description, String, required: false
  end
end
