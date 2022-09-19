import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class Main7 {
	private static String getSaraminInfo(String url) throws IOException {
		Document doc = Jsoup.connect(url).timeout(5000).get();
		String info = doc.select("meta[name=description]").first().attr("content");
		// first() 첫번째꺼만 골라와라
		return info;

	}

	public static void main(String[] args) throws IOException {
		String searchURL = "https://www.saramin.co.kr/zf_user/search?search_area=main&search_done=y&search_optional_item=n&searchType=search&searchword=java";
		String startString = "/zf_user/jobs/relay/view";

		Document doc = Jsoup.connect(searchURL).timeout(5000).get();
		// Document : GET방식으로 응답받은 HTML 문서
		// timeout : 요청시간, 기본적으로 30초 기다림
		Elements links = doc.select("a[href]");

		// String startString = "/zf_user/jobs/relay/view";
		// 얘로 시작하는 자료들만 찾아보기!
		Set<String> set = new HashSet<>();
		for (Element e : links) {
			String attr = e.attr("href");
			if (attr.startsWith(startString)) {
				set.add("http://www.saramin.co.kr" + attr);
			}
		}
		
		/*
		 * for (String url : set) { System.out.println(getSaraminInfo(url)); }
		 */
		
		//한방에 요청날리기 , 좀 더 빠르게 반환할 수 있음(아직 안배우긴 함 )
			set.parallelStream().map(url -> {
				try {
					return getSaraminInfo(url);
				} catch (IOException e1) {
					e1.printStackTrace();
				}
				return null;
			}).forEach(System.out::println);
		}
	}
