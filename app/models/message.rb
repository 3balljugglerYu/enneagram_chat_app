class Message < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_one_attached :image
  # belongs_to :enneagram_type

  validates :content, presence: true, unless: :was_attached?

  def was_attached?
    self.image.attached?
  end
end
