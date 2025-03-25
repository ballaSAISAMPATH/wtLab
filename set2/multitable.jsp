<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Multiplication Table</title>
</head>
<body>
    <h1>Multiplication Table Generator</h1>
    <form method="get">
        <label for="number">Enter a number:</label>
        <input type="number" name="number" id="number" required>
        <button type="submit">Generate</button>
    </form>

    <%
        // Fetch the number from the request parameter
        String numberParam = request.getParameter("number");
        if (numberParam != null) {
            try {
                int number = Integer.parseInt(numberParam);
    %>
                <h2>Multiplication Table for <%= number %>:</h2>
                <table border="1" cellpadding="5" cellspacing="0">
                    <%
                        // Generate multiplication table
                        for (int i = 1; i <= 10; i++) {
                    %>
                        <tr>
                            <td><%= number %> x <%= i %></td>
                            <td><%= number * i %></td>
                        </tr>
                    <%
                        }
                    %>
                </table>
    <%
            } catch (NumberFormatException e) {
                out.println("<p style='color:red;'>Please enter a valid number.</p>");
            }
        }
    %>
</body>
</html>
