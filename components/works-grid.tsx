"use client";

import { useMemo, useState } from "react";
import Link from "next/link";
import type { Work } from "@/lib/works";
import WorkThumb from "@/components/work-thumb";

const PAGE_SIZE = 12;

export default function WorksGrid({
  works,
  categories,
}: {
  works: Work[];
  categories: string[];
}) {
  const [active, setActive] = useState<string>("All");
  const [page, setPage] = useState(1);

  const filtered = useMemo(
    () => (active === "All" ? works : works.filter((w) => w.category === active)),
    [works, active]
  );

  const pageCount = Math.max(1, Math.ceil(filtered.length / PAGE_SIZE));
  const currentPage = Math.min(page, pageCount);
  const paged = filtered.slice(
    (currentPage - 1) * PAGE_SIZE,
    currentPage * PAGE_SIZE
  );

  function selectCategory(category: string) {
    setActive(category);
    setPage(1);
  }

  return (
    <div>
      <div className="mb-10 flex flex-wrap gap-x-6 gap-y-2 font-mono text-xs uppercase tracking-widest text-stone">
        {["All", ...categories].map((category) => (
          <button
            key={category}
            onClick={() => selectCategory(category)}
            className={`transition-colors hover:text-ink ${
              active === category ? "text-ink" : ""
            }`}
            aria-pressed={active === category}
          >
            {category}
          </button>
        ))}
      </div>

      <div className="grid gap-x-6 gap-y-10 sm:grid-cols-3 lg:grid-cols-6">
        {paged.map((work) => (
          <Link key={work.slug} href={`/works/${work.slug}`} className="group">
            <WorkThumb
              slug={work.slug}
              title={work.title}
              className="aspect-[4/5] transition-opacity group-hover:opacity-90"
            />
            <div className="mt-3">
              <div className="text-sm text-ink">{work.title}</div>
              <div className="font-mono text-xs text-stone">
                {work.category} · {work.year}
              </div>
            </div>
          </Link>
        ))}
      </div>

      {pageCount > 1 && (
        <div className="mt-14 flex items-center justify-end gap-x-4 font-mono text-xs text-stone">
          <button
            onClick={() => setPage((p) => Math.max(1, p - 1))}
            disabled={currentPage === 1}
            aria-label="이전 페이지"
            className="transition-colors hover:text-ink disabled:opacity-30 disabled:hover:text-stone"
          >
            &lt;
          </button>
          {Array.from({ length: pageCount }, (_, i) => i + 1).map((n) => (
            <button
              key={n}
              onClick={() => setPage(n)}
              aria-current={n === currentPage ? "page" : undefined}
              className={`transition-colors hover:text-ink ${
                n === currentPage ? "text-ink" : ""
              }`}
            >
              {n}
            </button>
          ))}
          <button
            onClick={() => setPage((p) => Math.min(pageCount, p + 1))}
            disabled={currentPage === pageCount}
            aria-label="다음 페이지"
            className="transition-colors hover:text-ink disabled:opacity-30 disabled:hover:text-stone"
          >
            &gt;
          </button>
        </div>
      )}
    </div>
  );
}
