#Método PATCH de Employees/id

domain = 'ACÁ VA EL DOMINIO'
token = 'ACÁ VA EL TOKEN'
employee_id = 'ACÁ VA EL ID'
path = "https://#{domain}.buk.cl/api/v1/chile/employees/#{employee_id}"
#declaramos las variables para invocar el endpoint
resource = RestClient::Resource.new(path, headers: {auth_token: token})
json_post = {
  "first_name": "string",
  "surname": "string",
  "second_surname": "string",
  "rut": "string",
  "code_sheet": "string",
  "nationality": "TJ",
  "gender": "M",
  "civil_status": "Casado",
  "birthday": "2022-06-01",
  "email": "string",
  "personal_email": "string",
  "location_id": 0,
  "address": "string",
  "city": "string",
  "payment_method": "Transferencia Bancaria",
  "bank": "Security",
  "account_type": "Corriente",
  "account_number": "string",
  "start_date": "2022-06-01",
  "private_role": true,
  "active": true
}.to_json

response = resource.put(json_to_edit, content_type: 'application/json')
#con la conexión lista, parseamos a JSON y terminamos
json = JSON.parse(response.body)
