class CreateBorrows < ActiveRecord::Migration[5.2]
    def change
        create_table :borrows do |t|
            t.integer :book_id
            t.integer :user_id
            t.datetime :due_date
            t.boolean :returned
        end
    end
end