class CreateAvaliacaoprofs < ActiveRecord::Migration[5.2]
  def change
    create_table :avaliacaoprofs do |t|
      t.references :avdiscip, foreign_key: true
      t.references :disciplina, foreign_key: true
      t.references :professor, foreign_key: true
      t.integer :aulascondizentes
      t.integer :didatico
      t.integer :claro
      t.integer :respeito
      t.integer :comportamentotur
      t.integer :ano
      t.integer :semestre

      t.timestamps
    end
  end
end
