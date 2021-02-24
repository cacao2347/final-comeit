# COME-IT


## 목차
#### 1. 사이트 소개
#### 2. 사이트 구성
  * 스터디
  * 강의
  * 업체
#### 3. 주요 구현 기능 소개
  * 회원가입/로그인
  * 게시판 CRUD 기능 / 검색 기능
  * 페이징 처리
  * 탭 기능



## 1. 사이트 소개

   IT 분야에서의 학습은 독서실에 홀로 앉아 조용히 공부하는 전통적인 학습 방식과는 달리, 여러 사람이 스터디 모임을 만들어 함께 프로젝트를 진행하거나 자신이 가진 지식을 서로에게 
 공유하는 형태의 학습이 주를 이루고 있습니다. 저희 팀은 이에 착안하여 IT 분야를 공부하는 사람들이 스터디 모임을 좀더 쉽게 구성할 수 있고 유지해나갈 수 있는 
 사이트를 만들면 어떨까 생각을 하게 되었고, COME-IT 사이트를 제작하게 되었습니다.
 
   사이트의 구성은 크게 3가지로 나뉘어집니다. 첫 번째는 스터디 게시판 입니다. 이곳에서 사용자는 스터디 모임 게시글을 등록하거나 등록된 스터디 모임의 정보를 확인하고 참여할 수
 있습니다. 두 번째는 강의 게시판 입니다. 이곳에서는 IT 분야에서 전문적인 지식을 갖고 있는 사용자가 강의를 개설할 수 있고 수강생을 모집할 수 있습니다. 세 번째는 업체 게시판
 으로 스터디나 강의의 오프라인 모임에 필요한 모임 공간을 등록할 수 있는 곳 입니다. 이곳에서 업체 회원은 자신의 카페/스터디카페를 게시판에 등록할 수 있고 일반 회원들은 해당 
 업체에 장소 예약을 할 수 있도록 기획하였습니다.

 COME-IT 사이트는 웹개발 국비지원과정의 파이널 과제로 제작한 사이트입니다. 2020년 7월 1일부터 2020년 7월 31일까지 1달에 걸쳐, 저를 포함한 5명의 팀원들이 제작하였습니다.

* #### COME-IT 사이트 접속 주소 : http://18.188.250.209:8090/FinalComeit/
* #### (테스트 아이디 : member123 PWD : test123123!@ / 사이트 회원가입도 가능합니다.)
* #### 프로젝트 Git 본 주소 : https://github.com/rhswl1023/final-comeit (해당 주소에서 Commit 내역 확인 가능합니다.)


## 2. 사이트 구성

* ### 스터디

