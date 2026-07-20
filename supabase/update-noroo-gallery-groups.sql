-- 노루페인트 포스터챌린지 gallery를 그룹(헤딩+이미지) 구조로 재구성합니다.
-- 반드시 이 코드가 배포된 직후 바로 실행해주세요 (실행 전까지는 빌드가 실패합니다).

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
    "images":[{"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NOROO%20POSTER%20CHALLENGE/4.avif","width":1206,"height":1752}]
  },
  {
    "heading":"User-Generated Images",
    "images":[
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NOROO%20POSTER%20CHALLENGE/gallery2.avif","width":676,"height":676},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/NOROO%20POSTER%20CHALLENGE/gallery.avif","width":1214,"height":714}
    ]
  }
]'::jsonb where slug = 'noroo-poster-challenge';
