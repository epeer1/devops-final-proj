<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date" %>
<html>
<head>
    <title>My Cool JSP App</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            padding: 20px;
        }

        h1 {
            color: #333333;
        }

        .form-container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            width: 300px;
        }

        input[type=text], button {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            margin-bottom: 10px;
        }

        .result {
            margin-top: 20px;
            font-weight: bold;
        }
    </style>
</head>
<body>

    <h1>Welcome to My Cool JSP App 🚀</h1>
    <p>Today is: <%= new Date() %></p>

    <div class="form-container">
        <form method="post">
            Enter your name:<br/>
            <input type="text" name="username" />
            <button type="submit">Submit</button>
        </form>

        <% 
            String username = request.getParameter("username");
            if (username != null && !username.trim().isEmpty()) {
        %>
            <div class="result">
                Hello, <%= username %>! 👋
            </div>
        <% 
            } 
        %>
    </div>

    <p>
        <a href="https://www.example.com" target="_blank">Click here to visit Example.com</a>
    </p>

</body>
</html>
