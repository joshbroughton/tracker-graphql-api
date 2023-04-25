# frozen_string_literal: true

module Types
  class LiftType < Types::BaseObject
    field :id, ID, null: false
    field :user_id, String, null: false
    field :lift_type, String
    field :reps, Integer
    field :weight, Float
    field :estimated_max, Float
    field :date_lifted, GraphQL::Types::ISO8601DateTime
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
