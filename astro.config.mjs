// @ts-check
import { defineConfig, sessionDrivers } from 'astro/config';
import cloudflare from '@astrojs/cloudflare';
import tailwindcss from '@tailwindcss/vite';

// https://astro.build/config
export default defineConfig({
  site: 'https://cartacuba.org',
  output: 'server',
  // The site uses neither Astro.session nor the <Image> component, so both
  // are pinned to no-op config here — otherwise the adapter auto-provisions
  // a KV namespace and an Images binding on deploy, which this API token
  // isn't scoped to create.
  session: {
    driver: sessionDrivers.memory(),
  },
  adapter: cloudflare({
    imageService: 'passthrough',
  }),
  vite: {
    plugins: [tailwindcss()],
    server: {
      allowedHosts: true,
    },
  },
});
