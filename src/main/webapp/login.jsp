<div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div id="login-modal" class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">LOGIN</h4>
            </div>
            <div class="modal-body">
                <form method="post" action="login">
                    <input type="hidden" name="token" value="${authToken}"/>
                    <div class="form-group">
                        <label for="login">Login</label>
                        <input type="text" class="form-control" id="login" minlength="3" name="login">
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" class="form-control" id="password" minlength="3"
                               name="password">
                    </div>
                    <button type="submit" class="btn btn-default">Login</button>
                    <br/>

                    <div class="g-signin2" data-onsuccess="onSignIn" id="myP"></div>
                    <img id="myImg"><br>
                    <p id="name"></p>
                    <div id="status"></div>
                    <div id="logoutGoogleButton"></div>
                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>
<c:if test="${sessionScope.login==null}">
    <script type="text/javascript">
        $(window).on('load', function () {
            $('#myModal').modal('show');
        });
    </script>
</c:if>

<script type="text/javascript">
    function onSignIn(googleUser) {
        var profile = googleUser.getBasicProfile();
        var imagurl = profile.getImageUrl();
        var name = profile.getName();
        var email = profile.getEmail();
        document.getElementById("myImg").src = imagurl;
        document.getElementById("name").innerHTML = name;
        document.getElementById("myP").style.visibility = "hidden";
        document.getElementById("status").innerHTML = 'Witaj ' + name + '!<span class="logtext"><a href=google-user?email=' + email + '&name=' + name + '/> Start przy użyciu konta Google</a></span></p>'
        document.getElementById("logoutGoogleButton").innerHTML = '<button class="button" onclick="logoutGoogle()">Wyloguj google</button>'
    }
</script>

<script>
    function logoutGoogle() {
        gapi.auth2.getAuthInstance().disconnect();
        location.reload();
        document.getElementById("logoutGoogleButton").innerHTML = ''
    }
</script>


<%--<header>--%>
    <%--<h1>Login and Registration Form</h1>--%>

<%--</header>--%>
<%--<section>--%>
    <%--<div id="container_demo" >--%>
        <%--<!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->--%>
        <%--<a class="hiddenanchor" id="toregister"></a>--%>
        <%--<a class="hiddenanchor" id="tologin"></a>--%>
        <%--<div id="wrapper">--%>
            <%--<div id="login" class="animate form">--%>
                <%--<form  action="mysuperscript.php" autocomplete="on">--%>
                    <%--<h1>Log in</h1>--%>
                    <%--<p>--%>
                        <%--<label for="username" class="uname" > Your email or username </label>--%>
                        <%--<input id="username" name="username" required="required" type="text" placeholder="myusername or mymail@mail.com"/>--%>
                    <%--</p>--%>
                    <%--<p>--%>
                        <%--<label for="password" class="youpasswd"> Your password </label>--%>
                        <%--<input id="password" name="password" required="required" type="password" placeholder="eg. X8df!90EO" />--%>
                    <%--</p>--%>
                    <%--<p class="keeplogin">--%>
                        <%--<input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" />--%>
                        <%--<label for="loginkeeping">Keep me logged in</label>--%>
                    <%--</p>--%>
                    <%--<p class="login button">--%>
                        <%--<a href="http://cookingfoodsworld.blogspot.in/" target="_blank" ></a>--%>
                    <%--</p>--%>
                    <%--<p class="change_link">--%>
                        <%--Not a member yet ?--%>
                        <%--<a href="#toregister" class="to_register">Join us</a>--%>
                    <%--</p>--%>
                <%--</form>--%>
            <%--</div>--%>

            <%--<div id="register" class="animate form">--%>
                <%--<form  action="mysuperscript.php" autocomplete="on">--%>
                    <%--<h1> Sign up </h1>--%>
                    <%--<p>--%>
                        <%--<label for="usernamesignup" class="uname" >Your username</label>--%>
                        <%--<input id="usernamesignup" name="usernamesignup" required="required" type="text" placeholder="mysuperusername690" />--%>
                    <%--</p>--%>
                    <%--<p>--%>
                        <%--<label for="emailsignup" class="youmail"  > Your email</label>--%>
                        <%--<input id="emailsignup" name="emailsignup" required="required" type="email" placeholder="mysupermail@mail.com"/>--%>
                    <%--</p>--%>
                    <%--<p>--%>
                        <%--<label for="passwordsignup" class="youpasswd" >Your password </label>--%>
                        <%--<input id="passwordsignup" name="passwordsignup" required="required" type="password" placeholder="eg. X8df!90EO"/>--%>
                    <%--</p>--%>
                    <%--<p>--%>
                        <%--<label for="passwordsignup_confirm" class="youpasswd" >Please confirm your password </label>--%>
                        <%--<input id="passwordsignup_confirm" name="passwordsignup_confirm" required="required" type="password" placeholder="eg. X8df!90EO"/>--%>
                    <%--</p>--%>
                    <%--<p class="signin button">--%>
                        <%--<input type="submit" value="Sign up"/>--%>
                    <%--</p>--%>
                    <%--<p class="change_link">--%>
                        <%--Already a member ?--%>
                        <%--<a href="#tologin" class="to_register"> Go and log in </a>--%>
                    <%--</p>--%>
                <%--</form>--%>
            <%--</div>--%>

        <%--</div>--%>
    <%--</div>--%>
<%--</section>--%>