class Quote < ApplicationRecord
  scope :ordered, -> { order(id: :desc) }
end
