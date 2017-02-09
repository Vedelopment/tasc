class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :email
      t.string :password_digest
      t.string :slack
      t.string :github
      t.string :linkedin

      t.timestamps
    end
  end
end
