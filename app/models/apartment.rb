class Apartment < ApplicationRecord
  belongs_to :building, dependent: :destroy
  has_many_attached :images, dependent: :destroy

  enum status: [:disponible, :nodisponible]

end
