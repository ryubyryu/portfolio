import type { Metadata } from "next";
import { siteConfig } from "@/lib/site-config";

export const metadata: Metadata = {
  title: "Contact",
};

const channels = [
  {
    label: "Email",
    value: siteConfig.email,
    href: `mailto:${siteConfig.email}`,
  },
  ...siteConfig.social.map((item) => ({
    label: item.label,
    value: item.href,
    href: item.href,
  })),
];

export default function ContactPage() {
  return (
    <div className="px-6 py-16 sm:px-10 sm:py-20">
      <section className="max-w-4xl">
        <h1 className="mb-8 font-body text-lg font-bold text-ink">Contact</h1>

        <ul className="space-y-2 text-xs tracking-tight">
          {channels.map((item) => (
            <li key={item.label} className="flex items-baseline gap-x-3">
              <span className="w-16 shrink-0 font-mono text-stone">
                {item.label}
              </span>
              <a
                href={item.href}
                target={item.href.startsWith("http") ? "_blank" : undefined}
                rel={
                  item.href.startsWith("http")
                    ? "noopener noreferrer"
                    : undefined
                }
                className="flex-1 text-ink-soft underline decoration-transparent underline-offset-2 transition-colors hover:text-ink hover:decoration-current"
              >
                {item.value}
              </a>
            </li>
          ))}
        </ul>
      </section>
    </div>
  );
}
