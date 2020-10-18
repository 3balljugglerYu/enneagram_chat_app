class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # has_one :enneagram_type, optional: true
  has_one :enneagram_type
  has_many :user_groups
  has_many :groups, through: :user_groups
  has_many :messages

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  

  # validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i, message: 'Include both letters and numbers' }

  with_options presence: true do
    validates :nickname
    validates :birthday
    validates :first_name, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: 'Full-width characters' }
    validates :last_name, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: 'Full-width characters' }
  end
end
