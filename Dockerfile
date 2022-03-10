FROM node
WORKDIR /app
COPY package.json .

ARG NODE_ENV
# RUN if [ "$NODE_ENV" = "development" ]; \
#         then npm install; \
#         else npm install --only=production; \
#         fi

RUN npm install
COPY . ./
ENV PORT 8080
EXPOSE $PORT
CMD ["node", "server.js"]