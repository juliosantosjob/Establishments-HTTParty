module Rest
  class Search
    include HTTParty

    def consultation_service
      response = HTTParty.get("https://portal.vr.com.br/api-web/comum/enumerations/VRPAT", :headers => { "Content-Type" => "application/json" }) #Faço uma requisição do tipo get no serviço
    end
  end
end
