import type { Metadata } from "next";
import { siteConfig } from "@/lib/site-config";
import SiteHeader from "@/components/site-header";

export const metadata: Metadata = {
  title: "Contact",
};

export default function ContactPage() {
  return (
    <>
      <SiteHeader />
      <div className="mx-auto max-w-3xl px-6 py-16 sm:px-8">
        <h1 className="mb-8 font-display text-3xl text-ink">Contact</h1>
        <p className="mb-10 max-w-[65ch] text-lg leading-relaxed text-ink-soft">
          새로운 작업 제안이나 협업 문의는 아래 채널로 연락 주세요.
        </p>

        <ul className="space-y-4 border-t border-line pt-8">
          <li className="flex items-baseline justify-between border-b border-line pb-4">
            <span className="font-mono text-xs uppercase tracking-widest text-stone">
              Email
            </span>
            <a
              href={`mailto:${siteConfig.email}`}
              className="text-ink hover:text-indigo"
            >
              {siteConfig.email}
            </a>
          </li>
          {siteConfig.social.map((item) => (
            <li
              key={item.href}
              className="flex items-baseline justify-between border-b border-line pb-4"
            >
              <span className="font-mono text-xs uppercase tracking-widest text-stone">
                {item.label}
              </span>
              <a
                href={item.href}
                target="_blank"
                rel="noopener noreferrer"
                className="text-ink hover:text-indigo"
              >
                {item.href}
              </a>
            </li>
          ))}
        </ul>
      </div>
    </>
  );
}
