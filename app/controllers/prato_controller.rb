class PratoController < ApplicationController
    class PratosController < ApplicationController
  # Este "before_action" executa o método :set_prato ANTES das ações especificadas.
  # Isso evita código repetido, já que não precisamos encontrar o prato em cada uma delas.
  before_action :set_prato, only: %i[ show edit update destroy ]

  # GET /pratos or /pratos.json
  def index
    @pratos = Prato.all
  end

  # GET /pratos/1 or /pratos/1.json
  def show
  end

  # GET /pratos/new
  def new
    @prato = Prato.new
  end

  # GET /pratos/1/edit
  def edit
  end

  # POST /pratos or /pratos.json
  def create
    @prato = Prato.new(prato_params)

    respond_to do |format|
      if @prato.save
        # Para HTML: redireciona para a página do prato recém-criado com uma mensagem de sucesso.
        format.html { redirect_to @prato, notice: "Prato criado com sucesso." }
        # Para JSON: renderiza o JSON do prato, com status 201 Created.
        format.json { render :show, status: :created, location: @prato }
      else
        # Para HTML: renderiza o formulário 'new' novamente para mostrar os erros.
        format.html { render :new, status: :unprocessable_entity }
        # Para JSON: renderiza os erros em formato JSON.
        format.json { render json: @prato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pratos/1 or /pratos/1.json
  def update
    respond_to do |format|
      if @prato.update(prato_params)
        format.html { redirect_to @prato, notice: "Prato atualizado com sucesso.", status: :see_other }
        format.json { render :show, status: :ok, location: @prato }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pratos/1 or /pratos/1.json
  def destroy
    @prato.destroy!

    respond_to do |format|
      format.html { redirect_to pratos_url, notice: "Prato removido com sucesso.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Método para encontrar o prato pelo ID antes das ações.
    def set_prato
      @prato = Prato.find(params[:id])
    end

    # Método de Strong Parameters para permitir apenas o atributo 'nome'.
    def prato_params
      params.require(:prato).permit(:nome)
    end
end
end
