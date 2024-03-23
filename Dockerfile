FROM oven/bun

WORKDIR /app

COPY package.json .
COPY bun.lockb .
COPY tsconfig.json .
COPY postcss.config.js .
COPY tailwind.config.js .
COPY biome.json .
COPY src src

RUN bun install


ENV NODE_ENV production
CMD ["bun", "run", "deploy"]

EXPOSE 3000