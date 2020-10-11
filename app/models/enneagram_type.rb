class EnneagramType < ApplicationRecord
  with_options numericality: { other_than: 1 } do
    validates :type_result_id
  end
end
