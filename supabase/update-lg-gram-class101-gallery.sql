-- LG gram X CLASS101에 3x3 갤러리, Event Microsite 이미지, 링크를 반영합니다.
-- 급하지 않아요 (새 컬럼이 필요 없는 변경) — 편하실 때 Supabase SQL Editor에서 실행해주세요.

update works set links = '[{"label":"EVENT MICROSITE 바로가기","url":"https://class101.net/ko/products/638f178f86a5d10015f627cc"}]'::jsonb where slug = 'lg-gram-class101';

update works set gallery = '[
  {
    "heading":"LG gram 360 x CLASS101 feat. Libere_Nuage",
    "columns":3,
    "images":[
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20X%20CLASS101/1.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20X%20CLASS101/2.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20X%20CLASS101/3.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20X%20CLASS101/4.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20X%20CLASS101/5.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20X%20CLASS101/6.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20X%20CLASS101/7.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20X%20CLASS101/8.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20X%20CLASS101/9.avif","width":1713,"height":964}
    ]
  },
  {
    "heading":"Event Microsite",
    "images":[{"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/LG%20gram%20X%20CLASS101/sub1.avif","width":1112,"height":506}]
  }
]'::jsonb where slug = 'lg-gram-class101';
