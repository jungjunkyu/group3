# java_jih
## 자바 수업 저장소입니다.
### git 연습중입니다.

오라클 jdk
이클립스
설치후 환경변수설정  내컴퓨터 속성 환경변수 검색 시스템 환경변수
-> 시스템 변수 path 수정 새로만들기 C:\Program Files\Java\jdk-20\bin
이클립스 한글 꺠질떄 RUN->RUN configrations -> common -> other -> MS949입력->확인

클론 : 원래저장소(github 에서 만든 저장소)에 있는 내용들을 로컬 저장소에 복제

커밋 : 변경 이력을 현재 사용중인 로컬 저장소에 남김 파일들이 변경 (추가/수정/삭제/이동/이름이변경)

푸쉬 : 현재 저장소에서 새로 추가된 변경이력들을 원래 저장소에 추가

풀 : 원격 저장소에 있는 변경이력들을 가져옴

패치 오리진

gitignore : git으로 올리지 않을 파일들을 설정해주는 파일

    
	[변수 명명 관례]
		변수명의 첫 글자는 소문자로 시작
		여러 단어로 된 경우 두번쨰 단어부터 첫글자만 대문자로(카멜표기법)
		- totalCount
		상수는 대문자로 하며, 단어 구분을 _로 함
		- MAX_AGE
		클래스 명의 첫 글자는 대문자로 시작


	[변수, 상수, 리터럴]
		변수 - 하나의 값을 저장하는 공간
		상수 - 값을 저장 후 수정할 수 없는 공간(한번만 저장)
		리터럴 - 그 자체로 값을 의미

		int score = 95;
		- score : 변수 , 95 : 리터럴
		final int MAX_AGE = 100; //선언과 동시에 반드시 초기화 하는것이 좋다.
		-MAX_AGE : 상수, 100 : 리터럴
	[문자열]
		문자열 + 기본형 => 문자열
		기본형 + 문자열 => 문자열
		"abc" + 1 => "abc1"
		1 + "abc" => "1abc"
		"abc"+1+2=>"abc12"
		1+2+"abc"=>"3abc"
		-> 1 +2 를 먼저 한 후 "abc"와 더함

	[오버플로우]
		정수 변수가 표현할 수 있는 정수의 범위를 넘어서 의도했던 값과
		다르게 나오는 현상으로 양수에서 음수로 될 떄
		
		byte num = 127;
		b=b+1; // -128이 저장

		위 코드에서 b에는 -128이 저장
		byte는 저장 가능한 최대 정수 127에 1을 더하면 128이 아닌 -128이됨(128은 byte로 표현불가능)

	[언더플로우]
		음수에서 양수로 되는 현상
		byte num =-128;
		b = b-1; //127이 저장
		위 코드에서 b에는 127이 저장
		byte는 저장 가능한 최소 정수 -128에 1을 빼면 127이 됨(-129는 byte로 표현이 불가능)

	[형변환]
		값을 다른 자료형(변수타입)으로 변환하는 것
		boolean을 제외한 기본형은 변환 가능
		자동 자료형 변환
			알아서 변환이 되는 경우
		강제(명시적) 자료형 변환
			자동으로 일어나지 않거나 필요에 의해 강제로 변환해야 하는 경우

	[자동 자료형변환]
		정수(byte, short, int, long)를 실수(float, double)로 변환하는 경우
		문자(char)를 정수(int, long)으로 변환하는 경우
		바이트가 작은 자료형보다 큰 자료형으로 변하는 경우 자료형 변환이 일어남

		byte num1 = 1;
		int num2 = num1;
		char ch = 'A';
		num2 = ch;
		double num3 =num2;
		long num4 = 1;//1은 int

	[강제 자료형 변환]
		실수를 정수로 변환하는경우
		현재 자료형의 바이트보다 작은 바이트를 가진경우
		자동 자료형 변환이 일어나지만 필요에 의한 경우
		변환하고자 하는 변수/리터럴/상수 앞에 (변환하려는 자료형)을 써 줌
		int num1 = (int)3.14;
		int num2 = (int)123L; //접미사 L이 붙으면 숫자 크기에 상관없이 롱타입

과제
콘솔에서 정수 2개와 문자(산술연산자)를 입력받아 출력하는 코드를 작성하세요
예 :
두 정수와 산술연산자를 입력하세요 (예:1 +2)
출력 1+2

두 정수를 입력받아 두 정수의 산술 연산 결과를 출력하는 코드를 작성하세요. 단, 2번째 숫자는 0이 아님.

예:
두 정수를 입력하세요.
1 2 [엔터]
1+2 =3
1 - 2= -1
1  * 2 = 2
1 / 2 = 0.5
1 % 2 = 1

선생님 주소 https://github.com/st8324/java_0530

[비교관계 연산자]
>, < , >= , <= , == ,!=
항을 같은 타입으로 변환 후 비교

문자열은 == 로 비교하면 안됨 : 문법적으로는 에러가 발생하지 앉지만
두 문자열이 같은지 다를지를 제대로 비교하진 않음
-str1 과 str2에 리터럴 문자열 abc가 저장된 경우는 ==로 판별이 됨
-str1과 str2가 Scanner를 통해 입력받은 문자열 abc인 경우는 ==로 판별이 안됨
-str1.equals(str2);<비교방법 equals();를 이용한다

day3.homwork
성별(m:남성,w여성)을 입력받아 여성인지 확인하는 코드
조건 연산자 이용
package : day3.homwork file : ex1_conditional
input gender :
m
are you a women? false

성별(M:남성,W:여성)를 입력받아 M이면 남성을, W이면 여성을 출력하는 코드를 작성하세요. if문 이용
(package : day3.homework, file : Ex2_if) 
input gender : 
M
Are you a women? man

input gender : 
W
Are you a women? woman

day4 과제
정수 num가 짝수이면 num에 2를 나누고, 정수 num가 홀수이면 num에 1을 더한 후, num를 출력하는 코드를 작성하세요.
(package : day4.homework, file : NumberEx)
두 정수를 입력받아 두 정수 중 큰 수를 출력하는 코드를 작성하세요.
(package : day4.homework, file : MaxEx)
세 변의 길이를 정수로 입력받아 세 변으로 삼각형을 만들 수 있는지 확인하는 코드를 작성하세요.
(package : day4.homework, file : TriangleEx)
세 변 중 작은 두 변의 길이의 합이 큰 변보다 커야 삼각형을 만들 수 있다.
input 3 integer num : 
1 2 3 
Unable to create triangle.
input 3 integer num : 
2 2 3 
Able to create triangle.
국어, 영어, 수학 성적을 입력받아 평균을 출력하는 코드를 작성하세요.
(package : day4.homework, file : ScoreAverageEx)
성적은 정수.

[메서드 오버로딩]
동일한 이름의 메소드가 여러개인 경우를 메서드 오버로딩이라고함.

매개변수가 다른데 기능은 같은 경우 메서드 오버로딩을 지원하지 않으면 같은 기능에서 이름만 다른 메서드가 여러개 만들어짐

조건 (결론 : 매게변수가 다름)
1. 매게변수의 개수가 다름
2. 매게변수의 타입이 다름

예:

System.out.println(1);//printlnInt
System.out.println("1")://printlnString
