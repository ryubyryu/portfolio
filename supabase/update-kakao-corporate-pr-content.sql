-- 카카오 기업 PR 캠페인에 수상 내역(stats), 3x3 갤러리, 유튜브 링크를 추가합니다.
-- 기존 컬럼(stats, gallery, links)만 사용하는 UPDATE라 배포 실패 위험은 없지만,
-- 이 SQL을 실행해야 실제 사이트에 반영돼요.

update works set stats = '[
  {"label":"Date","value":"October 2023"},
  {"label":"Category","value":"Campaign Film"},
  {"label":"Awards","value":"A.N.D. Award Grand Prix 2023 (디지털 광고 캠페인 부문 대기업 분야)"},
  {"label":"Awards","value":"A.N.D. Award Winner 2023 (디지털 광고 캠페인 부문 IT서비스 분야)"}
]'::jsonb where slug = 'kakao-corporate-pr';

update works set gallery = '[
  {
    "columns": 3,
    "images": [
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/KAKAO%20CORP.%20PR%20CAMPAIGN/1.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/KAKAO%20CORP.%20PR%20CAMPAIGN/2.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/KAKAO%20CORP.%20PR%20CAMPAIGN/3.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/KAKAO%20CORP.%20PR%20CAMPAIGN/4.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/KAKAO%20CORP.%20PR%20CAMPAIGN/5.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/KAKAO%20CORP.%20PR%20CAMPAIGN/6.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/KAKAO%20CORP.%20PR%20CAMPAIGN/7.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/KAKAO%20CORP.%20PR%20CAMPAIGN/8.avif","width":1713,"height":964},
      {"url":"https://llwbqewucexzruxdgveq.supabase.co/storage/v1/object/public/work-images/work-campaign/KAKAO%20CORP.%20PR%20CAMPAIGN/9.avif","width":1713,"height":964}
    ]
  }
]'::jsonb where slug = 'kakao-corporate-pr';

update works set links = '[
  {"label":"1cm² 속 보이지 않는 카카오의 노력 🔍 | 365일 24시간 카톡을 지키는 사람들","url":"https://www.youtube.com/watch?v=ro_6M5qc604&t=41s"}
]'::jsonb where slug = 'kakao-corporate-pr';
