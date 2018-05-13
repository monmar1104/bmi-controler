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
    <h5>Oblicz BMI</h5>
    <br/>
    <div class="formFrame">
        <form action="add-bmi-details" method="post">
            Podaj wegę: <input type="number" step="0.01" value="${weight}" minlength="3" name="weight"><br/><br/>
            Podaj wzrost: <input type="number" step="0.01" value="${height}" minlength="3" name="height"><br/><br/>
            <input type="submit" name="add-bmi" value="Oblicz BMI">
        </form>
        <br/><br/>
        <h3><c:out value="${bmi}"></c:out></h3>
    </div>
    </div>

<script>
    var line = new RGraph.Line({
        id: 'cvs',
        data: [4,8,6,5,3,2,2,5],
        options: {
            hmargin: 5,
            noaxes: true,
            ylabels: false,
            gutterLeft: 150,
            colors: ['black'],
            tooltips: ['James','Jenna','Karl','Olga','Mark','Pete','Louise','Jack'],
            linewidth: 3,
            spline: true
        }
    }).draw();


    var line2 = new RGraph.Line({
        id: 'cvs',
        data: [50,60,57,85,45,23,56,56],
        options: {
            hmargin: 5,
            noaxes: true,
            ylabels: false,
            gutterLeft: 150,
            colors: ['red'],
            tooltips: ['James','Jenna','Karl','Olga','Mark','Pete','Louise','Jack'],
            linewidth: 3,
            spline: true,
            backgroundGrid: false
        }
    }).draw();


    var line3 = new RGraph.Line({
        id: 'cvs',
        data: [12,13,15,16,18,13,15,12],
        options: {
            hmargin: 5,
            noaxes: true,
            ylabels: false,
            gutterLeft: 150,
            colors: ['green'],
            tooltips: ['James','Jenna','Karl','Olga','Mark','Pete','Louise','Jack'],
            linewidth: 3,
            spline: true,
            backgroundGrid: false
        }
    }).draw();

    var yaxis = new RGraph.Drawing.YAxis({
        id: 'cvs',
        x: line.gutterLeft,
        options: {
            max: line.scale2.max,
            title: 'Widgets sold',
            colors: ['black']
        }
    }).draw();

    var yaxis2 = new RGraph.Drawing.YAxis({
        id: 'cvs',
        x: line.gutterLeft * (2/3),
        options: {
            max: line2.scale2.max,
            title: 'Outside mean temperature',
            colors: ['red']
        }
    }).draw();

    var yaxis3 = new RGraph.Drawing.YAxis({
        id: 'cvs',
        x: line.gutterLeft / 3,
        options: {
            max: line3.scale2.max,
            title: 'Rainfall measured by the MET office',
            tooltips: ['Rainfall measured by the MET office'],
            colors: ['green'],
            numlabels: 10
        }
    }).draw();
</script>

</body>
</html>
