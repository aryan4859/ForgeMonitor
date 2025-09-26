export const useCustomHead = (
  title = "ForgeMonitor - Uptime Monitoring & Status Pages",
  description = "A simple, free, and open-source uptime monitoring and status page service.",
  image = "https://flagforge.xyz/_next/image?url=%2F_next%2Fstatic%2Fmedia%2Fflagforge-logo.bf890a45.png&w=256&q=75"
) => {
  useHead({
    title,
    htmlAttrs: { lang: "en" },
    viewport: "width=device-width, initial-scale=1",
    charset: "utf-8",
    link: [{ rel: "icon", href: "/favicon.png" }],
    meta: [
      {
        name: "description",
        content: description,
      },
      { name: "twitter:card", content: "summary_large_image" },
      { name: "twitter:site", content: "@flagforge" },
      { name: "twitter:title", content: title },
      {
        name: "twitter:description",
        content: description,
      },
      { name: "twitter:image", content: image },
      { property: "og:type", content: "website" },
      { property: "og:title", content: title },
      { property: "og:url", content: "https://flagforge.xyz/" },
      { property: "og:image", content: image ?? image },
      {
        property: "og:description",
        content: description,
      },
    ],
  });
};
