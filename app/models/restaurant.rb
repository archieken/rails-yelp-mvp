class Restaurant < ApplicationRecord

      #  t.string :name
      # t.string :address
      # t.string :phone
      # t.string :category

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy

end
