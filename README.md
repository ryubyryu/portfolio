# Portfolio

Next.js(App Router) + TypeScript + Tailwind CSS 기반 포트폴리오 사이트.
`lib/site-config.ts`에서 이름/소개/연락처를 수정하고, `lib/works.ts`의 목데이터를
실제 프로젝트로 교체하며 개발합니다.

## 개발

```bash
npm install
npm run dev
```

http://localhost:3000 에서 확인합니다.

## 구조

- `app/` — 라우트 (Home, Works, Work Detail, About, Contact)
- `components/` — 공용 UI 컴포넌트
- `lib/works.ts` — Works 데이터 레이어 (현재 목데이터, Supabase 연동 시 이 파일의
  함수 내부만 교체하면 됩니다)
- `lib/site-config.ts` — 이름/소개/연락처 등 사이트 기본 정보
- `supabase/schema.sql` — Supabase에 연결할 때 실행할 테이블 스키마

## Supabase 연동

1. [supabase.com](https://supabase.com)에서 프로젝트 생성
2. SQL Editor에서 `supabase/schema.sql` 실행
3. `.env.local.example`을 `.env.local`로 복사 후 프로젝트 URL/anon key 입력
4. `lib/works.ts`의 `getWorks`/`getWorkBySlug`를 Supabase 쿼리로 교체

## 배포

GitHub 저장소를 Vercel에 연결하면 push할 때마다 자동 배포됩니다. Supabase를
연동했다면 Vercel 프로젝트 환경변수에도 동일한 `NEXT_PUBLIC_SUPABASE_URL` /
`NEXT_PUBLIC_SUPABASE_ANON_KEY`를 등록하세요.
