-- 새 Content 항목 "bibigo : MINGYU's bibigo Restaurant"를 추가합니다.

insert into works (slug, title, category, year, role, client, summary, description, cover_image, links)
values (
  'bibigo-gyustaurant',
  'bibigo : MINGYU''s bibigo Restaurant',
  'Content',
  2026,
  'Copywriter',
  'CJ제일제당',
  'CJ제일제당의 글로벌 K-푸드 브랜드 비비고와 세븐틴이 함께한 글로벌 캠페인의 후속 콘텐츠 〈비비고 규스토랑〉. 세븐틴 민규가 비비고 제품을 활용한 메뉴와 조리법을 소개하는 글로벌 SNS 콘텐츠를 기획·제작했다.',
  array[
    'CJ제일제당의 글로벌 K-푸드 브랜드 비비고와 세븐틴이 함께한 글로벌 캠페인의 후속 콘텐츠 〈비비고 규스토랑〉 제작.',
    '세븐틴 민규가 비비고 제품을 활용한 다양한 메뉴와 조리법을 소개하며,
CJ더마켓 라이브커머스 공개에 맞춰 글로벌 팬들을 위한 SNS 콘텐츠를 기획·제작했다.',
    '레시피 소개를 비롯해 비하인드 영상, 밸런스 게임 등 다양한 부가 콘텐츠를 통해
브랜드 경험을 소셜 콘텐츠로 확장하며 팬들과의 접점을 넓혔다.'
  ],
  'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20GYUstaurant/0.jpeg',
  '[
    {"label":"bibigo.global @INSTAGRAM","url":"https://www.instagram.com/bibigo.global/"},
    {"label":"bibigo.global @X","url":"https://x.com/bibigoGlobal"}
  ]'::jsonb
)
on conflict (slug) do update set
  title = excluded.title,
  category = excluded.category,
  year = excluded.year,
  role = excluded.role,
  client = excluded.client,
  summary = excluded.summary,
  description = excluded.description,
  cover_image = excluded.cover_image,
  links = excluded.links;
