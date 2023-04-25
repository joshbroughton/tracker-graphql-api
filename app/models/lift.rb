# frozen_string_literal: true

class Lift < ApplicationRecord
  def estimated_max
    (weight / (1.0278 - (0.0278 * reps)))
  end
end
