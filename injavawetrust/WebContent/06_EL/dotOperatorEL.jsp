<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<body>

	<!-- dot (.) operatoru ile hem Map'e hem de bean property alanlarina ulasabiliriz! -->
	
	${mymap.key1}
    ${mymap.key2} 
    ${mymap.key3}
    
    <!--mymap var , thereIsNoKey diye bir key yok! Ekrana bir sey yazmaz , hata vermez!  -->
    ${mymap.thereIsNoKey}
    
    <!--thereIsNoMap ve thereIsNoKey yok ! Ekrana bir sey yazmaz , hata vermez!  -->
    
    ${thereIsNoMap.thereIsNoKey} 
    
</body>
</html>