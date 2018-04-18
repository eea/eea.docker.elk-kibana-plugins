FROM eeacms/elk-kibana:6.2.2-eea

MAINTAINER michimau <mauro.michielon@eea.europa.eu>

RUN npm install -g bower
RUN echo '{ "allow_root": true }' > /root/.bowerrc

ENV KIBANA_VERSION 6.2.2

ADD plugins/kibana-time-plugin /opt/kibana/plugins/kibana-time-plugin
RUN cd /opt/kibana/plugins/kibana-time-plugin && sed "s#KIBANA_VERSION#$KIBANA_VERSION#g" -i ./package.json && bower install --force-latest && npm install

ADD plugins/computed-columns /opt/kibana/plugins/computed-columns
RUN cd /opt/kibana/plugins/computed-columns && sed "s#KIBANA_VERSION#$KIBANA_VERSION#g" -i ./package.json && npm install

ADD plugins/kbn_network /opt/kibana/plugins/kbn_network
RUN cd /opt/kibana/plugins/kbn_network && sed "s#KIBANA_VERSION#$KIBANA_VERSION#g" -i ./package.json && npm install

ADD plugins/kibana-swimlane-vis /opt/kibana/plugins/kibana-swimlane-vis
RUN cd /opt/kibana/plugins/kibana-swimlane-vis && sed "s#KIBANA_VERSION#$KIBANA_VERSION#g" -i ./package.json && npm install

ADD plugins/kibana-html-plugin /opt/kibana/plugins/kibana-html-plugin
RUN cd /opt/kibana/plugins/kibana-html-plugin && sed "s#KIBANA_VERSION#$KIBANA_VERSION#g" -i ./package.json && bower install && npm install

ADD plugins/kibana-enhanced-table /opt/kibana/plugins/kibana-enhanced-table
RUN cd /opt/kibana/plugins/kibana-enhanced-table && sed "s#KIBANA_VERSION#$KIBANA_VERSION#g" -i ./package.json && npm install

ADD plugins/ob-kb-percent /opt/kibana/plugins/ob-kb-percent
RUN cd /opt/kibana/plugins/ob-kb-percent && sed "s#KIBANA_VERSION#$KIBANA_VERSION#g" -i ./package.json && npm install

ADD plugins/kibana-xlsx-import /opt/kibana/plugins/kibana-xlsx-import
RUN cd /opt/kibana/plugins/kibana-xlsx-import && sed "s#KIBANA_VERSION#$KIBANA_VERSION#g" -i ./package.json && npm install

ADD plugins/kibana-search-widget /opt/kibana/plugins/kibana-search-widget
RUN cd /opt/kibana/plugins/kibana-search-widget && sed "s#KIBANA_VERSION#$KIBANA_VERSION#g" -i ./package.json && npm install

