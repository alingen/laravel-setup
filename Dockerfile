FROM php:8.1-apache

# 設定ファイルをコンテナにコピー
COPY ./config/php/php.ini /usr/local/etc/php/php.ini
COPY ./config/mysql/my.cnf/my.conf /etc/my.conf

# パッケージのインストール
RUN apt-get update && apt-get -y install git zip unzip vim \
  && docker-php-ext-install pdo_mysql mysqli

# composerのインストール
COPY --from=composer /usr/bin/composer /usr/bin/composer

# コンテナ内で作業する際のカレンとディレクトリの指定
WORKDIR /var/www/html
