<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Success Page</title>
    <link rel="stylesheet" href="css/styles.css"> <!-- Add your CSS if needed -->
    <style>
        body {
            background-color: #f0eded; /* Light gray background */
            font-family: Arial, sans-serif; /* Set the font for the page */
        }

        .container {
            margin-top: 50px; /* Top margin for the container */
        }

        .card {
            border-radius: 8px; /* Rounded corners for the card */
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Shadow effect */
        }

        .card-body {
            padding: 20px; /* Padding inside the card */
        }

        .text-success {
            color: #28a745; /* Green color for success message */
        }

        .btn-primary {
            background-color: #007bff; /* Primary button color */
            border-color: #007bff; /* Border color for the button */
            color: white; /* White text color */
            padding: 10px 20px; /* Padding for the button */
            border-radius: 5px; /* Rounded corners for the button */
            text-decoration: none; /* Remove underline from link */
        }

        .btn-primary:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }

        .text-center {
            text-align: center; /* Center text alignment */
        }

        .mt-2 {
            margin-top: 0.5rem; /* Margin-top utility class */
        }

        .p-2 {
            padding: 0.5rem; /* Padding utility class */
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row p-2">
            <div class="col-md-6 offset-md-3">
                <div class="card">
                    <div class="card-body">
                        <h4 class="text-center text-success">User Registered Successfully!</h4>
                        <p class="text-center">Thank you for registering.</p>
                        <div class="text-center mt-2">
                            <a href="index.jsp" class="btn btn-primary">Go to Homepage</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>