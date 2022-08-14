class Category < ApplicationRecord
    validates :title,  presence: true

    belongs_to :user
    has_many :expenses

    def totalprice
        @total_price ||= self.expenses.sum( :price )
    end
end
