class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      #contactsテーブルのカラムは(nameとemailとcontent)
      t.string :name
      t.string :email
      t.text :content
    end
  end
end
