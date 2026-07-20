import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  images: {
    remotePatterns: [
      {
        protocol: "https",
        hostname: "nmedia.tvcf.co.kr",
      },
      {
        protocol: "https",
        hostname: "llwbqewucexzruxdgveq.supabase.co",
      },
    ],
  },
};

export default nextConfig;
