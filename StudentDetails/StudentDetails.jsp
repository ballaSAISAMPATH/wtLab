<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="StudentDetails.jsp" method="GET">
        name <input name="name" type="text"/>
        age <input name="age" type="number"/>
        <input type="submit">
    </form>

    <% String name=request.getParameter("name");
        String age=request.getParameter("age");
        int agee=0;
        if (age!=null){
            agee=Integer.parseInt(age);
        }
    %>
        <table>
            <tr><%= name%></tr>    
            <tr><%= agee%></tr>    
        </table>
</body>
</html>