import type { Metadata } from "next";
import WorkThumb from "@/components/work-thumb";

export const metadata: Metadata = {
  title: "Projects",
};

// TODO: 실제 개인/사이드 프로젝트가 정해지면 목록으로 교체 (현재는 레이아웃 샘플 1건)
const projects = [
  { slug: "sample-proposition", date: "2025.04.01", title: "Sample Proposition" },
];

export default function ProjectsPage() {
  return (
    <div className="px-6 py-16 sm:px-10 sm:py-20">
      <h1 className="mb-8 font-body text-lg font-bold text-ink">Projects</h1>
      <div className="space-y-10">
        {projects.map((project) => (
          <div key={project.slug} className="max-w-md">
            <WorkThumb
              slug={project.slug}
              title={project.title}
              className="aspect-video"
              sizes="(min-width: 640px) 448px, 100vw"
            />
            <div className="mt-3 font-mono text-xs text-stone">{project.date}</div>
            <div className="mt-1 text-sm text-ink">{project.title}</div>
          </div>
        ))}
      </div>
    </div>
  );
}
