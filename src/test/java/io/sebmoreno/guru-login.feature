Feature: Iniciar sesion en Guru99

  Background:
    * def guruloginUI = read('guru-login.json')

  Scenario Outline:
    Given driver guruURL
    When input(guruloginUI.USERNAME_INPUT,'<username>')
    When input(guruloginUI.PASSWORD_INPUT,'<password>')
    When click(guruloginUI.SUBMIT_BUTTON)
    Then waitForUrl('<expectedUrl>')
    And match text(guruloginUI.WELCOME_LABEL) contains '<welcomeMessage>'
    Examples:
      | username | password | expectedUrl                 | welcomeMessage     |
      | mgr123   | mgr!23   | manager/Managerhomepage.php | Manger Id : mgr123 |

