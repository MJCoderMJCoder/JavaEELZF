<%-- 
    Document   : summation
    Created on : 2015-5-10, 11:46:57
    Author     : zhifengfei
--%>

<%@page import="java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>求和</title>
    </head>
    <body>
        <center><h1>王进成的程序</h1>
        <center><h2>求俩数之和</h2>
        <%-- start web service invocation --%>
        <%
            double sum=0.0;
            String summation = "";
            try {
                String strd1=request.getParameter("d1");
                String strd2=request.getParameter("d2");
                if(strd1==null)
                    strd1="0";
                if(strd2==null)
                    strd2="0";
                Double d1=Double.parseDouble(strd1);
                Double d2=Double.parseDouble(strd2);
                com.lzf.Summation service = new com.lzf.Summation();
                sum = service.twosummation(d1, d2);
            } catch (Exception ex) {
            }
        %>
        <form>
            加数：<input type='text' name='d1' value="0"><br>
            加数：<input type='text' name='d2' value="0"><br><br>
            <input type='submit' name='tijiao' value='求和'><br><br>
            俩数之和：<input size="15" type='text' name='d2' value="<%out.println(+sum);%>">
    </form>
    </center>
    </body>
</html>
