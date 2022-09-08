A custom OIDC protocol mapper that maps group id(s) to token claim(s).

## Building

```
mvn clean install
```

## Installation

Copy the resulting jar file to Keycloak's providers directory.

For example:

```
cp target/GroupIdProtocolMapper-1.0-SNAPSHOT.jar /opt/keycloak/providers/
```

## Related Documentation

- See [Keycloak's built-in protocol mappers](https://github.com/keycloak/keycloak/tree/main/services/src/main/java/org/keycloak/protocol/oidc/mappers) for more examples on how to write a protocol mapper.
