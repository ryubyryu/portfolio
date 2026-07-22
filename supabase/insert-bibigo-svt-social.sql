-- 새 Content 항목 "bibigo x SEVENTEEN" 소셜 캠페인을 추가합니다.

insert into works (slug, title, category, year, role, client, summary, description, cover_image)
values (
  'bibigo-svt-social',
  'bibigo x SEVENTEEN : SOCIAL CONTENT',
  'Content',
  2025,
  'Copywriter',
  'CJ제일제당',
  'CJ제일제당의 글로벌 K-푸드 브랜드 비비고와 세븐틴이 함께한 글로벌 캠페인. 비비고 글로벌 SNS 채널 @bibigo.global의 인스타그램 및 X 콘텐츠를 기획·제작했다.',
  array[
    'CJ제일제당의 글로벌 K-푸드 브랜드 비비고와 세븐틴이 함께한 글로벌 캠페인.',
    '캠페인 콘셉트를 기반으로 비비고 글로벌 SNS 채널 @bibigo.global의 인스타그램 및 X 콘텐츠를 기획·제작
브랜드 필름과 마이크로사이트 bibigo HOUSE의 비주얼 에셋을 활용해
캠페인 메시지를 소셜 콘텐츠 전반에 일관되게 적용하며 글로벌 팬들과의 접점을 확장했다.'
  ],
  'https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-content/bibigo%20-%20SVT%20Social/0.jpeg'
)
on conflict (slug) do update set
  title = excluded.title,
  category = excluded.category,
  year = excluded.year,
  role = excluded.role,
  client = excluded.client,
  summary = excluded.summary,
  description = excluded.description,
  cover_image = excluded.cover_image;
