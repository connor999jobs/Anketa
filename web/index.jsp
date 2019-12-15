<%--
  Created by IntelliJ IDEA.
  User: Nata
  Date: 14.08.2019
  Time: 15:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profile</title>
</head>
<body>
<p><b> Введите свои данные </b></p>
<form action='/statistic' method='POST'>
    <input name="name" placeholder="name..." type="text" required
           height="100%" size="40" class="class1"/> <br>
    <br> <input name="last name" placeholder="last name..." type="text"
                required height="100%" size="40" class="class1"/> <br><br>
    <input name="age" placeholder="age..." type="text" required
           height="100%" size="40" class="class1"/> <br>
    <br>
    <p><b>Какой язык программирования вы знаете? </b></p>
    <p><input name="language" type="radio" value="C#"> C#</p>
    <p><input name="language" type="radio" value="Python"> Python</p>
    <p><input name="language" type="radio" value="Java" > Java</p>
    <p><input name="language" type="radio" value="C++" > C++</p>
    <p><input name="language" type="radio" value="With any of these" checked> With any of these</p>

    <br>
    <p><b>С какими перечисленными Frontend технологиями вы работали? </b></p>
    <p><input name="template" type="radio" value="HTML"> HTML</p>
    <p><input name="template" type="radio" value="HTML+CSS"> HTML+CSS</p>
    <p><input name="template" type="radio" value="HTML+CSS+JavaScript" > HTML+CSS+JavaScript</p>
    <p><input name="template" type="radio" value="With any of these FR" checked> With any of these FR</p>

    <br>
    <p><b>C какими средами работы DataBase вы работали?  </b></p>
    <p><input name="databases" type="radio" value="MySQL"> MySQL</p>
    <p><input name="databases" type="radio" value="PostGreSQL"> PostGreSQL</p>
    <p><input name="databases" type="radio" value="NoSQL" > NoSQL</p>
    <p><input name="databases" type="radio" value="I don't know SQL language" checked> I don't know SQL language</p>

    <br>
    <p><b>Работали вы с одним из перечисленных фреймфорком тестирования?  </b></p>
    <p><input name="testing" type="radio" value="JUnit"> JUnit</p>
    <p><input name="testing" type="radio" value="Mockito"> Mockito</p>
    <p><input name="testing" type="radio" value="I don't work with this technology" checked> I don't work with this technology</p>



    <input type="submit" value="Send">
</form>
</body>
</html>
