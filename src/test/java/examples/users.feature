Feature: Prueba API básica

Scenario: Obtener usuarios
  Given url 'https://reqres.in/api/users?page=2'
  When method GET
  Then status 200