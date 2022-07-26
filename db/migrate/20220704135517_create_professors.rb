class CreateProfessors < ActiveRecord::Migration[5.2]
  def change
    create_table :professors do |t|
      t.string :nome
      t.string :codigo
      t.boolean :habilitado, :default => true

      t.timestamps
    end
  end
end
