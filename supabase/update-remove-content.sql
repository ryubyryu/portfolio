-- 이전 마이그레이션(update-production-content.sql)에서 추가했던 2022.06.03 이후
-- Content(Copywriter) 항목 13건을 되돌리는 1회성 스크립트. Production(Producer) 항목은
-- 건드리지 않습니다. SQL Editor에서 실행하세요.

delete from works
where slug in (
  'kleenex-clean-together', 'kleenex-ultraclean', 'kakao-pr-campaign',
  'nike-rhr', 'nike-well-collective', 'nike-style-story', 'nike-3style',
  'nike-airmax-dn', 'nike-fitting-room', 'lotteria-thanks-burger',
  'lg-gram-vi-beop', 'lg-gram-go-ai-2024', 'gshock-iconic-styles'
);
