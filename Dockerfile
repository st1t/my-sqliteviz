FROM node:10 AS npm-install
WORKDIR /tmp
RUN git clone https://github.com/lana-k/sqliteviz.git \
  && cd sqliteviz/ \
  && npm install \
  && npm run build

FROM nginx:1.21
COPY --from=npm-install /tmp/sqliteviz/dist/ /usr/share/nginx/html/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
