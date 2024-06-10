class Quote < ApplicationRecord
  scope :ordered, -> { order(id: :desc) }

  after_create_commit :broadcast_prepend_to_quotes
  def broadcast_prepend_to_quotes
    broadcast_prepend_to(
      :broadcast_quotes,
      target: "quotes"
    )
  end
end
