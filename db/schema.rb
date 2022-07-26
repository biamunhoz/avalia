# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_07_21_190516) do

  create_table "alunodiscs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "aluno_id"
    t.bigint "disciplina_id"
    t.string "status"
    t.integer "semestre"
    t.integer "ano"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aluno_id"], name: "index_alunodiscs_on_aluno_id"
    t.index ["disciplina_id"], name: "index_alunodiscs_on_disciplina_id"
  end

  create_table "alunos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "numusp"
    t.boolean "habilitado", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "avaliacaoprofs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "avdiscip_id"
    t.bigint "disciplina_id"
    t.bigint "professor_id"
    t.integer "aulascondizentes"
    t.integer "didatico"
    t.integer "claro"
    t.integer "respeito"
    t.integer "comportamentotur"
    t.integer "ano"
    t.integer "semestre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["avdiscip_id"], name: "index_avaliacaoprofs_on_avdiscip_id"
    t.index ["disciplina_id"], name: "index_avaliacaoprofs_on_disciplina_id"
    t.index ["professor_id"], name: "index_avaliacaoprofs_on_professor_id"
  end

  create_table "avdiscips", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "disciplina_id"
    t.boolean "cronograma"
    t.boolean "criterios"
    t.boolean "entendeuobj"
    t.integer "cronocumprido"
    t.integer "estrategias"
    t.integer "quantadequada"
    t.integer "coerencia"
    t.integer "seuconhecimento"
    t.integer "extraclasse"
    t.integer "saladeaula"
    t.integer "percepcao"
    t.integer "notadisciplina"
    t.integer "recomendaria"
    t.text "sugestoes"
    t.integer "ano"
    t.integer "semestre"
    t.boolean "pulouavaliacao"
    t.index ["disciplina_id"], name: "index_avdiscips_on_disciplina_id"
  end

  create_table "disciplinas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nome"
    t.string "codigo"
    t.boolean "habilitado", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profdisciplinas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "professor_id"
    t.bigint "disciplina_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disciplina_id"], name: "index_profdisciplinas_on_disciplina_id"
    t.index ["professor_id"], name: "index_profdisciplinas_on_professor_id"
  end

  create_table "professors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nome"
    t.string "codigo"
    t.boolean "habilitado", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "alunodiscs", "alunos"
  add_foreign_key "alunodiscs", "disciplinas"
  add_foreign_key "avaliacaoprofs", "avdiscips"
  add_foreign_key "avaliacaoprofs", "disciplinas"
  add_foreign_key "avaliacaoprofs", "professors"
  add_foreign_key "avdiscips", "disciplinas"
  add_foreign_key "profdisciplinas", "disciplinas"
  add_foreign_key "profdisciplinas", "professors"
end
