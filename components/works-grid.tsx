"use client";

import { useMemo, useState } from "react";
import Link from "next/link";
import type { Work } from "@/lib/works";
import WorkThumb from "@/components/work-thumb";

export default function WorksGrid({
  works,
  categories,
}: {
  works: Work[];
  categories: string[];
}) {
  const [active, setActive] = useState<string>("All");

  const filtered = useMemo(
    () => (active === "All" ? works : works.filter((w) => w.category === active)),
    [works, active]
  );

  return (
    <div>
      <div className="mb-10 flex flex-wrap gap-x-6 gap-y-2 font-mono text-xs uppercase tracking-widest text-stone">
        {["All", ...categories].map((category) => (
          <button
            key={category}
            onClick={() => setActive(category)}
            className={`transition-colors hover:text-ink ${
              active === category ? "text-ink" : ""
            }`}
            aria-pressed={active === category}
          >
            {category}
          </button>
        ))}
      </div>

      <div className="grid gap-x-6 gap-y-10 sm:grid-cols-2 lg:grid-cols-3">
        {filtered.map((work) => (
          <Link key={work.slug} href={`/works/${work.slug}`} className="group">
            <WorkThumb
              slug={work.slug}
              title={work.title}
              className="aspect-[4/5] transition-opacity group-hover:opacity-90"
            />
            <div className="mt-3 flex items-baseline justify-between">
              <span className="text-sm text-ink">{work.title}</span>
              <span className="font-mono text-xs text-stone">
                {work.category} · {work.year}
              </span>
            </div>
          </Link>
        ))}
      </div>
    </div>
  );
}
