# FlyScanner

## 스프링 MVC2 프로젝트
* 프로젝트명 : FlyScanner
* 프로젝트 인원 : 5명
* 프로젝트 기간 1달 
* 직책 : Team Leader(PM)
* 역할 : 프로젝트 설계(DB, 프로젝트 흐름), 전체 프로젝트 취합(Merge), 프레젠테이션, 스케쥴관리.
------------------------------------------------------------
* 개인 작업
- 로그인
  ---> 사이트 로그인, Kakao Login 구현 및 연동.
- 회원 정보 CRUD 
- MyPage 구현 --> 회원정보 검색, 호텔, 항공권 예약 조회 기능 연동, FAQ,QNA 페이지 연동.
- OPEN API(Restful API) :  (kakao Login, open Weather API, google Map)
- Main page 추천 (항공권, 호텔)
  ---> Ajax 사용 SQL Query문 사용하여 추천 List Up(추천수, 가격순 )
- 회원정보 패스워드 암호화(Spring Security : BcryptPasswordEncoding)
- 여행지 날씨, 지도 검색기능 페이지 구현
  ---> Open Weather Map API 구현으로 검색 지역의 실시간 날씨 정보 업데이트(전세계 기준)
  ---> Google Map, Geocoding API 사용으로 검색 지역의 위치 마커, 이동.
------------------------------------------------------------
### UML - 클래스 다이어 그램
<img src="https://user-images.githubusercontent.com/86291550/215340533-043912e6-bd57-4bfe-899d-1c5decce8515.png" width="300" height="300"/>
<!-- ![image](https://user-images.githubusercontent.com/86291550/215340533-043912e6-bd57-4bfe-899d-1c5decce8515.png) -->
![image](https://user-images.githubusercontent.com/86291550/215340575-de6719c2-d314-4de5-9e24-b6432fd5c99f.png) <br>

------------------------------------------------------------
### 시퀀스 다이어 그램
![image](https://user-images.githubusercontent.com/86291550/215340596-9e0d781e-92b6-49f2-a257-34d7618dde3e.png)<br>
![image](https://user-images.githubusercontent.com/86291550/215340600-e8ac556b-eae0-4fd5-847d-b49ca46b78f6.png)<br>

------------------------------------------------------------
### 순서도
![image](https://user-images.githubusercontent.com/86291550/215340620-94e8c1a8-156b-45f4-a38b-38b58910b607.png)<br>

------------------------------------------------------------
### 추천 - Main Page
- 인기 많은 항목들을 Main Page에 추천.
![image](https://user-images.githubusercontent.com/86291550/215340673-6a10ac8b-ab76-4977-91dc-2b0984a013ba.png)<br>
![image](https://user-images.githubusercontent.com/86291550/215340732-d2310f38-53e4-4818-bfef-7452553df4dd.png)<br>

------------------------------------------------------------
### Open API
- Kakao Login 
- Open Weather API 
- Google Map (GeoCode)
- 본인인증 (Import)

![image](https://user-images.githubusercontent.com/86291550/215340827-6bd1e84c-9f95-4dff-b0b5-863add8e543a.png) <br>
![image](https://user-images.githubusercontent.com/86291550/215340807-f839edf1-9d3f-48d3-a14e-2b8e6408e246.png)<br>
![image](https://user-images.githubusercontent.com/86291550/215340837-21e04923-26c6-472e-bcd8-84fcb8200ba9.png)<br>


