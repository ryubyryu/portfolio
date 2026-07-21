-- LG gram GO in Busan에 3x3 갤러리(1~9.avif)를 추가합니다.
-- 급하지 않아요 — 편하실 때 실행해주세요.

update works set gallery = '[
  {
    "columns": 3,
    "images": [
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20in%20Busan/1.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20in%20Busan/2.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20in%20Busan/3.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20in%20Busan/4.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20in%20Busan/5.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20in%20Busan/6.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20in%20Busan/7.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20in%20Busan/8.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20GO%20in%20Busan/9.avif","width":1713,"height":964}
    ]
  }
]'::jsonb where slug = 'lg-gram-go-busan';
