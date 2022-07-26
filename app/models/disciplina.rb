class Disciplina < ApplicationRecord
    has_many :professors
    has_many :alunos
    has_many :avdiscips
end
