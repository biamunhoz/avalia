class AvdiscipsController < ApplicationController
  before_action :set_avdiscip, only: %i[ show ]

  # GET /avdiscips or /avdiscips.json
  def index
    @avdiscips = Avdiscip.includes(:disciplina).all
  end

  # GET /avdiscips/1 or /avdiscips/1.json
  def show
  end

  def pulouavaliac

    avaliacaorel = params[:idadisc]

    cadavaliacao      
    @avdiscip.pulouavaliacao = true
    @avdiscip.save 
    
    finavaliacao

    redirect_to avdiscips_url, notice: "Pulou"

  end

  
  # GET /avdiscips/new
  def new

    cadavaliacao
    @avdiscip.pulouavaliacao = false

    @profdisc = Profdisciplina.where(disciplina_id: @@avaliacaoatual.disciplina_id)

    @profdisc.each do |p|

      @avdiscip.avaliacaoprofs.build(professor_id: p.professor_id)

    end

  end

  def cadavaliacao
    
    avaliacaorel = params[:idadisc]

    @@avaliacaoatual = Alunodisc.find(avaliacaorel)

    @avdiscip = Avdiscip.new
    @avdiscip.disciplina_id = @@avaliacaoatual.disciplina_id
    @avdiscip.ano = @@avaliacaoatual.ano
    @avdiscip.semestre = @@avaliacaoatual.semestre 
    
  end 

  def finavaliacao
    
    @@avaliacaoatual.status = "Realizada"
    @@avaliacaoatual.save 

  end 
  # POST /avdiscips or /avdiscips.json
  def create
    @avdiscip = Avdiscip.new(avdiscip_params)
    @avdiscip.pulouavaliacao = false
    
    respond_to do |format|
      if @avdiscip.save
        
        finavaliacao

        format.html { redirect_to avdiscip_url(@avdiscip), notice: "Avaliação da disciplina cadastrada com sucesso." }
        format.json { render :show, status: :created, location: @avdiscip }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @avdiscip.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avdiscip
      @avdiscip = Avdiscip.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def avdiscip_params
      params.require(:avdiscip).permit(:disciplina_id, :cronograma, :criterios, :entendeuobj, :cronocumprido, :estrategias, :quantadequada, :coerencia, :seuconhecimento, :extraclasse, :saladeaula, :percepcao, :notadisciplina, :recomendaria, :sugestoes, :ano, :semestre, :pulouavaliacao, avaliacaoprofs_attributes: [:id, :avdiscip_id, :disciplina_id, :professor_id, :aulascondizentes, :didatico, :claro, :respeito, :comportamentotur, :ano, :semestre, :_destroy])
    end
end