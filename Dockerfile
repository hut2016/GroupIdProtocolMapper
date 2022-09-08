FROM quay.io/keycloak/keycloak:latest as builder

# Install custom policies
COPY target/GroupIdProtocolMapper-1.0-SNAPSHOT.jar /opt/keycloak/providers/

RUN /opt/keycloak/bin/kc.sh build

FROM quay.io/keycloak/keycloak:latest
COPY --from=builder /opt/keycloak/ /opt/keycloak/
WORKDIR /opt/keycloak

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
