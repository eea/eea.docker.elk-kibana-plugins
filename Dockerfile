FROM eeacms/elk-kibana:6.2.2

MAINTAINER michimau <mauro.michielon@eea.europa.eu>

RUN npm install -g bower
RUN echo '{ "allow_root": true }' > /root/.bowerrc

ENV KIBANA_VERSION 6.2.2

ADD plugins/kibana-time-plugin /kibana/plugins/kibana-time-plugin
RUN cd /kibana/plugins/kibana-time-plugin && sed "s#KIBANA_VERSION#$KIBANA_VERSION#g" -i ./package.json && bower install --force-latest && npm install

ADD plugins/computed-columns /kibana/plugins/computed-columns
RUN cd /kibana/plugins/computed-columns && sed "s#KIBANA_VERSION#$KIBANA_VERSION#g" -i ./package.json && npm install

ADD plugins/kbn_network /kibana/plugins/kbn_network
RUN cd /kibana/plugins/kbn_network && sed "s#KIBANA_VERSION#$KIBANA_VERSION#g" -i ./package.json && npm install

ADD plugins/kibana-swimlane-vis /kibana/plugins/kibana-swimlane-vis
RUN cd /kibana/plugins/kibana-swimlane-vis && sed "s#KIBANA_VERSION#$KIBANA_VERSION#g" -i ./package.json && npm install

ADD plugins/kibana-html-plugin /kibana/plugins/kibana-html-plugin
RUN cd /kibana/plugins/kibana-html-plugin && sed "s#KIBANA_VERSION#$KIBANA_VERSION#g" -i ./package.json && bower install && npm install

ADD plugins/kibana-enhanced-table /kibana/plugins/kibana-enhanced-table
RUN cd /kibana/plugins/kibana-enhanced-table && sed "s#KIBANA_VERSION#$KIBANA_VERSION#g" -i ./package.json && npm install

ADD plugins/ob-kb-percent /kibana/plugins/ob-kb-percent
RUN cd /kibana/plugins/ob-kb-percent && sed "s#KIBANA_VERSION#$KIBANA_VERSION#g" -i ./package.json && npm install

ADD plugins/kibana-xlsx-import /kibana/plugins/kibana-xlsx-import
RUN cd /kibana/plugins/kibana-xlsx-import && sed "s#KIBANA_VERSION#$KIBANA_VERSION#g" -i ./package.json && npm install
