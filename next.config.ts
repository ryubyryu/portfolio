import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  images: {
    remotePatterns: [
      {
        protocol: "https",
        hostname: "nmedia.tvcf.co.kr",
      },
    ],
  },
};

export default nextConfig;
