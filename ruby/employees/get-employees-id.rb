#Método GET de Empleados por id
#Si la página es cliente.buk.cl, el domain es "cliente"
domain = 'ACÁ VA EL DOMINIO'
token = 'ACÁ VA EL TOKEN'
employee_id = 67
path = "https://#{domain}.buk.cl/api/v1/chile/employees/#{employee_id}"
#declaramos las variables para invocar el endpoint
resource = RestClient::Resource.new(path, headers: {auth_token: token})
response = resource.get(accept: 'application/json')
#con la conexión lista, parseamos a JSON y terminamos
json = JSON.parse(response.body)
