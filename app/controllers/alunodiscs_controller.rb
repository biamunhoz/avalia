class AlunodiscsController < ApplicationController
  before_action :set_alunodisc, only: %i[ show edit update destroy ]

  # GET /alunodiscs or /alunodiscs.json
  def index

    if session[:perfil] == "Admin"
      @alunodiscs = Alunodisc.all
    else
      @alunodiscs = Alunodisc.joins(" inner join alunos on alunodiscs.aluno_id = alunos.id ").where(" numusp = '7348286'")
    end 

  end

  # GET /alunodiscs/1 or /alunodiscs/1.json
  def show
  end

  # GET /alunodiscs/new
  def new
    @alunodisc = Alunodisc.new
  end

  # GET /alunodiscs/1/edit
  def edit
  end

  # POST /alunodiscs or /alunodiscs.json
  def create
    @alunodisc = Alunodisc.new(alunodisc_params)

    respond_to do |format|
      if @alunodisc.save
        format.html { redirect_to alunodisc_url(@alunodisc), notice: "Vínculo Disciplina e Aluno foi cadastrado com sucesso." }
        format.json { render :show, status: :created, location: @alunodisc }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @alunodisc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alunodiscs/1 or /alunodiscs/1.json
  def update
    respond_to do |format|
      if @alunodisc.update(alunodisc_params)
        format.html { redirect_to alunodisc_url(@alunodisc), notice: "Vínculo Disciplina e Aluno foi atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @alunodisc }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @alunodisc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alunodiscs/1 or /alunodiscs/1.json
  def destroy
    @alunodisc.destroy

    respond_to do |format|
      format.html { redirect_to alunodiscs_url, notice: "Vínculo Disciplina e Professor foi apagado com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alunodisc
      @alunodisc = Alunodisc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def alunodisc_params
      params.require(:alunodisc).permit(:aluno_id, :disciplina_id, :status, :semestre, :ano)
    end
end
