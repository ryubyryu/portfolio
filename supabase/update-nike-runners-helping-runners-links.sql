-- NIKE Runners Helping Runners: 갤러리 제목 수정 + 영상 링크 3개 추가.
-- 참고: 이전에 보내드린 update-nike-runners-helping-runners-gallery.sql을 실행했든 안 했든
-- 이 파일 하나로 최종 상태가 맞춰집니다 (gallery, links 모두 덮어씀).
-- 급하지 않아요 — 편하실 때 실행해주세요.

update works set gallery = '[
  {
    "heading":"NIKE RUNNERS HELPING RUNNERS (Feat. RYU JUNYEOL)",
    "columns":3,
    "images":[
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/1.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/2.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/3.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/4.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/5.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/6.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/7.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/8.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/9.avif","width":1713,"height":964}
    ]
  },
  {
    "heading":"NIKE A RUNNER GUIDE with RYU JUN YEOL",
    "columns":3,
    "images":[
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/10.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/11.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/12.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/13.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/14.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/15.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/16.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/17.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NIKE%20-%20RUNNERS%20HELPING%20RUNNERS/18.avif","width":1713,"height":964}
    ]
  }
]'::jsonb where slug = 'nike-runners-helping-runners';

update works set links = '[
  {"label":"NIKE : 러너스 헬핑 러너스 - 류준열 편","url":"https://tvcf.co.kr/play/bh16394-901571"},
  {"label":"NIKE : 러너스 헬핑 러너스 - 러너 가이드 편","url":"https://tvcf.co.kr/play/ah26303-901570"},
  {"label":"NIKE : 러너스 헬핑 러너스 - 러너 가이드 편 (세로)","url":"https://tvcf.co.kr/play/bh24594-900751"}
]'::jsonb where slug = 'nike-runners-helping-runners';
