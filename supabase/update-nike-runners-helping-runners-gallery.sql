-- NIKE Runners Helping Runners에 3x3 갤러리 2개를 반영합니다.
-- 급하지 않아요 — 편하실 때 실행해주세요.

update works set gallery = '[
  {
    "heading":"NIKE RUNNERS HELPING RUNNERS Feat. RYU JUN YEOL",
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
