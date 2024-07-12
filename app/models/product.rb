class Product < ApplicationRecord
  include Visible
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 10 }
end
