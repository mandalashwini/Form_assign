class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :firstname
      t.string :lastname
      t.string :emailid
      t.string :mobilenumber
      t.date :date_of_birth
      t.string :password
      t.string :password_confirmation

      t.timestamps
    end
  end
end
