class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :age
      t.references :grupo, foreign_key: true

      t.timestamps
    end
  end
end