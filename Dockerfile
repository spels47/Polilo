FROM node:current-alpine3.10 AS build
ADD . /app/src/
WORKDIR /app/src/
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

FROM nginx:mainline
COPY --from=build /app/src/ /prod/export
EXPOSE 80
CMD [ "nginx", "-g", "daemon off;" ]