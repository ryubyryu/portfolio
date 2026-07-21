-- Production 30개 항목 링크 라벨을 "브랜드/캠페인 : 컷명 편" 형식으로 통일합니다.
-- 동원참치는 4번째 링크(캔을 따!)를 제거하고, 덴마크 인 포켓치즈는 링크 2개를 추가합니다.
-- 급하지 않아요 — 편하실 때 실행해주세요.

update works set description = array['LG 프라엘 : 맑은피부 편', 'LG 프라엘 : 동안피부 편'] where slug = 'lg-prael';

update works set description = array['오휘 더 퍼스트 제너츄어 : 피부감도 편'] where slug = 'ohui-first-genature';

update works set description = array['LG 휘센 인공지능스스로에어컨 ThinQ : 제습 편', 'LG 휘센 인공지능스스로에어컨 ThinQ : 냉방 편', 'LG 휘센 인공지능스스로에어컨 ThinQ : 난방 편', 'LG 휘센 인공지능스스로에어컨 ThinQ : 공기청정 편'] where slug = 'lg-hwisen-thinq';

update works set description = array['후 천기단 화현 에센스 쿠션 : 세상 위에 빛나다 편'] where slug = 'whoo-cheongidan';

update works set description = array['메르세데스 벤츠 서비스 : 동행(Go Together) 편'] where slug = 'benz-service';

update works set description = array['후 비첩 순환 에센스 : 순환의 힘 편'] where slug = 'whoo-bichup';

update works set description = array['오휘 더 퍼스트 앰플 : 빛의 시그니처 편'] where slug = 'ohui-first-ample';

update works set description = array['롯데하이마트 : 창립 20주년 세일 20년만의 기회 편'] where slug = 'lotte-himart-20th';

update works set
  description = array['동원참치 : 캔을 따 편', '동원참치 : 캔을 따 Full 편', '동원참치 : 캔을 따 인터뷰 편'],
  images = array['https://tvcf.co.kr/play/ah23363-780048', 'https://tvcf.co.kr/play/ah24207-780160', 'https://tvcf.co.kr/play/bh14278-780161']
where slug = 'dongwon-tuna';

update works set description = array['카누 바닐라 라떼 : 음~ 왜 이제 왔어요 편'] where slug = 'kanu-vanilla-latte';

update works set description = array['듀오락 : 우리나라 유산균 듀오락 편', '듀오락 : 우리나라 유산균 듀오락 2편'] where slug = 'duolac';

update works set description = array[
  '포르쉐 : 911 Timeless Machine_오너 스토리 종합 편', '포르쉐 : 911 Timeless Machine_오너 스토리 티저 편', '포르쉐 : 911 Timeless Machine_오너 스토리 신태윤 편',
  '포르쉐 : 911 Timeless Machine_오너 스토리 김택 편', '포르쉐 : 911 Timeless Machine_오너 스토리 전용훈 편', '포르쉐 : 911 Timeless Machine_오너 스토리 정규영 편'
] where slug = 'porsche-911-timeless-machine';

update works set description = array['가치', '카누 시그니처 : 언박싱 디자인 편', '카누 시그니처 : 언박싱 맛 편', '카누 시그니처 : 범퍼 A', '카누 시그니처 : 범퍼 B', '카누 시그니처 : 범퍼 C'] where slug = 'kanu-signature';

update works set description = array['피자알볼로 : 본 편'] where slug = 'pizza-alvolo';

update works set description = array['삼성 비스포크 식기세척기 : 당신이 바라던 식기세척기 - TVC 편', '삼성 비스포크 식기세척기 : 당신이 바라던 식기세척기 - 디지털 편'] where slug = 'samsung-bespoke-dishwasher';

update works set description = array['랭킹닭컴 : 나홀로이식당_외국어ver 편', '랭킹닭컴 : 나홀로이식당_치팅데이 편', '랭킹닭컴 : 나홀로이식당_식단관리 편'] where slug = 'ranking-dak';

update works set description = array['정관장 : 종합 편', '정관장 : 안성기 편', '정관장 : 유지태 편'] where slug = 'jungkwanjang-2020';

update works set description = array['S.O.S : 스테이트 오브 서바이벌 : 티저 편', 'S.O.S : 스테이트 오브 서바이벌 : 티저 - 혜리 편', 'S.O.S : 스테이트 오브 서바이벌 : 티저 편 - 정우성 편', 'S.O.S : 스테이트 오브 서바이벌 : 혜리 편', 'S.O.S : 스테이트 오브 서바이벌 : 정우성 편'] where slug = 'sos-state-of-survival';

update works set description = array['리챔 : 햄맛 챔피온 리챔 15초 편', '리챔 : 햄맛 챔피온 리챔 30초 편', '동원 선물세트 : 건강 총동원 편'] where slug = 'richam';

update works set
  description = array['덴마크 인 포켓치즈 : 10초면 찢기에 충분해 (15s_A) 편', '덴마크 인 포켓치즈 : 10초면 찢기에 충분해 (15s_B) 편', '덴마크 인 포켓치즈 : 10초면 찢기에 충분해 (full) 편'],
  images = array['https://tvcf.co.kr/play/bh17286-806591', 'https://tvcf.co.kr/play/ah17367-806592', 'https://tvcf.co.kr/play/ah27205-806590']
where slug = 'denmark-pocket-cheese';

update works set description = array['삼성 비스포크 인덕션 : 김이나의 Kitchen for You 편'] where slug = 'samsung-bespoke-induction';

update works set description = array['맥심 화이트골드 : 나에게 부드러워지는 시간 편'] where slug = 'maxim-white-gold';

update works set description = array['롯데그룹 : 함께 가는 친구, 롯데 편'] where slug = 'lotte-group';

update works set description = array['요기요 : 익스프레스 라이더 편', '요기요 : 익스프레스 속도 편'] where slug = 'yogiyo-express';

update works set description = array['포르쉐 : 더 뉴 타이칸 : Seoul, Electrified 편', '포르쉐 : 더 뉴 타이칸 : Seoul, Electrified : 티저 편', '포르쉐 : 더 뉴 타이칸 : 영혼의 전율 편'] where slug = 'porsche-taycan';

update works set description = array['정관장 : 제자리 - 한석규 편', '정관장 : 제자리 - 김성령 편', '정관장 : 제자리 - 정몰 편'] where slug = 'jungkwanjang-2021';

update works set description = array['네이처 메이드 : 홈트 편', '네이처 메이드 : 배달음식 편'] where slug = 'nature-made';

update works set description = array['비플레인 : 녹두Song 캠페인 편'] where slug = 'beplain';

update works set description = array[
  '마이올리 : 나를 위한 케어레시피 편', '마이올리 : 골든루트 밀크시슬 (feat.간건강) 편',
  '마이올리 : 코어 비타민B 플러스 (feat.활력) 편', '마이올리 : 프로바이틱스 (feat.장건강) 편',
  '마이올리 : 알티지 알래스카 오메가3 (feat.혈액순환) 편', '마이올리 : 슈퍼크리티컬 루테인 (feat.눈건강) 편',
  '마이올리 : 나를 위한 케어 레시피 2편', '마이올리 : 카마디 엑스투 (feat.뼈건강) 편'
] where slug = 'myallri';

update works set description = array['웅진북클럽 : 독서의 기준 편'] where slug = 'woongjin-bookclub';
