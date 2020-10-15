class EnneagramType < ApplicationRecord

  has_many :users
  # has_many :messages
  
  with_options numericality: { other_than: 1 } do
    validates :type_result_id
  end
end
