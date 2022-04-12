Dado("uma requisição no endpoint de consulta") do
  @search.consultation_service
end

Quando("procurar pela chave") do
  @body = @search.consultation_service.body                                               # Obtenho o response body da chamada
end

Então("a api irá retornar a chave {string} com status code {int}") do |key, status_code|
  expect(@body[key]).to be                                                                # Valido que na chamada contem o typeOfEstablishment
  expect(@body[key]).to eql "typeOfEstablishment"                                         # Checkpoint no nome da chave
  expect(@search.consultation_service.code).to eql status_code                            # valido status code da chamada
  expect(@search.consultation_service.message).to eql "OK"                                # valido message da chamada
end

E("ira exibir um print de um estabelecimento") do
  restaurant = @search.consultation_service["typeOfEstablishment"][6]["name"]
  print "Imprimindo estabelecimento #{restaurant}"                                       # Printo um restaurante
end
