Feature: Pruebas API con Karate

Background:
  * url 'https://reqres.in/api'

Scenario: Obtener lista de usuarios (GET)
  Given path 'users?page=2'
  When method GET
  Then status 200
  And match response.page == 2

Scenario: Crear usuario (POST)
  Given path 'users'
  And request
    """
    {
      "name": "maria",
      "job": "tester"
    }
    """
  When method POST
  Then status 201
  And match response.name == "maria"
