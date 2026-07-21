-- NIKE HOSHI'S STYLE STORY에 갤러리 2세트(타이틀 이미지 + 7장 그리드)와
-- 인스타그램 링크 2개를 추가합니다.
-- 기존 컬럼(gallery, links)만 사용하는 UPDATE라 배포 실패 위험은 없지만, 이 SQL을
-- 실행해야 실제 사이트에 보여요.

update works set gallery = '[
  {
    "heading": "NIKE SVT HOSHI''S STYLE STORY",
    "columns": 4,
    "feature": {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/1.avif","width":688,"height":1224},
    "images": [
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
    "feature": {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20HOSHI%27S%20STYLE%20STORY/11.avif","width":688,"height":1224},
    "images": [
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

update works set links = '[
  {"label":"NIKE : SVT HOSHI''S STYLE STORY @NIKESEOUL ON INSTAGRAM","url":"https://www.instagram.com/p/C0Ali2rPFHd/"},
  {"label":"NIKE : VOMERO5 STYLE WITH SVT HOSHI @NIKESEOUL ON INSTAGRAM","url":"https://www.instagram.com/p/C0SmJQhhY-t/"}
]'::jsonb where slug = 'nike-hoshi-style-story';
