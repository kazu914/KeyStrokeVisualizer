#!/bin/sh

while true; do
    SUM_TYPEDCOUNT=`cat /var/log/keystroke.log | wc -l`;
    echo "# HELP total_words_count_counter counter" > /prometheus_textfiles/wc.prom;
    echo "# TYPE total_words_count_counter counter" >> /prometheus_textfiles/wc.prom;
    echo "total_words_count_counter $SUM_TYPEDCOUNT" >> /prometheus_textfiles/wc.prom;
    sleep 5;
done

