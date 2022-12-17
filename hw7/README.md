# ДЗ 7

## Установить Grafana

Установлена в соответствии с инструкцией в задании.

![grafana]()

## Настроить параметры

настроены параметры в /etc/grafana/grafana.ini:

```bash
[users]
default_theme = dark

[date_formats]
default_timezone = Europe/Moscow

[dashboards]
versions_to_keep = 30
```

## Используя любой отличный от Grafana инструмент, вывести график значений метрики prometheus_tsdb_head_series за последний час

Построен график значений метрики prometheus_tsdb_head_series за последний час с помощью Prometheus:

![prometheus]()
