class User < ActiveRecord::Base
    has_many :borrows
    has_many :books, through: :borrows
    has_many :authors, through: :books
    has_many :categories, through: :books

    def check_out_book(book, due_date)
        borrow = Borrow.create(book_id: book.id, user_id: self.id, due_date: due_date, returned: false)
    end

    def return_book(book)
        borrow = Borrow.find(book.id)
        borrow.returned = true
        borrow.save
    end
end