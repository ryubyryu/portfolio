import Link from "next/link";
import { getWorks } from "@/lib/works";
import { siteConfig } from "@/lib/site-config";
import HeroBackground from "@/components/hero-background";

export default async function Home() {
  const works = await getWorks();

  return (
    <section className="relative min-h-screen w-full overflow-hidden">
      <HeroBackground />

      <div className="relative flex min-h-screen flex-col justify-between px-6 py-6 sm:px-10 sm:py-8">
        <div className="flex items-start justify-between">
          <span className="font-display text-lg font-bold tracking-wide text-white">
            {siteConfig.name}
          </span>

          <nav className="grid grid-cols-[auto_auto] gap-x-10 gap-y-1.5 text-sm text-white/90">
            <Link href="/works" className="col-start-1 row-start-1 transition-colors hover:text-white">
              Works
            </Link>
            <Link
              href="/contact"
              className="col-start-2 row-start-1 justify-self-end transition-colors hover:text-white"
            >
              Contact
            </Link>
            <Link href="/projects" className="col-start-1 row-start-2 transition-colors hover:text-white">
              Projects
            </Link>
            <Link href="/about" className="col-start-1 row-start-3 transition-colors hover:text-white">
              About
            </Link>
          </nav>
        </div>

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
