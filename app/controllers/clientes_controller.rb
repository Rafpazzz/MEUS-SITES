class ClientesController < ApplicationController
  before_action :set_cliente, only: %i[ show edit update destroy ]

  def index
    @clientes = Cliente.all
  end

  def show
  end

  def new
    @cliente = Cliente.new
  end

  def create
    @cliente = Cliente.new(cliente_params)

    respond_to do |format|
      if @cliente.save
        format.html { redirect_to @cliente, notice: "Cliente criado com sucesso." }
        # CORREÇÃO: Status HTTP correto é :created
        format.json { render :show, status: :created, location: @cliente } 
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      # CORREÇÃO: Chamando o método correto 'cliente_params'
      if @cliente.update(cliente_params)
        format.html { redirect_to @cliente, notice: "Cliente atualizado com sucesso.", status: :see_other }
        format.json { render :show, status: :ok, location: @cliente }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @cliente.destroy!

    respond_to do |format|
      # CORREÇÃO: Redirecionando para o caminho correto 'clientes_path'
      format.html { redirect_to clientes_path, notice: "Cliente removido com sucesso.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # CORREÇÃO: Usando params[:id] para buscar o cliente
    def set_cliente
      @cliente = Cliente.find(params[:id])
    end

    # CORREÇÃO: Usando o padrão de Strong Parameters com require/permit
    def cliente_params
      params.require(:cliente).permit(:nome, :idade)
    end
end