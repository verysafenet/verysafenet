FROM node:14

RUN mkdir -p /opt/app
WORKDIR /opt/app
COPY . /opt/app
ENV NODE_ENV development
EXPOSE 3000
CMD ["npm", "start"]