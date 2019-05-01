class Author < ApplicationRecord
  has_many :credits, :dependent => :delete_all
  has_many :books, through: :credits

  validates :name, presence: true
  validates :birth_year, presence: true, numericality: {less_than_or_equal_to: Time.now.year}
end
