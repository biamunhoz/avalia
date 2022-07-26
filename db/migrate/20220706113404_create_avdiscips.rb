class CreateAvdiscips < ActiveRecord::Migration[5.2]
  def change
    create_table :avdiscips do |t|
      t.references :disciplina, foreign_key: true
      t.boolean :cronograma
      t.boolean :criterios
      t.boolean :entendeuobj
      t.integer :cronocumprido
      t.integer :estrategias
      t.integer :quantadequada
      t.integer :coerencia
      t.integer :seuconhecimento
      t.integer :extraclasse
      t.integer :saladeaula
      t.integer :percepcao
      t.integer :notadisciplina
      t.integer :recomendaria
      t.text :sugestoes
      t.integer :ano
      t.integer :semestre
      t.boolean :pulouavaliacao

      #t.timestamps
    end
  end
end
