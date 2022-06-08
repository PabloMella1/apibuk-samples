#Método GET de Empleados
#Si la página es cliente.buk.cl, el domain es "cliente"
domain = 'ACÁ VA EL DOMINIO'
token = 'ACÁ VA EL TOKEN'
path = "https://#{domain}.buk.cl/api/v1/chile/employees"
#declaramos las variables para invocar el endpoint
resource = RestClient::Resource.new(path, headers: {auth_token: token})
response = resource.get(accept: 'application/json')
#con la conexión lista, parseamos a JSON y terminamos
json = JSON.parse(response.body)
