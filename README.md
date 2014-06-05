# Микродарения за независима журналистика

Платформа за публични микродарения към даден материал, подкрепящи авторите му
и независимостта на медията, в която те работят. Представете си Facebook "Like"
бутон, зад който стоят пари.

[Научете повече](http://openmedia.bg/blog/medii-v-okovi/).

## Изисквания

- Ruby 2.0 или по-ново.
- Bundler
- PostgreSQL

## Инсталация

1. Клонирайте хранилището
2. Изпълнете `bundle install`
3. Копирайте `config/database.yml.example` в `config/database.yml` и
   `config/secrets.yml.example` в `config/secrets.yml` и направете необходимите
   промени за вашата конфигурация.
4. Изпълнете `./bin/rake db:create db:migrate`
4. Стартирайте `./bin/rails server` и отворете
   [http://localhost:3000/](http://localhost:3000/).

За да стартирате тестовете, изпълнете `./bin/rake`.

## Лиценз

MIT. Вижте файла `LICENSE.txt`.
