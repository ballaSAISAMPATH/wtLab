<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="multitable.jsp" method="get">
        <input name="num" id="num" type="number">
        <input type="submit">

    </form>

    <% String number=request.getParameter("num");
    int num=0;
        if (number!=null){
            num=Integer.parseInt(number);
        
    %>
    <h1>multiplication table of <%= num%> is :</h1>

    <table border="1">
    <% for(int i=1;i<=10;i++){%>
            <tr>
                <%= num%> * <%= i%> = <%= num*i%>
                <br>                    
                
            </tr>
            <%} 
            
        }
            %>
    </table>
</body>
</html>