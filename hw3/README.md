# ДЗ 3

## Установить Node-Exporter и добавить его в Prometheus.

Установлено в соответствии с инструкцией в задании.

![img1](https://github.com/KatyaGolubeva/SRE/blob/hw3/hw3/pictures/1.jpeg)

![img2](https://github.com/KatyaGolubeva/SRE/blob/hw3/hw3/pictures/3.jpeg)

## Поскольку не все коллекторы используются в вашей системе, необходимоотключить те, которые не используются.

Node-exporter представляет собой систему коллекторов, своего рода модулей, которыеотвечают за сбор метрик конкретной подсистемы операционной системы. Поумолчанию, подключено довольно большое количество модулей, подробнее о них,можно почитать на официальной странице экспортера. Чаще всего при диагностике иалертинге используются следующие коллекторы:
- cpu  - экспозиция статистики по CPU
- diskstats  - экспозиция дисковой системы ввода/вывода
- filesystem  - экспозиция статистики файловой системы, такой как доступноеместо
- loadavg  - экспозиция средней нагрузки
- meminfo  - экспозиция статистики ОЗУ
- netstat  - эскпозиция статистики сети, которую можно получить с помощьюкоманды netstat
- sockstat  - экспозиция различной статистики из /proc/net/sockstat
- time  - экспозиция системного времени и многие другие.

`cat << EOF > /lib/systemd/system/node_exporter.service
[Unit]
Description=Node-Exporter service

[Service]
User=prometheus
Group=prometheus
ExecStart=/usr/local/bin/node_exporter --web.listen-address=0.0.0.0:9100 --collector.textfile.directory=/opt/prometheus_exporters/textfile --collector.disable-defaults  --collector.cpu --collector.diskstats --collector.filesystem --collector.loadavg --collector.meminfo --collector.netstat --collector.sockstat --collector.time --collector.textfile

[Install]
WantedBy=multi-user.target
EOF`


![img3](https://github.com/KatyaGolubeva/SRE/blob/hw3/hw3/pictures/4.jpeg)

## Сделать простой скрипт для Textfile-collector по любой метрике, которая отсустввует в node-exporter.