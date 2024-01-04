# Use a imagem base do Ubuntu
FROM ubuntu:latest

# Atualiza os pacotes e instala o Nginx
RUN apt-get update && \
    apt-get install -y nginx && \
    rm -rf /var/lib/apt/lists/*

# Expõe a porta 80 para tráfego HTTP
EXPOSE 80

# Comando padrão para executar o Nginx em primeiro plano ao iniciar o contêiner
CMD ["nginx", "-g", "daemon off;"]
