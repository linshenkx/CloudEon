kind: Service
apiVersion: v1
metadata:
  name: metrics-dinky
  labels:
    sname: ${serviceFullName}
    roleFullName: dinky
    enable-default-service-monitor: true
spec:
  selector:
    sname: ${serviceFullName}
    roleFullName: dinky
  ports:
  - name: metrics
    port: ${conf["dinky.jmx.port"]}