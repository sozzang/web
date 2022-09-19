package kr.co.greenart;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@WebServlet("/board")
public class BoardServlet extends HttpServlet {
	private final static Logger logger = LoggerFactory.getLogger(BoardServlet.class);
	private BoardService service;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		service = new BoardService(new BoardDAO());
		// System.out.println("사용자가 GET방식의 요청을 하였습니다");

		logger.info("로거를 통해 메세지를 남깁니다.");
		logger.info("사용자가 Get요청함.(게시판목록)");

		// slf4j : FATAL / ERROR / WARN / INFO / DEBUG
		// 중요도에 따라 나뉜다.
		List<BoardArticle> articles = service.게시글글목록보기서비스();
		req.setAttribute("articles", articles);

		req.getRequestDispatcher("/WEB-INF/articles.jsp").forward(req, resp);

		// resp.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
		// req.getRequestDispatcher("needlogin.jsp").forward(req, resp);

		// 코드만 설정하고 에러 페이지로 발송하지 않음
		// 401번 코드 : 인증이 되어 있지 않을 때 보여주는 코드

		// 위에꺼 쓰거나 밑에꺼 쓰거나

		// resp.sendError(HttpServletResponse.SC_UNAUTHORIZED);

		// 필터페이지로 옮겨줬음
	}
}

//서블릿은 서비스가 필요하고  서비스는 다오가 필요하다 -> 개체의존성