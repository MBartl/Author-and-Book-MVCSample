class Book < ApplicationRecord
  has_many :credits, :dependent => :delete_all
  has_many :authors, through: :credits

  validates :title, presence: true
  validates :pages, presence: true
end
