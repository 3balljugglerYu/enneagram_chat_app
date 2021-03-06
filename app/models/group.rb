class Group < ApplicationRecord
  has_many :user_groups
  has_many :users, through: :user_groups,dependent: :destroy
  has_many :messages,dependent: :destroy

  validates :name, presence: true
  
end
