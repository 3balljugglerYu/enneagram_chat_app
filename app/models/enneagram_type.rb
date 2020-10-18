class EnneagramType < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  # belongs_to :user
  belongs_to :user
  belongs_to_active_hash :type_result
  

  # has_many :messages
  
  with_options numericality: { other_than: 1 } do
    validates :type_result_id
  end
end
