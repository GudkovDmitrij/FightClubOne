class CreateZayvkas < ActiveRecord::Migration
  def change
    create_table :zayvkas do |t|
      t.string :name
      t.string :email
      t.string :familiya
      t.string :otchestvo
      t.string :nomer_telefona
      t.string :info_O_sebe

      t.timestamps
    end
  end
end
