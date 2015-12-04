class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.references :instructor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
