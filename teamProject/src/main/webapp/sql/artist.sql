-- 아티스트
CREATE TABLE artist (
	eng_name varchar2(20),
	kor_name varchar2(20),
	head_img varchar2(4000)
);

SELECT * FROM artist;

-- 아티스트 텍스트 정보
CREATE TABLE artist_info (
	eng_name varchar2(20),
	info varchar2(4000)		
);

INSERT INTO artist_info values('KWON Yong Rae', 'null');

DELETE artist_info WHERE eng_name='KANG Hyung Koo';

SELECT * FROM artist_info;

-- DROP TABLE artist_info purge;

-- 아티스트 -> 최근 작품
CREATE TABLE artist_featured_works (
	eng_name varchar2(20),
	featured_works varchar2(2000)	-- 최근 작품들
);

INSERT INTO artist_featured_works values('KANG Hyung Koo', 'https://static.wixstatic.com/media/520ee6_f0259c4dfca04c17990bf2e85c75fb80~mv2_d_3492_5304_s_4_2.jpg/v1/fill/w_1264,h_1014,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/520ee6_f0259c4dfca04c17990bf2e85c75fb80~mv2_d_3492_5304_s_4_2.jpg');
INSERT INTO artist_featured_works values('KANG Hyung Koo', 'https://static.wixstatic.com/media/520ee6_e4b1c7d6a4ca4519b757e5b02275e51b~mv2.jpg/v1/fill/w_1264,h_1014,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/520ee6_e4b1c7d6a4ca4519b757e5b02275e51b~mv2.jpg');
INSERT INTO artist_featured_works values('KANG Hyung Koo', 'https://static.wixstatic.com/media/520ee6_0af2da4f566c4abbbff1463a530bb6b6~mv2.jpg/v1/fill/w_1264,h_1014,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/520ee6_0af2da4f566c4abbbff1463a530bb6b6~mv2.jpg');
INSERT INTO artist_featured_works values('KANG Hyung Koo', 'https://static.wixstatic.com/media/520ee6_47fa905d6d864b07867a822773e60338~mv2.jpg/v1/fill/w_1264,h_1014,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/520ee6_47fa905d6d864b07867a822773e60338~mv2.jpg');

--INSERT INTO artist_featured_works values('KWON Yong Rae', 'https://static.wixstatic.com/media/520ee6_20d0923f99a7490e8bae927ac7cbf3ea~mv2.jpg/v1/fill/w_1346,h_1080,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/520ee6_20d0923f99a7490e8bae927ac7cbf3ea~mv2.jpg');
--INSERT INTO artist_featured_works values('KWON Yong Rae', 'https://static.wixstatic.com/media/520ee6_9dcc891b59c94c57ace572b86f548993~mv2.jpg/v1/fill/w_1346,h_1080,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/520ee6_9dcc891b59c94c57ace572b86f548993~mv2.jpg');
--INSERT INTO artist_featured_works values('KWON Yong Rae', 'https://static.wixstatic.com/media/520ee6_bb99daad7dba41b8acfdfa930139210c~mv2.jpg/v1/fill/w_1346,h_1080,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/520ee6_bb99daad7dba41b8acfdfa930139210c~mv2.jpg');
--INSERT INTO artist_featured_works values('KWON Yong Rae', 'https://static.wixstatic.com/media/520ee6_e86d0e34a8304b97b00984400a63bd4e~mv2.jpg/v1/fill/w_1346,h_1080,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/520ee6_e86d0e34a8304b97b00984400a63bd4e~mv2.jpg');
--INSERT INTO artist_featured_works values('KWON Yong Rae', 'https://static.wixstatic.com/media/520ee6_2028d85769b7483d9b15109ea31533bf~mv2.jpg/v1/fill/w_1346,h_1080,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/520ee6_2028d85769b7483d9b15109ea31533bf~mv2.jpg');

