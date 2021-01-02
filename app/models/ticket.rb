class Ticket < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :event

  validetes :comment, length: { maximum: 30 }, allow_blank: true
end
