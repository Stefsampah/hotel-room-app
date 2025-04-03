class Booking < ApplicationRecord
    belongs_to :room
    belongs_to :user

    validates :check_in, :check_out, :guests, presence: true
    validate :check_in_date_must_be_before_check_out

    private

    def check_in_date_must_be_before_check_out
      if check_in.present? && check_out.present? && check_in >= check_out
        errors.add(:check_in, "must be before the check-out date")
      end
    end

end