![git_사진_1](https://user-images.githubusercontent.com/36719307/108813020-82639880-75f3-11eb-87d6-b3822088b9f4.PNG)

> 스터디 게시판의 게시글 목록 사진입니다. 검색 기능을 통하여 제목으로 스터디 게시글을 찾을 수 있고, 스터디방 개설 버튼을 통해 스터디 모임 게시글을 작성할 수 있습니다.

***

![git_사진_2](https://user-images.githubusercontent.com/36719307/108813317-24838080-75f4-11eb-8378-39a40100a651.PNG)

> 스터디 게시글을 눌렀을 경우 이동되는 스터디 상세 페이지 입니다. 스터디의 참여자를 비롯한 다양한 정보를 확인할 수 있습니다.

***

![git_사진_3](https://user-images.githubusercontent.com/36719307/108813320-251c1700-75f4-11eb-895f-811f3981dd39.PNG)

> 스터디방 개설 화면입니다. 스터디가 요구하는 다양한 정보들을 입력하여 스터디 모임을 개설할 수 있습니다.


* ### 강의

![git_사진_4](https://user-images.githubusercontent.com/36719307/108814663-8b099e00-75f6-11eb-90dc-ff457934a0b8.PNG)

> 강의 게시판 입니다. 스터디 게시판과 마찬가지로 강의 등록 및 강의 검색이 가능하며 강의 목록을 확인할 수 있습니다.

* ### 업체

![git_사진_5](https://user-images.githubusercontent.com/36719307/108814665-8ba23480-75f6-11eb-8193-41bbe169e7c0.PNG)

> 업체 게시판 입니다. 업체 회원은 자신의 카페/스터디카페를 사이트에 등록할 수 있습니다. 업체 등록 및 업체 목록 확인이 가능합니다.



## 3. 주요 구현 기능 소개

* ### 회원가입/로그인

![git_사진_회원가입](https://user-images.githubusercontent.com/36719307/108949283-76d1a980-76a7-11eb-856b-596988be5195.PNG)

>  - 회원가입 화면입니다.
>  - 상단의 이용약관에 "동의하지 않습니다." 를 선택하면 전체 텍스트 박스가 비활성화 됩니다.
>  - 중복확인 버튼을 통해 입력한 ID가 DB에 있는 ID와 중복되는지 여부를 확인할 수 있습니다.
>  - 문자 API를 이용하여 휴대폰 번호를 통해 인증번호를 받아 인증할 수 있습니다. 휴대폰으로 인증하지 않을 시 가입이 불가능합니다.
>  - 자신이 관심있는 IT분야의 키워드를 선택할 수 있습니다.
>  - 필수 입력사항을 입력하지 않거나 형식에 맞지 않게 입력할 시에는 가입이 불가능합니다.

![git_사진_로그인](https://user-images.githubusercontent.com/36719307/108949618-14c57400-76a8-11eb-9d1e-fab861d86e38.PNG)

> - 로그인 화면입니다.
> - 일반 로그인 / 업체 로그인 / 관리자 로그인 3가지가 존재하며 Sign in 버튼 클릭시 DB에 저장된 아이디와 비밀번호를 대조하여 일치 할시 로그인 됩니다.

* ### 게시판 CRUD 기능 / 검색 기능

![git_사진_게시글목록](https://user-images.githubusercontent.com/36719307/108952149-63750d00-76ac-11eb-85d5-c9ee6c47711f.PNG)
![git_사진_게시글상세](https://user-images.githubusercontent.com/36719307/108952185-6ff96580-76ac-11eb-9528-14ed9e4de730.PNG)
![git_사진_게시글생성](https://user-images.githubusercontent.com/36719307/108953144-0c703780-76ae-11eb-906e-92990b0c5e68.PNG)
![git_사진_게시글수정](https://user-images.githubusercontent.com/36719307/108952135-6243e000-76ac-11eb-91e6-0eb518d34df6.PNG)
![git_사진_게시글삭제](https://user-images.githubusercontent.com/36719307/108952152-653ed080-76ac-11eb-880b-b781855fbfdf.PNG)
![git_사진_게시글검색](https://user-images.githubusercontent.com/36719307/108953267-480b0180-76ae-11eb-969e-f572549e3205.PNG)

> - 게시판의 기본이 되는 CRUD 기능이 구현되어 있습니다. 또한 검색을 통하여 게시글을 찾을 수 있습니다.

* ### 페이징 기능

![git_사진_페이징1](https://user-images.githubusercontent.com/36719307/108956589-4ee84300-76b3-11eb-82e1-2f624ede4806.PNG)
![git_사진_페이징2](https://user-images.githubusercontent.com/36719307/108956593-50b20680-76b3-11eb-9984-a03a550971a4.PNG)

> - 스터디/강의 게시판의 경우 한 페이지에 최대 10개의 게시글이 표시되도록 하였으며 10개 초과시 페이징 처리 되도록 구현하였습니다.


* ### 탭 기능

![git_사진_탭1](https://user-images.githubusercontent.com/36719307/108956785-a090cd80-76b3-11eb-87d2-f8d7970d9e01.PNG)
![git_사진_탭2](https://user-images.githubusercontent.com/36719307/108956788-a1c1fa80-76b3-11eb-8672-272fd96fda62.PNG)
![git_사진_탭3](https://user-images.githubusercontent.com/36719307/108956779-9ec70a00-76b3-11eb-9731-16a9225e0c2d.PNG)

> - 강의 게시글 상세페이지에서는 탭 기능을 구현하여 페이지의 이동 없이 여러 페이지의 화면을 볼 수 있도록 하였습니다.
























