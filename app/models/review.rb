class Review < ApplicationRecord
  belongs_to :restaurant


  #   content cannot be blank (FAILED - 16)
  # rating cannot be blank (FAILED - 17)
  # rating should be an integer (FAILED - 18)
  # rating should be a number between 0 and 5 (FAILED - 19)


  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: 0..5
end
