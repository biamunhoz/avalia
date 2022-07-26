class CreateAlunos < ActiveRecord::Migration[5.2]
  def change
    create_table :alunos do |t|
      t.string :numusp
      t.boolean :habilitado, :default => true

      t.timestamps
    end
  end
end
