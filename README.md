# Hidden-Catch-Project 👀

## Project Synopsis  
<div>

### Description
🧠 다운로드나 설치 없이 간단한 가입 후 WEB 상에서 할 수 있는 틀린그림찾기 게임! <br>
👫 가족, 친구, 연인과 누가누가 잘 찾나 승부를 겨뤄보세요! 

롸잇나우!!!!!!

### Purpose
- WEB과 DB를 연동한 프로젝트입니다
- CRUD를 웹페이지를 통해 구현했습니다
- HTML/JSP를 활용한 화면간 이동을 구현했습니다
- Web-Based 게임의 처리는 Request/Response구조라는 웹의 특징을 활용하여 구현됩니다. 
<img src="https://github.com/YeonjiKim0316/step11_hiddencatch/blob/main/game.png"><br>
  (출처 : <게임제작개론 : #6 게임 시스템 구조에 대한 이해> https://www.slideshare.net/sm9kr/6-20903192)

### Programming Tools

```
    
    - Java
    - JSP (EL, Servlet)
    - JSTL
    - HTML
    - Oracle DB (JPA, JDBC)
    
```

## Structure
<div>
  - MVC Pattern<br>
<img src="https://i.stack.imgur.com/RQWhk.png" a href="https://stackoverflow.com/questions/34877766/codeigniter-model-insert-or-update-from-controller" width=500><br>
  (출처: Stackoverflow)
  
## Insight
<div>
    
```
    ❔ Git for Co-Working  
        - 명령어로 하나의 브랜치에서 각자의 작업물을 push and pull을 하려는 과정에서 
          자격증명 오류, 병합 충돌 등 여러 오류가 발생했습니다.
        - 폴더 자체를 삭제한 후 Git Desktop에서 Clone Repository 기능으로 모든 팀원의 폴더를 동기화하며 해결했습니다.
    
    
    ❔ Controller for Everymove
        - 컨트롤러에서 각 커맨드 실행 전에 세션에 id값이 있는지를 확인해 로그인이 안 된 경우에는 가입페이지에만 접근가능합니다.
        - 이를 위해 이동 경로 역시 화면간 직접 이동이 아닌 컨트롤러를 거치도록 개발했습니다.
     
     
    ❔ One to Many
        - 최소한의 기능으로 웹에서 게임 한 판을 온전히 동작하게 만든 후 추가 기능을 더하는 과정으로 작업했습니다. 
        - 첫 게임이 구현된 후 CRUD 및 2번째 3번째 게임 등을 추가하면서 경로 변경이나 더 필요한 문구 등이 생겨났습니다.
          
    ❔ Sessions
        - 이 추가 사항들은 게임 첫판을 실행하면 생겨나는 점수(${score})를 세션에 담아 
          기존 페이지를 JSTL의 <c:if>와 <c:choose> 구문으로 
          새 페이지를 만들지 않고 재사용해 서버 용량 및 반응 속도를 줄였습니다.
        - 이외 기록된 점수에 따라 다른 문구가 나오도록 개발했습니다.           
        
    ❔ Scoring
        - 그림 위에 촘촘하게 이미지맵을 씌우고 클릭 횟수 제한 및 맞는 부분을 클릭하면 점수 플러스, 
          틀린 부분을 클릭하면 점수 마이너스를 통해 점수 시스템을 계획했습니다.
          위 기능은 자바스크립트를 통해 향후 구현할 계획입니다.
          
        ❣ 고로 이 프로젝트는 앞으로도 발전할 일만 남았군요! 💪💪   
```


## Co-Workers
<div>

&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<a href="https://github.com/alsrjs2441"><img src="https://avatars3.githubusercontent.com/u/73862452?s=460&u=6091225c2e241fcef51c99e69c772b845aa03073&v=4" width="40" /></a> &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
<a href="https://github.com/seongho726"><img src="https://avatars0.githubusercontent.com/u/74332188?s=460&v=4" width="40"/></a><br>
<a href="https://github.com/YeonjiKim0316">YeonjiKim0316</a> <a href="https://github.com/hoyang21">hoyang21</a>
