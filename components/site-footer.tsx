import { siteConfig } from "@/lib/site-config";

export default function SiteFooter() {
  return (
    <footer className="border-t border-line">
      <div className="mx-auto flex max-w-5xl flex-col gap-3 px-6 py-8 text-sm text-stone sm:flex-row sm:items-center sm:justify-between sm:px-8">
        <span>
          © {new Date().getFullYear()} {siteConfig.name}
        </span>
        <div className="flex gap-5">
          <a href={`mailto:${siteConfig.email}`} className="hover:text-ink">
            {siteConfig.email}
          </a>
          {siteConfig.social.map((item) => (
            <a
              key={item.href}
              href={item.href}
              target="_blank"
              rel="noopener noreferrer"
              className="hover:text-ink"
            >
              {item.label}
            </a>
          ))}
        </div>
      </div>
    </footer>
  );
}
