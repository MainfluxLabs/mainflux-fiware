# Mainflux

[![License](https://img.shields.io/badge/license-Apache%20v2.0-blue.svg)](LICENSE) [![Join the chat at https://gitter.im/Mainflux/mainflux](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/Mainflux/mainflux?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

### About
Mainflux is an open source and patent-free IoT Cloud Platform.

It allows device, user and application connections over various network protocols, like HTTP, MQTT, WebSocket and CoAP, making a seamless bridge between them. It is used as the IoT middleware for building complex IoT solutions.

![Cloud Architecture](https://github.com/Mainflux/mainflux-doc/blob/master/img/cloudArchitecture.jpg)

Mainflux is built with <3 by Mainflux team and community contributors.

### Features
An extensive (and incomplete) list of featureas includes:
- Responsive and scalable architecture based on a set of [Microservices](https://en.wikipedia.org/wiki/Microservices)
- Set of clean APIs, Swagger documented: HTTP RESTful, MQTT, WebSocket and CoAP
- Set of client libraries for many HW platforms in several programming languages: C/C++, JavaScript, Go and Python
- Device management and provisioning and OTA FW updates
- Highly secured connections via TLS and DTLS
- Standardized [NGSI](http://technical.openmobilealliance.org/Technical/technical-information/release-program/current-releases/ngsi-v1-0) inter-connection between SW components
- Enhanced and fine-grained security via [PEP](http://forge.fiware.org/plugins/mediawiki/wiki/fiware/index.php/FIWARE.OpenSpecification.Security.PEP_Proxy_Generic_Enabler) [Reverse Proxy](https://en.wikipedia.org/wiki/Reverse_proxy), [OAuth 2.0](http://oauth.net/2/) [identity management](https://en.wikipedia.org/wiki/Identity_management) and [XACML 3.0](https://www.oasis-open.org/committees/tc_home.php?wg_abbrev=xacml) based Authorization Server.
- [LwM2M](http://goo.gl/rHjLZQ) standard compliance
- [oneM2M](http://www.onem2m.org/) adapter
- Easy deployment and high system scalability via [Docker](https://www.docker.com/) images
- Clear project roadmap, extensive development ecosystem and highly skilled developer community
- And many more

### System Architecture
Mainflux IoT cloud is composed of several [Fiware](https://www.fiware.org/) components, so called [Generic Enablers](http://catalogue.fiware.org/enablers?page=1):
- Orion Context Broker
- IoT Agent MQTT
- IoT Agent LWM2M
- Wilma PEP Proxy
- Keyrock Identity Manager
- AuthZForce Authorization Server

The following matrix describes the functionality of each GE in the system and gives the location of the code repositories:

| GE               | Function               |  Mainflux repo | Fiware Catalogue |
| :--------------- |:-----------------------| :--------------| :--------------- |
| Orion            | Pub/Sub Context Broker | [fiware-orion](https://github.com/Mainflux/fiware-orion) | [Orion GE](http://catalogue.fiware.org/enablers/publishsubscribe-context-broker-orion-context-broker)|
| IoT Agent MQTT   | MQTT Agent             | [fiware-iota-mqtt](https://github.com/Mainflux/fiware-iota-mqtt) | [IDAS (MQTT) GE](http://catalogue.fiware.org/enablers/backend-device-management-idas/creating-instances)|
| IoT Agent LWM2M  | LWM2M Agent            | [fiware-iota-lwm2m](https://github.com/Mainflux/fiware-iota-lwm2m) | [IDAS (LWM2M) GE](http://catalogue.fiware.org/enablers/backend-device-management-idas/creating-instances)|
| Wilma PEP Proxy  | OAuth 2.0 Reverse Proxy          | [fiware-pep-proxy](https://github.com/Mainflux/fiware-pep-proxy) | [Wilma GE](http://catalogue.fiware.org/enablers/pep-proxy-wilma)|
| Keyrock          | Identity Manager          | [fiware-keystone](https://github.com/Mainflux/fiware-keystone)| [Keyrock GE](http://catalogue.fiware.org/enablers/identity-management-keyrock)|
| AuthZForce       | Authorization Server     | - | [AuthZForce GE](http://catalogue.fiware.org/enablers/authorization-pdp-authzforce)|


These components are packaged and deployed in a set of Docker containers maintained by Mainflux team, with images uploaded to [Mainflux Docker Hub page](https://hub.docker.com/u/mainflux/).

Docker composition that constitues Mainflux IoT infrastructure is defined in the [`docker-compose.yml`](https://github.com/Mainflux/mainflux-fiware/blob/master/docker-compose.yml).

### Deployment
Deployment of Mainflux IoT Cloud is super-easy:
- Get the [`docker-compose.yml`](https://github.com/Mainflux/mainflux-fiware/blob/master/docker-compose.yml)
- Start the composition:
```
docker-compose up
```
This will automatically download Docker images from [Mainflux Docker Hub](https://hub.docker.com/u/mainflux/) and deploy the composition.

If you need to modify these Docker images, you will have to look at appropriate repos in the [Mainflux project GitHub](https://github.com/Mainflux) - look for the repos starting with prefix `fiware-`.

### Documentation
Development documentation can be found on [Mainflux wiki](https://github.com/Mainflux/mainflux-fiware/wiki)

### Community
#### Mailing lists
- [mainflux-dev](https://groups.google.com/forum/#!forum/mainflux-dev) - developers related. This is discussion about development of Mainflux IoT cloud itself.
- [mainflux-user](https://groups.google.com/forum/#!forum/mainflux-user) - general discussion and support. If you do not participate in development of Mainflux cloud infrastructure, this is probably what you're looking for.

#### IRC
[Mainflux Gitter](https://gitter.im/Mainflux/mainflux?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

#### Twitter
[@mainflux](https://twitter.com/mainflux)

### License
- Mainflux contributions: [Apache License, version 2.0](http://www.apache.org/licenses/LICENSE-2.0)
- Fiware components: [GNU Affero GPL](http://www.gnu.org/licenses/why-affero-gpl.en.html)
