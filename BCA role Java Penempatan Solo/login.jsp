<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            $("form").submit(function(event) {
                var userId = $("input[name='userId']").val();
                var password = $("input[name='password']").val();
                if (userId === "" || password === "") {
                    alert("Both fields are required.");
                    event.preventDefault();
                }
            });
        });
    </script>
</head>
<body>
    <h2>Login</h2>
    <form action="login" method="post">
        User ID: <input type="text" name="userId"><br>
        Password: <input type="password" name="password"><br>
        <input type="submit" value="Login">
    </form>
</body>
</html>
