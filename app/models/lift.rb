# frozen_string_literal: true

class Lift < ApplicationRecord
  scope :best, lambda { |user_id, lift_type|
                 where({ user_id: user_id, lift_type: lift_type })
                   .where(weight: where({ user_id: user_id, lift_type: lift_type }).group(:reps).maximum(:weight).values)
                   .order(reps: :asc)
               }

  def estimated_max
    (weight / (1.0278 - (0.0278 * reps)))
  end
end
