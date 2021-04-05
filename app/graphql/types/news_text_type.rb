module Types
  class NewsTextType < Types::BaseObject
    field :id, ID, null: false
    field :original, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
