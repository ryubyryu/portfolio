import Link from "next/link";
import { getWorks } from "@/lib/works";
import { siteConfig } from "@/lib/site-config";
import WorkThumb from "@/components/work-thumb";

export default async function Home() {
  const works = await getWorks();
  const featured = works.slice(0, 3);

  return (
    <div className="mx-auto max-w-5xl px-6 sm:px-8">
      <section className="flex min-h-[70vh] flex-col justify-center gap-6 py-20">
        <p className="font-mono text-xs uppercase tracking-widest text-stone">
          {siteConfig.role}
        </p>
        <h1 className="max-w-2xl text-balance font-display text-4xl leading-tight text-ink sm:text-6xl">
          {siteConfig.tagline}
        </h1>
        <Link
          href="/works"
          className="mt-4 w-fit font-mono text-sm text-indigo underline underline-offset-4 hover:text-ink"
        >
          View Works →
        </Link>
      </section>

      <section className="border-t border-line py-16">
        <div className="mb-8 flex items-baseline justify-between">
          <h2 className="font-display text-xl text-ink">Selected Works</h2>
          <Link
            href="/works"
            className="font-mono text-xs uppercase tracking-widest text-stone hover:text-ink"
          >
            All Works
          </Link>
        </div>
        <div className="grid gap-6 sm:grid-cols-3">
          {featured.map((work) => (
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
      </section>
    </div>
  );
}
