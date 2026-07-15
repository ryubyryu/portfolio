import Link from "next/link";
import { siteConfig } from "@/lib/site-config";

export default function SiteHeader() {
  return (
    <header className="border-b border-line">
      <div className="mx-auto flex max-w-5xl items-center justify-between px-6 py-5 sm:px-8">
        <Link
          href="/"
          className="font-display text-lg tracking-tight text-ink"
        >
          {siteConfig.name}
        </Link>
        <nav className="flex gap-6 font-mono text-xs uppercase tracking-widest text-stone">
          {siteConfig.nav.map((item) => (
            <Link
              key={item.href}
              href={item.href}
              className="transition-colors hover:text-ink"
            >
              {item.label}
            </Link>
          ))}
        </nav>
      </div>
    </header>
  );
}
