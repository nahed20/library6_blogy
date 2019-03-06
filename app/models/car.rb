class Car < ApplicationRecord
 validates :make,:model,:year,:moonroof,:color, presence: true
 validates :make,:model,:year, length: {
        minimum:4,
        too_short:"the year is too short %{count} year"
    }
    #validates :year numericality: { only_integer: true }
end
