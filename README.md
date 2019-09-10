# Projeto docker-logstash

## Geração de imagem

Instruções para gerar a imagem customizada para o logstash.  A justificativa é a instalação de plugins na imagem.

Plugins utilizados

- elapsed

Comando:
`docker build -t logstash .`

## Execução da imagem 

Na execução vamos utilizar um arquivo de configuração padrão Dinamo para processamento de Log.

Comando:
`docker run --rm --name logstash -v ${PWD}/dinamo.conf:/usr/share/logstash/pipeline/dinamo.conf -v ${PWD}/logs:/mnt logstash`

## Execução em produção

Para execução em produção deve-se ter tudo já pre-configurado na imagem.

Comando:
`docker run -d --name logstash logstash`