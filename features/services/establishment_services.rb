module Rest
  class Search
    include HTTParty

    def consultation_service
      HTTParty.get('https://portal.vr.com.br/api-web/comum/enumerations/VRPAT',
                   headers: { 'Content-Type' => 'application/json' })
    end
  end
end
