import type { Metadata } from "next";
import { siteConfig } from "@/lib/site-config";
import SiteHeader from "@/components/site-header";

export const metadata: Metadata = {
  title: "About",
};

// TODO: 실제 약력/스킬/이력으로 교체
const experience = [
  { period: "2023 — Present", title: "Freelance Designer & Developer" },
  { period: "2021 — 2023", title: "Product Designer, Example Studio" },
];

const skills = ["Brand Identity", "Web Design", "Next.js / React", "Typography"];

export default function AboutPage() {
  return (
    <>
      <SiteHeader />
      <div className="mx-auto max-w-3xl px-6 py-16 sm:px-8">
        <h1 className="mb-8 font-display text-3xl text-ink">About</h1>
        <p className="max-w-[65ch] text-lg leading-relaxed text-ink-soft">
          {siteConfig.name}은(는) {siteConfig.role}입니다. 브랜드와 웹을 넘나들며
          절제된 형태로 메시지를 전달하는 작업을 합니다.
        </p>

        <section className="mt-14 border-t border-line pt-10">
          <h2 className="mb-5 font-mono text-xs uppercase tracking-widest text-stone">
            Experience
          </h2>
          <ul className="space-y-4">
            {experience.map((item) => (
              <li key={item.title} className="flex flex-wrap gap-x-4 gap-y-1">
                <span className="font-mono text-xs text-stone">{item.period}</span>
                <span className="text-ink">{item.title}</span>
              </li>
            ))}
          </ul>
        </section>

        <section className="mt-14 border-t border-line pt-10">
          <h2 className="mb-5 font-mono text-xs uppercase tracking-widest text-stone">
            Skills
          </h2>
          <ul className="flex flex-wrap gap-2">
            {skills.map((skill) => (
              <li
                key={skill}
                className="rounded-full bg-tag-bg px-3 py-1 text-sm text-ink-soft"
              >
                {skill}
              </li>
            ))}
          </ul>
        </section>
      </div>
    </>
  );
}
