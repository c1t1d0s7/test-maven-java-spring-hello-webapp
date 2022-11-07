# Example Hello Webapp for JAVA Language with Maven/Spring

## WAR Packaging

```bash
mvn package
```

## Deploy WAR Package

Copy it to the `webapps` directory of the directory pointed to by the `CATALINA_HOME` environment variable.

> ${CATALINA_HOME}/webapps
> /usr/local/tomcat/webapps

If you copy to the directory, the WAR archive is automatically extracted, and the directory becomes the path of the URL.
