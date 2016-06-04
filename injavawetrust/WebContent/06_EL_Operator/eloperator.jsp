<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<body>

${(num1+5)*3} <br>
${num1/0 } <br>
${num1 div 0 } <br> 
${num7 % 3 } <br> 
${num7 mod 4 } <br> 
${bool1 and true} <br>
${num2 ==2} <br>
${num2 eq 2} <br>
${num2 le 5} <br>

${foo}
${foo[bar]}
${foo.bar}

${10+foo}
${10/foo}
${10-foo}
<%--${10%foo} java.lang.ArithmeticException: / by zero --%>

${7<foo}
${7==foo}
${foo==foo}
${true and foo}
${true or foo}
${not foo}

</body>
</html>