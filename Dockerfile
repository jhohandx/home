FROM nginx:alpine
RUN apk add --no-cache \
    git 
RUN rm -rf /usr/share/nginx/html/*.*
RUN git clone https://github.com/jhohandx/gitActions.git
WORKDIR /gitActions/vsts/webpage
COPY . /usr/share/nginx/html
COPY nginx.conf /etc/nginx
