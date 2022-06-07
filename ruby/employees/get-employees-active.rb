#GET /employees/active

token = 'ACÁ VA EL TOKEN'
domain = 'AĆA VA EL DOMINIO'

path = "https://#{domain}.buk.cl/api/v1/chile/employees/active"
resource = RestClient::Resource.new(path, headers: {auth_token: token})
response = resource.get(content_type: 'application/json')
to_print = JSON.parse(response.body)
