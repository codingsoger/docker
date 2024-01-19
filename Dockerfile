FROM registry.cn-shenzhen.aliyuncs.com/soger/node:latest

WORKDIR /app

COPY package*.json ./

RUN npm install -g cnpm --registry=https://registry.npmmirror.com

RUN cnpm install

COPY . .

EXPOSE 2838

CMD ["node","app2.js"]