SELECT * FROM artist_featured_works;

-- DROP TABLE artist_featured_works purge;

--아티스트 -> 전시회 중복제거
CREATE TABLE artist_exhibitions (
	eng_name varchar2(20),
	exhibitions_title varchar2(20) PRIMARY KEY
);

INSERT INTO artist_exhibitions values('KANG Hyung Koo', 'Eye to Eye');
INSERT INTO artist_exhibitions values('KANG Hyung Koo', 'Look Into');

--INSERT INTO artist_exhibitions values('KWON Yong Rae', 'Utopia: now here');
--INSERT INTO artist_exhibitions values('KWON Yong Rae', 'Garden of Light');

SELECT * FROM artist_exhibitions;

DELETE artist_exhibitions WHERE exhibitions_title='Garden of Light';

-- DROP TABLE artist_exhibitions purge;

-- 아티스트 -> 전시회 -> 전시회 정보
CREATE TABLE artist_exhibitions_info (
	title varchar2(20),			-- 전시회 제목
	term varchar2(30),			-- 전시 기간
	works varchar2(2000)		-- 전시 작품들
);

INSERT INTO artist_exhibitions_info values('Eye to Eye', '2020.09.24 - 2020.12.31', 'https://static.wixstatic.com/media/520ee6_472bd05acfc84e23a2ef60bbb08b9041~mv2.jpg');
INSERT INTO artist_exhibitions_info values('Eye to Eye', '2020.09.24 - 2020.12.31', 'https://static.wixstatic.com/media/520ee6_1a86b64489b549949ca4037eb1bd3130~mv2.jpg');
INSERT INTO artist_exhibitions_info values('Eye to Eye', '2020.09.24 - 2020.12.31', 'https://static.wixstatic.com/media/520ee6_3f94af67cffc47b9bab1550793b91edb~mv2.jpg');
INSERT INTO artist_exhibitions_info values('Eye to Eye', '2020.09.24 - 2020.12.31', 'https://static.wixstatic.com/media/520ee6_e12ff510dad14d41b73bdc8bc7a5e162~mv2.jpg');

INSERT INTO artist_exhibitions_info values('Look Into', '2020.07.02 - 2020.09.18', 'https://static.wixstatic.com/media/520ee6_25cfc99125ed4e72b470e2e6cacc073c~mv2.jpg');
INSERT INTO artist_exhibitions_info values('Look Into', '2020.07.02 - 2020.09.18', 'https://static.wixstatic.com/media/520ee6_5b0158d720884fa2a413f876de7d4524~mv2.jpg');
INSERT INTO artist_exhibitions_info values('Look Into', '2020.07.02 - 2020.09.18', 'https://static.wixstatic.com/media/520ee6_81a2943f35644965abd28f53cf1fc491~mv2.jpg');
INSERT INTO artist_exhibitions_info VALUES('Look Into', '2020.07.02 - 2020.09.18', 'https://static.wixstatic.com/media/520ee6_b59c1559850043fb955a611646668b45~mv2.jpg');

--INSERT INTO artist_exhibitions_info VALUES('Utopia: now here', '2021.08.19 - 2021.09.16', 'https://static.wixstatic.com/media/520ee6_fb09b9d12fd64a93ba43529a4ac9b4fb~mv2.png');
--INSERT INTO artist_exhibitions_info VALUES('Utopia: now here', '2021.08.19 - 2021.09.16', 'https://static.wixstatic.com/media/520ee6_f1fce60ae4824a75bfd4a054a09a98a4~mv2.png');
--INSERT INTO artist_exhibitions_info VALUES('Utopia: now here', '2021.08.19 - 2021.09.16', 'https://static.wixstatic.com/media/520ee6_efa089d541be4066b8d8825bbd843a04~mv2.jpg');
--INSERT INTO artist_exhibitions_info VALUES('Utopia: now here', '2021.08.19 - 2021.09.16', 'https://static.wixstatic.com/media/520ee6_827c5188e05e4ce3a3163f9560d9deb0~mv2.jpg');

