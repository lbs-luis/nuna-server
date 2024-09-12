# Usar a imagem oficial do Node.js versão 21.6.0 com Alpine para ser mais leve
FROM node:21.6.0-alpine

# Instalar o pnpm globalmente
RUN npm install -g pnpm

# Definir o diretório de trabalho dentro do container
WORKDIR /usr/src/app

# Copiar os arquivos package.json e pnpm-lock.yaml para o diretório de trabalho
COPY package.json pnpm-lock.yaml ./

# Instalar todas as dependências, incluindo as de desenvolvimento
RUN pnpm install

# Copiar o restante dos arquivos do projeto para o container
COPY . .

# Rodar o comando de build para transpilação do código TypeScript
RUN pnpm build

# Remover as dependências de desenvolvimento após o build
RUN pnpm prune --prod

# Expor a porta que o servidor vai rodar
EXPOSE 3333

# Definir variáveis de ambiente, caso necessário
ENV NODE_ENV=production

# Comando para iniciar a aplicação a partir do build gerado
CMD ["pnpm", "start"]
