class Building < ApplicationRecord
    belongs_to :city
    has_and_belongs_to_many :characteristics
    has_many :apartments, dependent: :destroy
end