SELECT * FROM artist_exhibitions_info;

SELECT * FROM artist_exhibitions WHERE eng_name='KANG Hyung Koo';

SELECT DISTINCT title, term FROM artist_exhibitions WHERE eng_name='KANG Hyung Koo' ORDER BY term desc;

-- DROP TABLE artist_exhibitions_info purge;

-- 아티스트 -> 뉴스
CREATE TABLE artist_exhibitions_news (
	exhibitions_title varchar2(20),	-- 전시회 제목
	exhibitions_term varchar2(30), 	-- 전시회 기간
	news_date varchar2(30),			-- 뉴스 등록일
	news_title varchar2(100),		-- 뉴스 제목
	news_img varchar2(4000),		-- 뉴스 이미지
	news_href varchar2(2000)			-- 뉴스 링크
);

INSERT INTO artist_exhibitions_news VALUES ('Eye to Eye', '2020.09.24 - 2020.12.31', '2020-09-17', '뉴시스 / ... 갤러리BK 강형구 ''마법''', 'https://static.wixstatic.com/media/520ee6_23ed8a86acb04ffc847442f97dc899a6~mv2.jpg', 'https://newsis.com/view/?id=NISX20200917_0001169993&cID=10701&pID=10700');

INSERT INTO artist_exhibitions_news VALUES ('Look Into', '2020.07.02 - 2020.09.18',  '2020-08-29', 'W Korea / 갤러리 가는 길', 'https://static.wixstatic.com/media/520ee6_2d1bf5ed9c5048ce84f937160595912a~mv2.jpg', 'https://www.wkorea.com/2020/08/29/%ea%b0%a4%eb%9f%ac%eb%a6%ac-%ea%b0%80%eb%8a%94-%ea%b8%b8/?utm_source=naver&utm_medium=partnership');
INSERT INTO artist_exhibitions_news VALUES ('Look Into', '2020.07.02 - 2020.09.18',  '2020-07-31', '​Forbes Korea/ 정형모가 들려주는 예술가의 안목과  통찰(18) 초상화가 강형구', 'https://static.wixstatic.com/media/520ee6_0c0f2c2d50544fffbbd7debb9e9f1e40~mv2.jpg', 'http://jmagazine.joins.com/forbes/view/330851');
INSERT INTO artist_exhibitions_news VALUES ('Look Into', '2020.07.02 - 2020.09.18',  '2020-07-22', 'Asia Today/ 강형구의 ‘Audrey’', 'https://static.wixstatic.com/media/520ee6_e4b1c7d6a4ca4519b757e5b02275e51b~mv2.jpg', 'https://www.asiatoday.co.kr/view.php?key=20200722010013088');
INSERT INTO artist_exhibitions_news VALUES ('Look Into', '2020.07.02 - 2020.09.18',  '2020-06-22', 'KOREA ART TV/ 강형구 특별개관전 ‘Look Into’ 갤러리비케이', 'https://static.wixstatic.com/media/520ee6_2d1bf5ed9c5048ce84f937160595912a~mv2.jpg', 'http://www.koreaarttv.com/detail.php?number=57455');
INSERT INTO artist_exhibitions_news VALUES ('Look Into', '2020.07.02 - 2020.09.18',  '2020-06-16', '아트 코리아 방송/ 2020 Gallery BK – Look Into 강형구 특별개관전', 'https://static.wixstatic.com/media/520ee6_2d1bf5ed9c5048ce84f937160595912a~mv2.jpg', 'http://www.artkoreatv.com/news/articleView.html?idxno=65506');

SELECT * FROM  artist_exhibitions_news;

SELECT * FROM  artist_exhibitions_news WHERE exhibitions_title='Look Into';

--DROP TABLE artist_exhibitions_news purge;