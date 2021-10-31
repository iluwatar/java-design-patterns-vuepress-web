const { config } = require("vuepress-theme-hope");

module.exports = config({
  title: "Java Design Patterns",
  description: "Design patterns are best practices a programmer can use to solve common problems when designing an application or system.",

  dest: "./dist",

  head: [
    [
      "script",
      { src: "https://cdn.jsdelivr.net/npm/react/umd/react.production.min.js" },
    ],
    [
      "script",
      {
        src: "https://cdn.jsdelivr.net/npm/react-dom/umd/react-dom.production.min.js",
      },
    ],
    ["script", { src: "https://cdn.jsdelivr.net/npm/vue/dist/vue.min.js" }],
    [
      "script",
      { src: "https://cdn.jsdelivr.net/npm/@babel/standalone/babel.min.js" },
    ],
  ],

  locales: {
    "/": {
      lang: "en-US",
    },
    "/zh/": {
      lang: "zh-CN",
    },
  },

  themeConfig: {
    logo: "/logo.svg",
    hostname: "https://vuepress-theme-hope-demo.mrhope.site",

    author: "iluwatar",
    repo: "https://github.com/iluwatar/java-design-patterns-vuepress-web",

    nav: [
      { text: "Patterns", link: "/patterns/", icon: "home" },
      { text: "Principles", link: "/principles/", icon: "home" },
      { text: "Snippets", link: "/snippets/", icon: "home" },
    ],

    locales: {
      "/zh/": {
        nav: [
          { text: "Patterns", link: "/zh/patterns/", icon: "home" },
          { text: "Principles", link: "/zh/principles/", icon: "home" },
          { text: "Snippets", link: "/zh/snippets/", icon: "home" },
        ],
      },
    },

    footer: {
      display: true,
      content: "MIT licensed",
    },

    mdEnhance: {
      enableAll: true,
      presentation: {
        plugins: [
          "highlight",
          "math",
          "search",
          "notes",
          "zoom",
          "anything",
          "audio",
          "chalkboard",
        ],
      },
    },

    pwa: false,
    
  },
});
