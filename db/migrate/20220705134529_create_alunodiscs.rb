class CreateAlunodiscs < ActiveRecord::Migration[5.2]
  def change
    create_table :alunodiscs do |t|
      t.references :aluno, foreign_key: true
      t.references :disciplina, foreign_key: true
      t.string :status
      t.integer :semestre
      t.integer :ano

      t.timestamps
    end
  end
end
