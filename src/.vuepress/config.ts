import { webpackBundler } from '@vuepress/bundler-webpack'
import { defineUserConfig } from "vuepress";
import { getDirname, path } from 'vuepress/utils'
import theme from "./theme.js";
import { googleAnalyticsPlugin } from '@vuepress/plugin-google-analytics'
import { registerComponentsPlugin } from '@vuepress/plugin-register-components'

const __dirname = getDirname(import.meta.url)

export default defineUserConfig({
  base: "/",

  bundler: webpackBundler({
    postcss: {},
    vue: {},
  }),

  title: "Java Design Patterns",
  description: "Design patterns are best practices a programmer can use to solve common problems when designing an application or system.",

  locales: {
    "/": {
      lang: "en-US",
      title: "Java Design Patterns",
      description: "Java Design Patterns (English)",
    },
    "/zh/": {
      lang: "zh-CN",
      title: "Java Design Patterns (中文)",
      description: "",
    },
    "/ko/": {
      lang: "ko-KR",
      title: "Java Design Patterns (한국어)",
      description: "",
    },
    "/es/": {
      lang: "es-ES",
      title: "Patrones de Diseño Java",
      description: "Patrones de Diseño Java (Español)",
    },
  },

  theme,

  shouldPrefetch: false,

  plugins: [    
    googleAnalyticsPlugin({
      id: 'G-CN4DXNE50P',
    }),
    registerComponentsPlugin({
      componentsDir: path.resolve(__dirname, './components'),
    }),
  ],

});
