-- TVCF 실제 영상 페이지에서 가져온 썸네일 이미지 URL을 Production 캠페인 31건의
-- cover_image에 반영하는 1회성 스크립트. 캠페인당 가장 이른 날짜의 컷을 대표 이미지로
-- 사용했습니다. SQL Editor에서 실행하세요.

update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000358/A0003585631C89.jpg' where slug = 'lg-prael';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000361/A000361963071C.jpg' where slug = 'ohui-first-genature';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000363/A000363620C0E2.jpg' where slug = 'lg-hwisen-thinq';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000364/A000364828CCC8.jpg' where slug = 'whoo-cheongidan';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000369/A0003697882565.jpg' where slug = 'benz-service';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000369/A0003697334437.jpg' where slug = 'whoo-bichup';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000374/A000374065BF22.jpg' where slug = 'ohui-first-ample';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000395/A000395640C4C0.jpg' where slug = 'lotte-himart-20th';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000401/A000401676F9A1.jpg' where slug = 'dongwon-tuna';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000402/A000402120C1F1.jpg' where slug = 'kanu-vanilla-latte';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000404/A0004041601064.jpg' where slug = 'duolac';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000405/A000405404EC29.jpg' where slug = 'porsche-911-timeless-machine';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000406/A0004067366FBD.jpg' where slug = 'kanu-signature';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000409/A000409849737C.jpg' where slug = 'pizza-alvolo';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000412/A000412187D985.jpg' where slug = 'samsung-bespoke-dishwasher';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000414/A0004141238722.jpg' where slug = 'ranking-dak';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000417/A00041755917AA.jpg' where slug = 'jungkwanjang-2020';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000418/A000418779860C.jpg' where slug = 'dongwon-gift-set';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000419/A000419157B67C.jpg' where slug = 'sos-state-of-survival';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000421/A000421108866F.jpg' where slug = 'richam';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000422/A0004220445AD3.jpg' where slug = 'denmark-pocket-cheese';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000423/A0004231617C27.jpg' where slug = 'samsung-bespoke-induction';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000423/A000423111E5E6.jpg' where slug = 'maxim-white-gold';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000423/A000423202B160.jpg' where slug = 'lotte-group';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000424/A000424490E806.jpg' where slug = 'yogiyo-express';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000424/A000424675E088.jpg' where slug = 'porsche-taycan';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000429/A0004294034F74.jpg' where slug = 'jungkwanjang-2021';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000430/A0004302297F37.jpg' where slug = 'nature-made';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000450/A00045015209fd.jpg' where slug = 'beplain';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000454/A000454832345C.jpg' where slug = 'myallri';
update works set cover_image = 'https://nmedia.tvcf.co.kr/media/print/0000454/A000454349D3B0.jpg' where slug = 'woongjin-bookclub';

-- "정관장물:정몰" 표기 오타를 "정관장몰:정몰"로 수정
update works set description = array['제자리:한석규', '제자리:김성령', '정관장몰:정몰'] where slug = 'jungkwanjang-2021';
