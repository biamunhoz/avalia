class ProfdisciplinasController < ApplicationController
  before_action :set_profdisciplina, only: %i[ show edit update destroy ]

  # GET /profdisciplinas or /profdisciplinas.json
  def index
    @profdisciplinas = Profdisciplina.all
  end

  # GET /profdisciplinas/1 or /profdisciplinas/1.json
  def show
  end

  # GET /profdisciplinas/new
  def new
    @profdisciplina = Profdisciplina.new
  end

  # GET /profdisciplinas/1/edit
  def edit
  end

  # POST /profdisciplinas or /profdisciplinas.json
  def create
    @profdisciplina = Profdisciplina.new(profdisciplina_params)

    respond_to do |format|
      if @profdisciplina.save
        format.html { redirect_to profdisciplina_url(@profdisciplina), notice: "Vínculo Disciplina e Professor cadastrado com sucesso." }
        format.json { render :show, status: :created, location: @profdisciplina }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @profdisciplina.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profdisciplinas/1 or /profdisciplinas/1.json
  def update
    respond_to do |format|
      if @profdisciplina.update(profdisciplina_params)
        format.html { redirect_to profdisciplina_url(@profdisciplina), notice: "Vínculo Disciplina e Professor atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @profdisciplina }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @profdisciplina.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profdisciplinas/1 or /profdisciplinas/1.json
  def destroy
    @profdisciplina.destroy

    respond_to do |format|
      format.html { redirect_to profdisciplinas_url, notice: "Vínculo Disciplina e Professor apagado com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profdisciplina
      @profdisciplina = Profdisciplina.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def profdisciplina_params
      params.require(:profdisciplina).permit(:professor_id, :disciplina_id)
    end
end
