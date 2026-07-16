import { siteConfig } from "@/lib/site-config";
import SiteNav from "@/components/site-nav";

export default function SiteHeader() {
  return (
    <header className="sticky top-0 z-40 bg-paper px-6 py-5 sm:px-8 sm:py-5">
      <SiteNav name={siteConfig.name} theme="light" />
    </header>
  );
}
