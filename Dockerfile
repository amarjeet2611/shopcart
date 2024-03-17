From node:14 as builder
WORKDIR /app
COPY package*.json./
RUN npm install
COPY . .
RUN npm run build

FROM nginx:alpine
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html
CMD["nginx","-g","daemon off;"]
