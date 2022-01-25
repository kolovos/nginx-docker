FROM nginx:latest

# Needed to avoid prompts blocking the build process
ENV DEBIAN_FRONTEND=noninteractive

# Install Python
RUN apt-get update \
    && apt-get install -y python3-minimal \
    && rm -rf /var/lib/apt/lists/*

COPY ./8001.html ./8001/index.html
COPY ./8000.html /etc/nginx/html/index.html
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

# Copy start script and make it executable
ADD start.sh /
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]