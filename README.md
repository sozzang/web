tomcat
-> Tomcat9.0버전 -> 64-bit window 다운
-> 아무데나 저장하는데 주소가 한글이 뜨면 안됨
-> Tomcat이 설치된 위치를 카탈리나
-> bin폴더 -> bat로 끝나는 파일들이 실행 가능한 파일임 startup.bat 더블클릭
-> 크롬 검색창에 http://localhost:8080 검색!

html 작성
메모장or비쥬얼스튜디오에 html 작성
->저장(파일명은 띄어쓰기없이 영소문자로, .html 붙여서 모든 파일로 저장) 

저장된 파일을 브라우저에 끌어서 톡 놓으면 내가 만든 html이 뜬다.

내 D드라이브에 저장해서 다른 컴퓨터에서는 볼 수 없다.
공유하기 위해 웹서버에 응답으로서 보내주려고 한다.

tomcat폴더->webapps->새폴더생성(영소문자)->만들어둔 html파일을 복붙
이제 html파일을 정적자원으로서 가지게 됨
브라우저에 세부경로적어줌
세부경로는 http://localhost:8080/새폴더/파일명.html

수정한다고 해서 내용이 실시간으로 바뀌지는 않음
검색창 옆에 동그란 화살표 누르면 바뀜

효정이언니꺼 보고싶으면
localhost를 언니 ipv4로 넣어서 들어가면 됨
