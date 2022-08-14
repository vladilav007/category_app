class Expense < ApplicationRecord
    validates :title,  presence: true
    validate :negative_number

    belongs_to :category

    def negative_number
        if self.price <= 0
           self.errors.add(:price, "Field can't be less than 1")
        end
    end
end
