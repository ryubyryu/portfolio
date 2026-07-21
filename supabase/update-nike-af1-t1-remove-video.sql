-- NIKE AIR FORCE 1 x T1 갤러리에서 video를 제거하고 8장 균등 4x2 그리드로 전환합니다.
-- mp4 파일을 스토리지에서 삭제하실 예정이라 함께 반영합니다.
-- 이 SQL을 실행해야 실제 사이트에도 반영돼요 (급하지 않지만, mp4 삭제 전에 실행해주시면 깨진 링크가 안 남아요).

update works set gallery = '[
  {
    "columns": 4,
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
