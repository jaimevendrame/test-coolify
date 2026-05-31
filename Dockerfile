FROM nginx:alpine

RUN echo '<!DOCTYPE html><html><body><h1>Hello from Coolify!</h1><p>Deploy works.</p></body></html>' > /usr/share/nginx/html/index.html \
 && sed -i 's/listen       80;/listen       3000;/' /etc/nginx/conf.d/default.conf

EXPOSE 3000

CMD ["nginx", "-g", "daemon off;"]
