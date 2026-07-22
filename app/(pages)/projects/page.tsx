import type { Metadata } from "next";

export const metadata: Metadata = {
  title: "Projects",
};

// TODO: Works와 별도로 다룰 개인/사이드 프로젝트가 정해지면 실제 목록으로 교체
export default function ProjectsPage() {
  return (
    <div className="mx-auto w-full max-w-3xl px-6 py-16 sm:px-8">
      <h1 className="mb-8 font-display text-3xl text-ink">Projects</h1>
      <p className="max-w-[65ch] text-lg leading-relaxed text-ink-soft">
        준비 중입니다.
      </p>
    </div>
  );
}
