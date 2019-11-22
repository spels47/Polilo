FROM node:current-alpine3.10 AS build
ADD . /app/src/
WORKDIR /app/src/
RUN npm install -g http-server
COPY package*.json ./
RUN npm install
COPY . .

FROM build
COPY --from=build /app/src/ /prod/export
RUN npm run build
EXPOSE 8085
CMD [ "http-server", "dist" ]