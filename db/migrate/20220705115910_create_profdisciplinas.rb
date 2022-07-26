class CreateProfdisciplinas < ActiveRecord::Migration[5.2]
  def change
    create_table :profdisciplinas do |t|
      t.references :professor, foreign_key: true
      t.references :disciplina, foreign_key: true

      t.timestamps
    end
  end
end
