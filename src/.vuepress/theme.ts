import { hopeTheme } from "vuepress-theme-hope";
import { enNavbar, koNavbar, zhNavbar, esNavbar } from "./navbar";

export default hopeTheme({
  hostname: "https://java-design-patterns.com",

  author: {
    name: "iluwatar",
    url: "https://github.com/iluwatar/java-design-patterns-vuepress-web",
  },

  iconAssets: "fontawesome",

  logo: "/coffee.svg",

  repo: "iluwatar/java-design-patterns-vuepress-web",

  docsDir: "demo/theme-docs/src",

  pageInfo: ["Category", "Tag", "ReadingTime"],

  breadcrumb: false,

  locales: {
    "/": {
      navbar: enNavbar,

      sidebar: false,

      footer: "MIT licensed",

      displayFooter: true,

      editLink: false,      
    },

    /**
     * Chinese locale config
     */
    "/zh/": {
      navbar: zhNavbar,

      sidebar: false,

      footer: "麻省理工學院許可",

      displayFooter: true,

      editLink: false,
    },

    /**
     * Korean locale config
     */
     "/ko/": {
      navbar: koNavbar,

      sidebar: false,

      footer: "MIT 라이센스",

      displayFooter: true,

      editLink: false,
    },

    /**
     * Spanish locale config
     */
    "/es/": {
      navbar: esNavbar,

      sidebar: false,

      footer: "Licencia MIT",

      displayFooter: true,

      editLink: false,
    },

  },

  plugins: {
    comment: {
      provider: "Giscus",
      repo: "iluwatar/java-design-patterns-vuepress-web",
      repoId: "MDEwOlJlcG9zaXRvcnkzMzAyMTk3NjE=",
      category: "Announcements",
      categoryId: "DIC_kwDOE67A8c4B_2Ud",
    },

    blog: true,

    // Disable features you don’t want here
    mdEnhance: {
      align: true,
      attrs: true,
      chart: true,
      codetabs: true,
      container: true,
      demo: true,
      echarts: true,
      flowchart: true,
      gfm: true,
      imageLazyload: true,
      imageTitle: true,
      imageSize: true,
      include: true,
      katex: true,
      mark: true,
      mermaid: true,
      playground: {
        presets: ["ts", "vue"],
      },
      presentation: {
        plugins: ["highlight", "math", "search", "notes", "zoom"],
      },
      stylize: [
        {
          matcher: "Recommended",
          replacer: ({ tag }) => {
            if (tag === "em")
              return {
                tag: "Badge",
                attrs: { type: "tip" },
                content: "Recommended",
              };
          },
        },
      ],
      sub: true,
      sup: true,
      tabs: true,
      vPre: true,
      vuePlayground: true,
    },

    pwa: {
      favicon: "/favicon.ico",
      cacheHTML: true,
      cachePic: true,
      appendBase: true,
      apple: {
        icon: "/assets/icon/apple-icon-152.png",
        statusBarColor: "black",
      },
      msTile: {
        image: "/assets/icon/ms-icon-144.png",
        color: "#ffffff",
      },
      manifest: {
        icons: [
          {
            src: "/assets/icon/chrome-mask-512.png",
            sizes: "512x512",
            purpose: "maskable",
            type: "image/png",
          },
          {
            src: "/assets/icon/chrome-mask-192.png",
            sizes: "192x192",
            purpose: "maskable",
            type: "image/png",
          },
          {
            src: "/assets/icon/chrome-512.png",
            sizes: "512x512",
            type: "image/png",
          },
          {
            src: "/assets/icon/chrome-192.png",
            sizes: "192x192",
            type: "image/png",
          },
        ],
        shortcuts: [
          {
            name: "Demo",
            short_name: "Demo",
            url: "/demo/",
            icons: [
              {
                src: "/assets/icon/guide-maskable.png",
                sizes: "192x192",
                purpose: "maskable",
                type: "image/png",
              },
              {
                src: "/assets/icon/guide-monochrome.png",
                sizes: "192x192",
                purpose: "monochrome",
                type: "image/png",
              },
            ],
          },
        ],
      },
    },
  },
});
