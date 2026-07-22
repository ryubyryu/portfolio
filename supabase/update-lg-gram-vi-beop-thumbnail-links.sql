-- LG gram VI법 영상 썸네일(Teaser, EP01~08) 클릭 시 해당 TVCF 링크로 이동하도록 links 배열을 추가합니다.

update works set gallery = jsonb_set(
  gallery,
  '{1,links}',
  '[
    "https://tvcf.co.kr/play/bh07658-973485",
    "https://tvcf.co.kr/play/bh12431-970127",
    "https://tvcf.co.kr/play/bh12795-970131",
    "https://tvcf.co.kr/play/ah12886-970132",
    "https://tvcf.co.kr/play/ah15221-970658",
    "https://tvcf.co.kr/play/ah11265-972014",
    "https://tvcf.co.kr/play/bh11538-972017",
    "https://tvcf.co.kr/play/ah23604-972040",
    "https://tvcf.co.kr/play/ah04686-972852"
  ]'::jsonb
)
where slug = 'lg-gram-vi-beop';
