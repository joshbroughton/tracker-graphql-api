# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#
require 'faker'

lift_types = %w[Squat Bench Deadlift]
user_ids = [Faker::Stripe.unique.invalid_card, Faker::Stripe.unique.invalid_card, Faker::Stripe.unique.invalid_card]
50.times do
  Lift.create!({
                 user_id: user_ids.sample,
                 lift_type: lift_types.sample,
                 reps: Faker::Number.between(from: 1, to: 10),
                 weight: Faker::Number.between(from: 45.0, to: 1000.0),
                 date_lifted: Time.current
               })
end
