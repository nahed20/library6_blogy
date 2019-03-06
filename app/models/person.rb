class Person < ApplicationRecord
    validates :first_name,:last_name , presence: true
    validates :last_name, :last_name, length: {
        minimum:3,
        too_short:"must have at least %{count} letters"
    }
    validates :age, numericality: { only_integer: true }
end
