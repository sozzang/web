//Filter : HTTP 요청과 응답을 변경할 수 있는 재사용 가능한 코드 
// tomcat이랑 servlet의 사이에서 위치함
// 필터가 필요한 이유는 웹 컴포넌트(Servlet, Jsp)에서 공통적으로 처리해야할 일들을 필터를 통해 처리할 수 있기 때문에 필요함

package kr.co.greenart;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginFilter implements Filter {

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		// 서블릿이 요청 객체를 다루기 전
		System.out.println("doFilter 전");
		HttpSession session = ((HttpServletRequest) req).getSession();
		Object loginid = session.getAttribute("loginid");

		if (loginid != null) {
			// 원래 흐름을 그대로 흘러갈 수 있게 doFilter에 req, resp을 전달
			// doFilter위에서 조작을 하면 서블릿을 전달받을 수 있다.
			chain.doFilter(req, resp);
		} else {
			((HttpServletResponse) resp).sendError(HttpServletResponse.SC_UNAUTHORIZED);
		}
		// 서블릿 요청을 처리하고 응답 보내기 전
		// doFilter을 수행 후
		System.out.println("doFilter 후");

		// 어느 흐름에 개입을 할건지 명시해줘야함! web.xml에

	}
}
