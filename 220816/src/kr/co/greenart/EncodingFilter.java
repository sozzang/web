package kr.co.greenart;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;

@WebFilter(filterName = "EncodingFilter", urlPatterns = "/*", initParams = @WebInitParam(name = "encoding", value = "UTF-8"))
// /* 사용자가 보내는 모든 요청에 대해 패턴매칭이 일어남
// 서블릿에서는 쓰지 않는데 필터에서는 모든 요청에 동작하도록 할 수 있음

public class EncodingFilter implements Filter {
	private String encoding;

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		encoding = filterConfig.getInitParameter("encoding");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		request.setCharacterEncoding(encoding);
		// 인코딩 값 설정은 변하지 않으니깐 상수or init파라미터 사용가능
		//init 파라미터를  @WebFilter에 써주고 오버라이드 까지~
		
		response.setCharacterEncoding(encoding);
		
		chain.doFilter(request, response);

	}

}
