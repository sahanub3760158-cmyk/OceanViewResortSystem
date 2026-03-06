<html>
<head>
<title>Login</title>

<style>
body {
    font-family: Arial;
    background: linear-gradient(to right, #141e30, #243b55);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.login-box {
    background: white;
    padding: 30px;
    border-radius: 10px;
    width: 300px;
    text-align: center;
}

input {
    width: 90%;
    padding: 8px;
    margin: 8px 0;
}

button {
    padding: 8px 20px;
    background: #2a5298;
    color: white;
    border: none;
    border-radius: 5px;
}
</style>

</head>

<body>

<div class="login-box">
<h2>Ocean View Resort</h2>

<form action="LoginServlet" method="post">
<input type="text" name="username" placeholder="Username" required /><br>
<input type="password" name="password" placeholder="Password" required /><br>
<button type="submit">Login</button>
</form>

</div>

</body>
</html>