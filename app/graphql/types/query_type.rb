# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :best, [LiftType], null: false do
      argument :user_id, String, required: true
      argument :lift_type, String, required: true
    end

    def best(user_id:, lift_type:)
      Lift.best(user_id, lift_type)
    end
  end
end
