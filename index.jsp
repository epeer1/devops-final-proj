<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date" %>
<% fffffff %>
<html>
<head>
    <title>My Cool JSP App - Final Project</title>
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
            width: 400px;
        }

        input[type=text], input[type=email], button {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            margin-bottom: 10px;
        }

        .result {
            margin-top: 20px;
            font-weight: bold;
            color: green;
        }
    </style>
</head>
<body>

    <h1>Welcome to My Cool JSP App 🚀</h1>
    <p>Today is: <%= new Date() %></p>

    <div class="form-container">
        <form method="post">
            Enter your name:<br/>
            <input type="text" name="username" required />

            Enter your email:<br/>
            <input type="email" name="email" required />

            <button type="submit">Submit</button>
        </form>

        <% 
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            if (username != null && !username.trim().isEmpty() && email != null && !email.trim().isEmpty()) {
        %>
            <div class="result">
                Thank you, <%= username %>! We will contact you at <%= email %> 📧
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
