<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profile</title>
</head>
<body>
<p><b> Enter your details
</b></p>
<form action='/statistic' method='POST'>
    <input name="name" placeholder="name..." type="text" required
           height="100%" size="40" class="class1"/> <br>
    <br> <input name="last name" placeholder="last name..." type="text"
                required height="100%" size="40" class="class1"/> <br><br>
    <input name="age" placeholder="age..." type="text" required
           height="100%" size="40" class="class1"/> <br>
    <br>
    <p><b>
        What programming language do you know? </b></p>
    <p><input name="language" type="radio" value="C#"> C#</p>
    <p><input name="language" type="radio" value="Python"> Python</p>
    <p><input name="language" type="radio" value="Java"> Java</p>
    <p><input name="language" type="radio" value="C++"> C++</p>
    <p><input name="language" type="radio" value="With any of these" checked> With any of these</p>

    <br>
    <p><b>What Frontend technologies did you work with? </b></p>
    <p><input name="template" type="radio" value="HTML"> HTML</p>
    <p><input name="template" type="radio" value="HTML+CSS"> HTML+CSS</p>
    <p><input name="template" type="radio" value="HTML+CSS+JavaScript"> HTML+CSS+JavaScript</p>
    <p><input name="template" type="radio" value="With any of these FR" checked> With any of these FR</p>

    <br>
    <p><b>
        What DataBase environments did you work with? </b></p>
    <p><input name="databases" type="radio" value="MySQL"> MySQL</p>
    <p><input name="databases" type="radio" value="PostGreSQL"> PostGreSQL</p>
    <p><input name="databases" type="radio" value="NoSQL"> NoSQL</p>
    <p><input name="databases" type="radio" value="I don't know SQL language" checked> I don't know SQL language</p>


    <input type="submit" value="Send">
</form>
</body>
</html>
