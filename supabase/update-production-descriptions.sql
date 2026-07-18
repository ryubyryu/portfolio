-- 지난번 마이그레이션(update-production-content.sql)의 UPDATE 문들이 라이브 DB에
-- 반영되지 않은 것으로 확인되어 다시 보내드리는 스크립트입니다. Content 항목 추가는
-- 포함하지 않고, Production 31건의 title/description만 TVCF 원문에 맞게 교정합니다.
-- SQL Editor에서 실행하세요.

update works set title = '메르세데스 벤츠 서비스', description = array['동행(Go Together)'] where slug = 'benz-service';
update works set description = array['맑은피부', '동안피부'] where slug = 'lg-prael';
update works set description = array['피부감도'] where slug = 'ohui-first-genature';
update works set description = array['제습', '냉방', '난방', '공기청정'] where slug = 'lg-hwisen-thinq';
update works set description = array['세상 위에 빛나다'] where slug = 'whoo-cheongidan';
update works set description = array['순환의 힘'] where slug = 'whoo-bichup';
update works set description = array['빛의 시그니처'] where slug = 'ohui-first-ample';
update works set description = array['창립 20주년 세일 20년만의 기회'] where slug = 'lotte-himart-20th';
update works set description = array['캔을 따', '캔을 따 Full', '캔을 따 인터뷰', '동원이도 캔을 따!'] where slug = 'dongwon-tuna';
update works set description = array['음~ 왜 이제 왔어요'] where slug = 'kanu-vanilla-latte';
update works set description = array['우리나라 유산균 듀오락', '우리나라 유산균 듀오락 2'] where slug = 'duolac';
update works set description = array['오너 스토리 종합', '오너 스토리 티저', '오너 스토리 신태윤', '오너 스토리 김택', '오너 스토리 전용훈', '오너 스토리 정규영'] where slug = 'porsche-911-timeless-machine';
update works set description = array['가치', '언박싱 디자인', '언박싱 맛', '범퍼A', '범퍼B', '범퍼C'] where slug = 'kanu-signature';
update works set description = array['본'] where slug = 'pizza-alvolo';
update works set description = array['당신이 바라던 식기세척기 - TVC', '당신이 바라던 식기세척기 - 디지털'] where slug = 'samsung-bespoke-dishwasher';
update works set description = array['나홀로이식당_외국어ver', '나홀로이식당_치팅데이', '나홀로이식당_식단관리'] where slug = 'ranking-dak';
update works set description = array['종합', '안성기', '유지태'] where slug = 'jungkwanjang-2020';
update works set description = array['건강 총동원'] where slug = 'dongwon-gift-set';
update works set summary = '혜리, 정우성이 출연한 모바일 게임 광고.', description = array['티저', '티저 - 혜리', '티저 - 정우성', '혜리', '정우성'] where slug = 'sos-state-of-survival';
update works set description = array['햄맛챔피온리챔 15초', '햄맛챔피온리챔 30초'] where slug = 'richam';
update works set description = array['10초면 찢기에 충분해 (15s_A)'] where slug = 'denmark-pocket-cheese';
update works set description = array['김이나의 Kitchen for You'] where slug = 'samsung-bespoke-induction';
update works set description = array['나에게 부드러워지는 시간'] where slug = 'maxim-white-gold';
update works set description = array['함께 가는 친구, 롯데'] where slug = 'lotte-group';
update works set description = array['익스프레스 라이더', '익스프레스 속도'] where slug = 'yogiyo-express';
update works set description = array['더 뉴 타이칸 : Seoul, Electrified', 'Seoul, electrified : 티저', '영혼의 전율'] where slug = 'porsche-taycan';
update works set description = array['제자리:한석규', '제자리:김성령', '정관장물:정몰'] where slug = 'jungkwanjang-2021';
update works set description = array['홈트', '배달음식'] where slug = 'nature-made';
update works set description = array['녹두Song 캠페인'] where slug = 'beplain';
update works set description = array[
  '나를 위한 케어레시피', '골든루트 밀크시슬(feat.간건강)', '코어 비타민B 플러스(feat.활력)', '프로바이오틱스(feat.장건강)',
  '알티지 알래스카 오메가3(feat.혈액순환)', '슈퍼크리티컬 루테인(feat.눈건강)', '나를 위한 케어 레시피2', '카마디 엑스투(feat.뼈건강)'
] where slug = 'myallri';
update works set description = array['독서의 기준'] where slug = 'woongjin-bookclub';
