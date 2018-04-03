class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.uuid :author_id, primary: true, null: false, default: "uuid_generate_v4()"
      t.decimal :purse, precision: 8, scale: 2
      t.boolean :status
      t.string :login, limit: 200
      t.string :password, limit: 200

      t.timestamps
    end
  end
end
