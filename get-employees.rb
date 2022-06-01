#Método GET de Empleados

domain = 'proyecto'
token = 'qkDkpZHZ16nH9qW3bWwcoakx'
path = "https://#{domain}.buk.cl/api/v1/chile/employees"
#declaramos las variables para invocar el endpoint
resource = RestClient::Resource.new(path, headers: {auth_token: token})
response = resource.get(accept: 'application/json')
#con la conexión lista, parseamos a JSON y terminamos
json = JSON.parse(response.body)
