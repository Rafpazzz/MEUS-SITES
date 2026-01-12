class ReceitaController < ApplicationController
    class ReceitasController < ApplicationController
  before_action :set_receita, only: %i[ show edit update destroy ]

  # GET /receitas or /receitas.json
  def index
    @receitas = Receita.all
  end

  # GET /receitas/1 or /receitas/1.json
  def show
  end

  # GET /receitas/new
  def new
    @receita = Receita.new
  end

  # GET /receitas/1/edit
  def edit
  end

  # POST /receitas or /receitas.json
  def create
    @receita = Receita.new(receita_params)

    respond_to do |format|
      if @receita.save
        format.html { redirect_to @receita, notice: "Receita criada com sucesso." }
        format.json { render :show, status: :created, location: @receita }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @receita.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /receitas/1 or /receitas/1.json
  def update
    respond_to do |format|
      if @receita.update(receita_params)
        format.html { redirect_to @receita, notice: "Receita atualizada com sucesso.", status: :see_other }
        format.json { render :show, status: :ok, location: @receita }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @receita.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /receitas/1 or /receitas/1.json
  def destroy
    @receita.destroy!

    respond_to do |format|
      format.html { redirect_to receitas_url, notice: "Receita removida com sucesso.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Método para encontrar a receita pelo ID antes das ações.
    def set_receita
      @receita = Receita.find(params[:id])
    end

    # Método de Strong Parameters para permitir os atributos 'prato_id' e 'conteudo'.
    def receita_params
      params.require(:receita).permit(:prato_id, :conteudo)
    end
end
end
