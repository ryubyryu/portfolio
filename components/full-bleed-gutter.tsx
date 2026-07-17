"use client";

import { useEffect } from "react";

export default function FullBleedGutter() {
  useEffect(() => {
    document.documentElement.style.scrollbarGutter = "auto";
    return () => {
      document.documentElement.style.scrollbarGutter = "";
    };
  }, []);

  return null;
}
