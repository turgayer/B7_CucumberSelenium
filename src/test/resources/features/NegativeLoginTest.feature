Feature: Negative Login Test
  #ClassTask--> Create a Negative Login Test Feature file with Scenario Outline which includes 4 different data as;
  # eurotech
  # eurotech@
  # eurotech@gmail
  # eurotec@gmail.com
  # Do not forget to take the messages which show the result as negative
  # Create Step Def class and if needed create locators and methods in related page class

  Scenario Outline: Negative Login Test
    Given The user is on the login page
    When The user logs in using "<userType>" and "<password>"
    Then The warning message contains '<message>'
    Examples:
      | userType          | password   | message                                                                             |
      | eurotech          | Test12345! | Lütfen e-posta adresine bir "@" işareti ekleyin. "eurotech" adresinde "@" eksik.    |
      | eurotech@         | Test12345! | Lütfen "@" işaretinden sonra gelen kısmı ekleyin. "eurotech@", tam bir adres değil. |
      | eurotech@gmail    | Test12345! | Please include a valid email!                                                       |
      | eurotec@gmail.com | Test12345! | Invalid Credentials!                                                                |





