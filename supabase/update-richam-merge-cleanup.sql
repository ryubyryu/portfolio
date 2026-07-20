-- 동원 선물세트를 리챔에 합치고, 내용 없는 Paper House/Still Room을 삭제하는
-- 1회성 스크립트입니다. SQL Editor에서 실행하세요.

update works
set
  summary = '"햄맛챔피온리챔"과 "건강 총동원" 선물세트를 함께 소구한 캠페인.',
  description = array['햄맛챔피온리챔 15초', '햄맛챔피온리챔 30초', '건강 총동원'],
  images = array[
    'https://tvcf.co.kr/play/ah11122-805614',
    'https://tvcf.co.kr/play/bh11041-805613',
    'https://tvcf.co.kr/play/ah15767-802772'
  ]
where slug = 'richam';

delete from works
where slug in ('dongwon-gift-set', 'paper-house', 'still-room');
