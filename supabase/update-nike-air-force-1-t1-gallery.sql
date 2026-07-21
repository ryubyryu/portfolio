-- NIKE : AIR FORCE 1 x T1에 영상+이미지 그리드 갤러리와 인스타그램 링크를 추가합니다.
-- 기존 컬럼(gallery, links)만 사용하는 UPDATE라 배포 실패 위험은 없지만, 이 SQL을
-- 실행해야 실제 사이트에 갤러리와 링크가 보여요.

update works set gallery = '[
  {
    "columns": 4,
    "video": {
      "url": "https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIR%20FORCE%201%20x%20T1/0.mp4",
      "width": 720,
      "height": 1280
    },
    "images": [
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIR%20FORCE%201%20x%20T1/1.avif","width":688,"height":1224},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIR%20FORCE%201%20x%20T1/2.avif","width":688,"height":1224},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIR%20FORCE%201%20x%20T1/3.avif","width":688,"height":1224},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIR%20FORCE%201%20x%20T1/4.avif","width":688,"height":1224},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIR%20FORCE%201%20x%20T1/5.avif","width":688,"height":1224},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIR%20FORCE%201%20x%20T1/6.avif","width":688,"height":1224},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIR%20FORCE%201%20x%20T1/7.avif","width":688,"height":1224},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/NIKE%20AIR%20FORCE%201%20x%20T1/8.avif","width":688,"height":1224}
    ]
  }
]'::jsonb where slug = 'nike-air-force-1-t1';

update works set links = '[
  {"label":"NIKE : AIR FORCE 1 x T1 @NIKESEOUL ON INSTAGRAM","url":"https://www.instagram.com/p/Cr16BB3BLna/"}
]'::jsonb where slug = 'nike-air-force-1-t1';
