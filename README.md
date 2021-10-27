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
