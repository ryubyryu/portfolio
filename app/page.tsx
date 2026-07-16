import Link from "next/link";
import { getWorks } from "@/lib/works";
import { siteConfig } from "@/lib/site-config";
import HeroBackground from "@/components/hero-background";
import SiteNav from "@/components/site-nav";

export default async function Home() {
  const works = await getWorks();

  return (
    <section className="relative min-h-screen w-full overflow-hidden">
      <HeroBackground />

      <div className="relative flex min-h-screen flex-col justify-between px-6 py-6 sm:px-10 sm:py-8">
        <SiteNav name={siteConfig.name} theme="dark" />

        <div className="max-w-sm text-sm leading-relaxed text-white/85">
          {works.map((work) => (
            <Link
              key={work.slug}
              href={`/works/${work.slug}`}
              className="block py-0.5 transition-colors hover:text-white"
            >
              {work.title}, {work.client ?? work.category}, {work.year}
            </Link>
          ))}
          <Link
            href="/works"
            className="mt-3 inline-block underline underline-offset-4 transition-colors hover:text-white"
          >
            More
          </Link>
        </div>
      </div>
    </section>
  );
}
