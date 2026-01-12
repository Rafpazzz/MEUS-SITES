class PessoasController < ApplicationController
  before_action :set_pessoa, only: %i[ show edit update destroy ]

  # GET /pessoas
  def index
    @pessoas = Pessoa.all
  end

  # GET /pessoas/1
  def show
  end

  # GET /pessoas/new
  def new
    @pessoa = Pessoa.new
  end

  # GET /pessoas/1/edit
  def edit
  end

  # POST /pessoas
  def create
    @pessoa = Pessoa.new(pessoa_params)

    respond_to do |format|
      if @pessoa.save
        format.html { redirect_to @pessoa, notice: "Pessoa criada com sucesso." }
        format.json { render :show, status: :created, location: @pessoa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pessoas/1
  def update
    respond_to do |format|
      if @pessoa.update(pessoa_params)
        format.html { redirect_to @pessoa, notice: "Pessoa atualizada com sucesso.", status: :see_other }
        format.json { render :show, status: :ok, location: @pessoa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pessoas/1
  def destroy
    @pessoa.destroy!

    respond_to do |format|
      format.html { redirect_to pessoas_path, notice: "Pessoa removida com sucesso.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # CORREÇÃO: Usando params[:id] para buscar a pessoa.
    def set_pessoa
      @pessoa = Pessoa.find(params[:id])
    end

    # CORREÇÃO: Usando o padrão de Strong Parameters com require/permit.
    def pessoa_params
      params.require(:pessoa).permit(:nome, :dt_nas, :altura)
    end
end