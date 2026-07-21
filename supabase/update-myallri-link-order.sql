-- 마이올리 링크 순서를 "나를 위한 케어레시피 편" 바로 다음에
-- "나를 위한 케어 레시피 2편"이 오도록 재정렬합니다.
-- 급하지 않아요 — 편하실 때 실행해주세요.

update works set
  description = array[
    '마이올리 : 나를 위한 케어레시피 편', '마이올리 : 나를 위한 케어 레시피 2편',
    '마이올리 : 골든루트 밀크시슬 (feat.간건강) 편', '마이올리 : 코어 비타민B 플러스 (feat.활력) 편',
    '마이올리 : 프로바이틱스 (feat.장건강) 편', '마이올리 : 알티지 알래스카 오메가3 (feat.혈액순환) 편',
    '마이올리 : 슈퍼크리티컬 루테인 (feat.눈건강) 편', '마이올리 : 카마디 엑스투 (feat.뼈건강) 편'
  ],
  images = array['https://tvcf.co.kr/play/ah03047-845538', 'https://tvcf.co.kr/play/ah25605-850770', 'https://tvcf.co.kr/play/bh03443-845543', 'https://tvcf.co.kr/play/bh03281-845541', 'https://tvcf.co.kr/play/ah13209-845540', 'https://tvcf.co.kr/play/ah14962-850362', 'https://tvcf.co.kr/play/ah24809-850360', 'https://tvcf.co.kr/play/bh15043-850363']
where slug = 'myallri';
