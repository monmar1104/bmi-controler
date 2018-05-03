<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
          integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js"
            integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"
            integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"
            integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn"
            crossorigin="anonymous"></script>
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <meta name="google-signin-client_id"
          content="830889560506-bfd7gjnpsj4o3ss6n24f2pis4dscu4u9.apps.googleusercontent.com">
</head>
<body class="bg-dark">
<div class="container">
    <br/>
    <br/>
    <br/>
    <%@include file="navbar.jsp" %>
    <br/>
    <br/>
    <h5>Dodaj użytkownika</h5>
    <br/>
    <div class="formFrame">
        <form action="add-patient" method="post">
            Imię: <input type="text" minlength="3" name="name"><br/><br/>
            Nazwisko: <input type="text" minlength="3" name="surname"><br/><br/>
            Email: <input type="email" name="email"><br/><br/>
            Płeć: <select name="gender" required>
            <option>---Wybierz płeć---</option>
            <option value="woman">kobieta</option>
            <option value="man">mężczyzna</option>
        </select><br/><br/>
            Data urodzenia: <input type="date" name="date"><br/><br/>
            <button type="submit" formaction="add-patient">Zapisz</button>
        </form>
    </div>
</div>

</body>
</html>
