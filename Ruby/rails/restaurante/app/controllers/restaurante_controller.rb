class RestauranteController < ApplicationController
    def index
        @restaurantes = Restaurante.order :nome
    end
end
