-- 아직 실제 자료가 업로드되지 않은 Campaign/Content 목업 항목 22건을 삭제하는
-- 1회성 스크립트. Production 항목은 건드리지 않습니다. SQL Editor에서 실행하세요.

delete from works
where slug in (
  'quiet-mark', 'field-notes', 'low-tide', 'index-type',
  'placeholder-07', 'placeholder-09', 'placeholder-10', 'placeholder-11',
  'placeholder-13', 'placeholder-14', 'placeholder-15', 'placeholder-17',
  'placeholder-18', 'placeholder-19', 'placeholder-21', 'placeholder-22',
  'placeholder-23', 'placeholder-25', 'placeholder-26', 'placeholder-27',
  'placeholder-29', 'placeholder-30'
);
