class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :room

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :start_date, date: { after_or_equal_to: Proc.new { Date.today } }
  validates :end_date, date: { after_or_equal_to: Proc.new { Date.today } }
  validates :end_date, date: { after: :start_date }
end
