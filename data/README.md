## ELK Stack: Elasticsearch, Logstash, Kibana

So, what is the ELK Stack? "ELK" is the acronym for three open source projects: Elasticsearch, Logstash, and Kibana. Elasticsearch is a search and analytics engine. Logstash is a server‑side data processing pipeline that ingests data from multiple sources simultaneously, transforms it, and then sends it to a "stash" like Elasticsearch. Kibana lets users visualize data with charts and graphs in Elasticsearch.

The Elastic Stack is the next evolution of the ELK Stack. <small> [ELK Stack](https://www.elastic.co/pt/what-is/elk-stack) </small>


## [Logstash Reference](https://www.elastic.co/guide/en/logstash/current/index.html)

### Logstash - Plugins
Logstash has a rich collection of input, filter, codec and output plugins. Plugins are available as self-contained packages called gems and hosted on RubyGems.org. The plugin manager accessed via bin/logstash-plugin script is used to manage the lifecycle of plugins in your Logstash deployment. <small> [Working with plugins](https://www.elastic.co/guide/en/logstash/current/working-with-plugins.html) </small>

#### Input plugins
- https://github.com/logstash-plugins/logstash-input-cloudwatch
- https://github.com/logstash-plugins/logstash-input-http
- https://github.com/logstash-plugins/logstash-input-http_poller


#### Output plugins
- https://github.com/logstash-plugins/logstash-output-email