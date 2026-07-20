-- 노루페인트 포스터챌린지 gallery 순서 조정 및 featured 포스터 이미지 제거.
-- Supabase 대시보드 SQL Editor에서 실행하세요.

update works set gallery = '[
  {
    "heading":"Campaign Microsite",
    "images":[{"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NOROO%20POSTER%20CHALLENGE/1.avif","width":1300,"height":590}]
  },
  {
    "heading":"Poster Making Process",
    "images":[{"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NOROO%20POSTER%20CHALLENGE/2.avif","width":1314,"height":594}]
  },
  {
    "heading":"User-Generated Images",
    "images":[{"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NOROO%20POSTER%20CHALLENGE/gallery.avif","width":1214,"height":714}]
  },
  {
    "heading":"Market Installation",
    "images":[{"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NOROO%20POSTER%20CHALLENGE/4.avif","width":1206,"height":1752}]
  }
]'::jsonb where slug = 'noroo-poster-challenge';
