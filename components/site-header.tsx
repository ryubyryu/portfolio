import { siteConfig } from "@/lib/site-config";
import SiteNav from "@/components/site-nav";

export default function SiteHeader() {
  return (
    <header className="sticky top-0 z-40 bg-paper px-6 py-6 sm:px-10 sm:py-8">
      <SiteNav name={siteConfig.name} theme="light" />
    </header>
  );
}
