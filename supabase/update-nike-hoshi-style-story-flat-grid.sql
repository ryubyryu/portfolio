-- NIKE HOSHI'S STYLE STORY 갤러리를 균등 4x2 그리드로 변경합니다.
-- (타이틀 카드로 취급하던 1번/11번 이미지도 특별 취급 없이 그리드에 포함)
-- 급하지 않아요 — 편하실 때 실행해주세요.

update works set gallery = '[
  {
    "heading": "NIKE SVT HOSHI''S STYLE STORY",
    "columns": 4,
    "images": [
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/1.avif","width":688,"height":1224},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/2.avif","width":688,"height":1224},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/3.avif","width":688,"height":1224},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/4.avif","width":688,"height":1224},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/5.avif","width":688,"height":1224},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/6.avif","width":688,"height":1224},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/7.avif","width":688,"height":1224},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/8.avif","width":688,"height":1224}
    ]
  },
  {
    "heading": "NIKE VOMERO5 STYLE WITH SVT HOSHI",
    "columns": 4,
    "images": [
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/11.avif","width":688,"height":1224},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/12.avif","width":688,"height":1224},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/13.avif","width":688,"height":1224},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/14.avif","width":688,"height":1224},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/15.avif","width":688,"height":1224},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/16.avif","width":688,"height":1224},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/17.avif","width":688,"height":1224},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/18.avif","width":688,"height":1224}
    ]
  }
]'::jsonb where slug = 'nike-hoshi-style-story';
