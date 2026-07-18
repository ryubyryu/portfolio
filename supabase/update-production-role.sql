-- TVCF 포트폴리오 기준으로 추가한 Production 캠페인 31건의 role을
-- 'Copywriter'에서 'Producer'로 정정하는 1회성 스크립트.
-- SQL Editor에서 실행하세요.

update works
set role = 'Producer'
where slug in (
  'lg-prael', 'ohui-first-genature', 'lg-hwisen-thinq', 'whoo-cheongidan',
  'benz-service', 'whoo-bichup', 'ohui-first-ample', 'lotte-himart-20th',
  'dongwon-tuna', 'kanu-vanilla-latte', 'duolac', 'porsche-911-timeless-machine',
  'kanu-signature', 'pizza-alvolo', 'samsung-bespoke-dishwasher', 'ranking-dak',
  'jungkwanjang-2020', 'dongwon-gift-set', 'sos-state-of-survival', 'richam',
  'denmark-pocket-cheese', 'samsung-bespoke-induction', 'maxim-white-gold',
  'lotte-group', 'yogiyo-express', 'porsche-taycan', 'jungkwanjang-2021',
  'nature-made', 'beplain', 'myallri', 'woongjin-bookclub'
);
