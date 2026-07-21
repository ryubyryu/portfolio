-- 카카오 기업 PR 캠페인 stats에서 Date/Category 항목을 제거하고 Awards만 남깁니다.
-- 급하지 않아요 — 편하실 때 실행해주세요.

update works set stats = '[
  {"label":"Awards","value":"A.N.D. Award Grand Prix 2023 (디지털 광고 캠페인 부문 대기업 분야)"},
  {"label":"Awards","value":"A.N.D. Award Winner 2023 (디지털 광고 캠페인 부문 IT서비스 분야)"}
]'::jsonb where slug = 'kakao-corporate-pr';
