class Book < ActiveRecord::Base
    belongs_to :author
    belongs_to :category
    has_many :borrows
    has_many :users, through: :borrows

    def add_to_category(category)
        self.category_id = category.id
        self.save
    end
end