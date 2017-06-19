class CreateContactForms < ActiveRecord::Migration[5.0]
  def change
    create_table :contact_forms do |t|
      t.string :name
      t.string :email
      t.text :mesage

      t.timestamps
    end
  end
end
