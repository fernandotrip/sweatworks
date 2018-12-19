class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :name, blank: false
      t.string :email, blank: false
      t.datetime :birth
      t.timestamps
    end
  end
end
