-- 지금 사이트에 있는 목데이터를 그대로 옮겨 심는 시드 스크립트.
-- schema.sql을 먼저 실행한 뒤, SQL Editor에서 이 파일을 실행하세요.
-- 이후 Supabase Table Editor에서 직접 값을 실제 프로젝트로 바꿔도 됩니다.

insert into works (slug, title, category, year, role, client, summary, description, sort_order)
values
  (
    'quiet-mark', 'Quiet Mark', 'Campaign', 2025, 'Brand Identity', 'Quiet Mark Studio',
    '절제된 타이포그래피를 중심으로 한 스튜디오 브랜드 아이덴티티.',
    array[
      '로고, 타이포그래피 시스템, 명함/봉투 등 기본 응용 세트를 설계했습니다.',
      '브랜드의 절제된 톤을 유지하기 위해 컬러는 흑백 두 가지로 제한했습니다.'
    ],
    0
  ),
  (
    'paper-house', 'Paper House', 'Production', 2025, 'Web Design & Development', 'Paper House',
    '종이 질감을 모티프로 한 소규모 출판사 웹사이트.',
    array[
      'Next.js 기반으로 개발했고, 여백과 스크롤 리듬에 신경 썼습니다.',
      '출간 도서 아카이브를 그리드 형태로 정리했습니다.'
    ],
    1
  ),
  (
    'field-notes', 'Field Notes', 'Content', 2024, 'Editorial Design', null,
    '여행 저널 매거진의 지면 레이아웃 디자인.',
    array[
      '이미지와 텍스트의 비율을 페이지마다 다르게 구성해 리듬을 만들었습니다.',
      '그리드는 12컬럼을 기본으로 하되 필요한 곳에서만 깨뜨렸습니다.'
    ],
    2
  ),
  (
    'low-tide', 'Low Tide', 'Content', 2024, 'Photography', null,
    '해안 마을을 기록한 개인 사진 시리즈.',
    array[
      '이른 아침과 늦은 오후, 빛이 낮게 깔리는 시간대만 골라 촬영했습니다.'
    ],
    3
  ),
  (
    'index-type', 'Index Type', 'Campaign', 2023, 'Type Design & Identity', 'Index',
    '커스텀 서체를 기반으로 한 편집 스튜디오 아이덴티티.',
    array[
      '숫자와 라벨이 많은 편집 작업 특성에 맞춰 고정폭 유틸리티 서체를 함께 설계했습니다.'
    ],
    4
  ),
  (
    'still-room', 'Still Room', 'Production', 2023, 'Web Design & Development', null,
    '가구 브랜드의 제품 아카이브 웹사이트.',
    array[
      '제품 하나하나를 큰 이미지로 보여주는 데 집중한 미니멀 커머스 페이지입니다.'
    ],
    5
  ),
  -- 아래는 그리드/페이지네이션 레이아웃 확인용 임시 목업 항목입니다.
  -- 실제 작업물이 준비되면 Table Editor에서 값을 바꾸거나 삭제하세요.
  (
    'placeholder-07', 'Placeholder Work 07', 'Campaign', 2022, 'Brand Identity', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    6
  ),
  (
    'placeholder-08', 'Placeholder Work 08', 'Production', 2022, 'Web Design & Development', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    7
  ),
  (
    'placeholder-09', 'Placeholder Work 09', 'Content', 2021, 'Editorial Design', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    8
  ),
  (
    'placeholder-10', 'Placeholder Work 10', 'Content', 2021, 'Photography', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    9
  ),
  (
    'placeholder-11', 'Placeholder Work 11', 'Campaign', 2021, 'Brand Identity', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    10
  ),
  (
    'placeholder-12', 'Placeholder Work 12', 'Production', 2020, 'Web Design & Development', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    11
  ),
  (
    'placeholder-13', 'Placeholder Work 13', 'Content', 2020, 'Editorial Design', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    12
  ),
  (
    'placeholder-14', 'Placeholder Work 14', 'Content', 2020, 'Photography', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    13
  ),
  (
    'placeholder-15', 'Placeholder Work 15', 'Campaign', 2019, 'Brand Identity', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    14
  ),
  (
    'placeholder-16', 'Placeholder Work 16', 'Production', 2019, 'Web Design & Development', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    15
  ),
  (
    'placeholder-17', 'Placeholder Work 17', 'Content', 2019, 'Editorial Design', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    16
  ),
  (
    'placeholder-18', 'Placeholder Work 18', 'Content', 2019, 'Photography', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    17
  ),
  (
    'placeholder-19', 'Placeholder Work 19', 'Campaign', 2018, 'Brand Identity', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    18
  ),
  (
    'placeholder-20', 'Placeholder Work 20', 'Production', 2018, 'Web Design & Development', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    19
  ),
  (
    'placeholder-21', 'Placeholder Work 21', 'Content', 2018, 'Editorial Design', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    20
  ),
  (
    'placeholder-22', 'Placeholder Work 22', 'Content', 2018, 'Photography', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    21
  ),
  (
    'placeholder-23', 'Placeholder Work 23', 'Campaign', 2017, 'Brand Identity', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    22
  ),
  (
    'placeholder-24', 'Placeholder Work 24', 'Production', 2017, 'Web Design & Development', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    23
  ),
  (
    'placeholder-25', 'Placeholder Work 25', 'Content', 2017, 'Editorial Design', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    24
  ),
  (
    'placeholder-26', 'Placeholder Work 26', 'Content', 2017, 'Photography', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    25
  ),
  (
    'placeholder-27', 'Placeholder Work 27', 'Campaign', 2016, 'Brand Identity', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    26
  ),
  (
    'placeholder-28', 'Placeholder Work 28', 'Production', 2016, 'Web Design & Development', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    27
  ),
  (
    'placeholder-29', 'Placeholder Work 29', 'Content', 2016, 'Editorial Design', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    28
  ),
  (
    'placeholder-30', 'Placeholder Work 30', 'Content', 2016, 'Photography', null,
    '임시로 추가된 목업 콘텐츠입니다.',
    array['실제 작업물로 교체될 예정입니다.'],
    29
  )
on conflict (slug) do nothing;
