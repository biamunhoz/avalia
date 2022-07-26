class Avdiscip < ApplicationRecord
  belongs_to :disciplina

  has_many :avaliacaoprofs, after_add: :set_valores,  dependent: :destroy
  accepts_nested_attributes_for :avaliacaoprofs, allow_destroy: true

  def set_valores(avaliacaoprof)
    avaliacaoprof.disciplina_id = self.disciplina_id
    avaliacaoprof.ano = self.ano
    avaliacaoprof.semestre = self.semestre
  end 

end
