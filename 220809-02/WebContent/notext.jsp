<%-- <% 
int result = 1 + 1;

//어떻게 viewPage에 연산의 결과를 보여줄 수 있을까???
//1.파라미터로서 전달해보자!
//response.sendRedirect("./viewPage.jsp?result=" + result);

//2.application을 통해 전달해보자!
application.setAttribute("result", result);
response.sendRedirect("./viewPage.jsp");
%> --%>



<!-- forward : 두개의 jsp 흐름이 하나로 합친다.
 notext + viewPage = forward -->


<%
int result = 1 + 1;
request.setAttribute("result", result);
request.getRequestDispatcher("/WEB-INF/viewPage.jsp").forward(request, response);
%>

<!-- Dispatcher : forward를 할 수 있는 객체 ! 
viewPage로 이동하라~ 고 흐름을 만들어줌 -->

<!-- viewPage를 web-inf 폴더로 옮겨버리면 사용자는 viewPage를
볼 수 없다 . -->

<!-- 기본객체처럼 존재하는 request,response,application 
그래서 이페이지의 .forward -->
