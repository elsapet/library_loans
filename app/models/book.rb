class Book < ApplicationRecord
  belongs_to :author

  scope :on_loan, -> { where(on_loan: true) }
  scope :available, -> { where(on_loan: false) }
end
