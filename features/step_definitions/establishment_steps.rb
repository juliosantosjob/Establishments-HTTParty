Dado('que eu faça uma requisição do tipo get no endpoint') do
  search.consultation_service
end

Quando('eu receber o response body da chamada') do
  @body = search.consultation_service.body
end

Então('a api irá retornar a chave {string}') do |key|
  expect(@body).to include key
  expect(search.consultation_service.code).to eql 200
  expect(search.consultation_service.message).to eql 'OK'
end

E('é exibido um print de um estabelecimento') do
  restaurant = search.consultation_service['typeOfEstablishment'][6]['name']
  print "Imprimindo estabelecimento #{restaurant}"
end
