(function () {
  const root = document.documentElement;
  const toggleBtn = document.getElementById("theme-toggle");
  const storageKey = "theme";

  function getPreferredTheme() {
    const stored = localStorage.getItem(storageKey);
    if (stored) return stored;
    return window.matchMedia("(prefers-color-scheme: dark)").matches
      ? "dark"
      : "light";
  }

  function applyTheme(theme) {
    root.setAttribute("data-theme", theme);
    localStorage.setItem(storageKey, theme);
  }

  applyTheme(getPreferredTheme());

  toggleBtn.addEventListener("click", function () {
    const current = root.getAttribute("data-theme");
    applyTheme(current === "dark" ? "light" : "dark");
  });
})();
