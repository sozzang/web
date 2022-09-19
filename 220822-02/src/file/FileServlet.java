package file;

import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

//@= 웹상에서 보이는 주소가 저렇게 될거다.
@WebServlet("/fileupload")
@MultipartConfig(location = "d:\\temp", fileSizeThreshold = 10 * 1024 * 1024, maxFileSize = 50 * 1024 * 1024)
//fileSizeThreshold로 정한 용량을 넘어서면 temp라는 이름의임시폴더를 사용하겠다.(디스크활용)
//maxFileSize사용자가 보낼 수 있는 최대 용량 
//용량보다 적으면 인메모리에 저장하겠다.
public class FileServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Part p = req.getPart("fileupload");
		System.out.println(p.getName()); // 파라미터 이름
		System.out.println(p.getSubmittedFileName()); // 실제로 사용자가 올린 파일의 이름
		for (String header : p.getHeaderNames()) {
			System.out.println(header + ":" + p.getHeader(header));
		}

		// 사용자가 업로드한 파일을 저장하기

		String contextPath = getServletContext().getRealPath("");
		System.out.println(contextPath); // 저장경로보고싶으면 여기 따라가면 됨

		// getRealPath: 서브릿이 동작하고 있는 실제 경로를 구하는 메소드
		Path directory = Paths.get(contextPath);
		Files.copy(p.getInputStream(), directory.resolve(p.getSubmittedFileName()));

		resp.sendRedirect("/" + URLEncoder.encode(p.getSubmittedFileName(), "UTF-8"));
		//파일이름이 한글이면  인코딩
	}
}
