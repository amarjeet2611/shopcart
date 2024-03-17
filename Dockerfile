From node:14 as builder
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx
EXPOSE 81
COPY --from=builder /app/build /usr/share/nginx/html

