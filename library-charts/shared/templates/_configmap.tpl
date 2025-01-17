{{- define "shared.configMap" -}}
---
apiVersion: v1
kind: ConfigMap
metadata:
  namespace: {{ .Values.namespace  }}
  name: "hh-env-autogenerated"
data:
  CALL_MIGRATION_SERVICE: "true"
  CONNECT_CLUSTER_ENDPOINT: http://kafka-connectors:8083
  DOMAIN_NAME: lacework.net
  EMERGING_THREATS_TOKEN: <path:samsa/defaults#emergingthreatstoken>
  ENABLE_SLACK_NOTIFICATIONS: "true"
  EXTERNAL_DB_SNOWFLAKE_ALIAS: snowflake_acnt1
  GRAPHITE_HOST: wavefront-proxy.kube-system.svc.cluster.local
  GRAPHITE_PORT: "2003"
  LW_DEFAULT_SNOWFLAKE_ACCOUNT_ALIAS: snowflake_acnt1
  LW_DEFAULT_SNOWFLAKE_USER_ALIAS: load_user
  LW_DEFAULT_SNOWFLAKE_WAREHOUSE_POOL_ALIAS: load_pool
  LW_HOST_ACCOUNT: "434813966438"
  LW_HOST_AWS_REGION: us-west-2
  LW_HOST_AWS_REGION2: US_WEST_2
  LW_HOST_ENV_NAME: prodn1
  LW_HOST_ENV_TYPE: prodn
  MANAGED_REDIS_CLUSTER_001: <path:/aws/prod/us-west-2/prodn1/default/redis#MANAGED_REDIS_CLUSTER_001>
  MANAGED_REDIS_PORT_001: "6379"
  MANAGED_REDIS_TLS_001: <path:/aws/prod/us-west-2/prodn1/default/redis#MANAGED_REDIS_TLS_001>
  MON_GRAPHITE_HOST: wavefront-proxy-mon.monitoring.svc.cluster.local
  MON_GRAPHITE_PORT: "2003"
  MON_WAVEFRONT_PROXY_HOST: wavefront-proxy-mon.monitoring.svc.cluster.local
  MON_WAVEFRONT_PROXY_PORT: "2878"
  OTEL_EXPORTER_OTLP_ENDPOINT: http://opentelemetry-collector.default:55680
  OTEL_METRICS_EXPORTER: none
  OTEL_RESOURCE_ATTRIBUTES: service.name=kafka-connectors
  OTEL_TRACES_EXPORTER: otlp
  PROMETHEUS_PORT: "9094"
  REDIS_PORT: "10030"
  REDPANDA_BROKER_HOST: prod1-rp.prod.lacework.engineering:9092
  REDPANDA_CONNECT_REST_PORT: "8083"
  REDPANDA_SCHEMA_REGISTRY_HOST: http://prod1-rp.prod.lacework.engineering:8081
  SALESFORCE_CLIENT_ID: <path:/prod/salesforce#client_id>
  SALESFORCE_CLIENT_SECRET: <path:/prod/salesforce#client_secret>
  SALESFORCE_PASSWORD: <path:/prod/salesforce#password>
  SALESFORCE_USERNAME: <path:/prod/salesforce#username>
  SF_PASSPHRASE: ""
  SF_PRIVATE_KEY: <path:samsa/prod_cluster_01/terraform#snowflakekey>
  SF_ROLE: <path:samsa/prod_cluster_01/terraform#snowflakerole>
  SF_URL: lacework.snowflakecomputing.com
  SF_USERNAME: <path:samsa/prod_cluster_01/terraform#snowflakeuser>
  SLACK_WEBHOOK: <path:samsa/defaults#prodslackwh>
  THREAT_DB_BUCKET_NAME: prodn-threatdb-lacework
  USER_ALIAS: load_user
  VM_SERVER_ADDRESS: http://vmselect-vm.vm:8481/select/0/prometheus
  WAREHOUSE_POOL_NAME: load_pool
  WAVEFRONT_PROXY_HOST: wavefront-proxy.kube-system.svc.cluster.local
  WAVEFRONT_PROXY_PORT: "2878"
{{- end }}
