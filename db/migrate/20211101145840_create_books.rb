class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.references :author
      t.string :title
      t.boolean :on_loan, default: false, null: false
      t.integer :year

      t.timestamps
    end
  end
end
