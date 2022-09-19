//ObjectMapper 
//JSON 컨텐츠를 Java 객체로 Java 객체를 JSON으로 바꿀 때 사용하는 Jackson 라이브러리의 클래스

//ObjectNode
//path(),get()을 이용해  key 값을 가져올 수 있다. put()을 통해 값을 추가
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;

public class Main {
	public static void main(String[] args) throws JsonProcessingException {
		// 사람
		// ㅇ름 = 홍길동
		// 나이 == 22
	
		ObjectMapper mapper = new ObjectMapper();
		ObjectNode node = mapper.createObjectNode();

		node.put("name", "박소현");
		node.put("age", 28);
		node.put("boolean", true);
		
		ObjectNode node2 = mapper.createObjectNode();
		node2.put("이름", "둘리");
		node2.put("나이", 10000);
		//사람객체에 대해 꼭 있어야하는 기준이 없기 떄문에 
		//이름,나이,boolean중에 boolean이 빠져도 됨.
		//하지만 사용자가 일관성있고 편하게 사용할 수 있게 하기 위해
		//기준을 정해주는 것이 좋다. -> Person.java 생성
		
		node.put("bf", node2);
		
		String json = mapper.writeValueAsString(node);
		System.out.println(json);
	}
}
