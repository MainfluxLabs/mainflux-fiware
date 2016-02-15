# Mainflux Fiware

[![License](https://img.shields.io/badge/license-Apache%20v2.0-blue.svg)](LICENSE) [![Join the chat at https://gitter.im/Mainflux/mainflux](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/Mainflux/mainflux?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

### About
Mainflux IoT Cloud Platform based on [Fiware](https://www.fiware.org/)

It allows device, user and application connections over various network protocols, like HTTP, MQTT, WebSocket and CoAP, making a seamless bridge between them. As a consequence, Mainflux represents highly secure and highly optimised M2M platform based on the cutting-edge standards and approaches in the industry.

### Features
An extensive (and incomplete) list of featureas includes:
- Responsive and scalable architecture based on a set of [Microservices](https://en.wikipedia.org/wiki/Microservices)
- Set of clean APIs, Swagger documented: HTTP RESTful, MQTT, WebSocket and CoAP
- Set of client libraries for many HW platforms in several programming languages: C/C++, JavaScript, Go and Python
- Device management and provisioning and OTA FW updates
- Highly secured connections via TLS and DTLS
- Enhanced and fine-grained security via [OAuth 2.0](http://oauth.net/2/) proxy and [identity management](https://en.wikipedia.org/wiki/Identity_management) 
- [LwM2M](http://goo.gl/rHjLZQ) standard compliance
- [oneM2M](http://www.onem2m.org/) adapter
- Easy deployment and high system scalability via [Docker](https://www.docker.com/) images
- Clear project roadmap, extensive development ecosystem and highly skilled developer community
- Professional support via [Mainflux](http://mainflux.com) company
- And many more

### System Architecture
Mainflux IoT cloud is composed of several Fiware components, so called [Generic Enablers](http://catalogue.fiware.org/enablers?page=1)"
- [Orion Context Broker](http://catalogue.fiware.org/enablers/publishsubscribe-context-broker-orion-context-broker)
- [IoT Agent MQTT](http://catalogue.fiware.org/enablers/backend-device-management-idas/creating-instances)
- [IoT Agent LWM2M](http://catalogue.fiware.org/enablers/backend-device-management-idas/creating-instances)
- [Wilma PEP Proxy](http://catalogue.fiware.org/enablers/pep-proxy-wilma)
- [Keyrock Identity Manager](http://catalogue.fiware.org/enablers/identity-management-keyrock)

These components are packaged and deployed in a set of Docker containers maintained by Mainflux team, with images uploaded to [Mainflux Docker Hub page](https://hub.docker.com/u/mainflux/).

Docker composition is that constitues Mainflux IoT infrastructure is defined in the [`docker-compose.yml`](https://github.com/Mainflux/mainflux-fiware/blob/master/docker-compose.yml).

### Deployment
Deployment of Mainflux IoT Cloud is super-easy:
- Get the [`docker-compose.yml`](https://github.com/Mainflux/mainflux-fiware/blob/master/docker-compose.yml)
- Start the composition:
```
docker-compose up
```
This will automatically download Docker images from [Mainflux Docker Hub](https://hub.docker.com/u/mainflux/) and deploy the composition.

If you need these Docker images, you will have to look at appropriate repos in the [Mainflux project GitHub](https://github.com/Mainflux) - look for the repos starting with prefix `fiware-`.

### Documentation
Development documentation can be found on [mainflux-fiware wiki](https://github.com/Mainflux/mainflux-fiware/wiki)

Swagger-generated API reference can be foud at [http://mainflux.com/apidoc](http://mainflux.com/apidoc).

### Community
#### Mailing lists
- [mainflux-dev](https://groups.google.com/forum/#!forum/mainflux-dev) - developers related. This is discussion about development of Mainflux IoT cloud itself.
- [mainflux-user](https://groups.google.com/forum/#!forum/mainflux-user) - general discussion and support. If you do not participate in development of Mainflux cloud infrastructure, this is probably what you're looking for.

#### IRC
[Mainflux Gitter](https://gitter.im/Mainflux/mainflux?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

#### Twitter
[@mainflux](https://twitter.com/mainflux)

### License
#### mainflux-fiware
- Mainflux contributions: [Apache License, version 2.0](http://www.apache.org/licenses/LICENSE-2.0)
- Fiware components: [GNU Affero GPL](http://www.gnu.org/licenses/why-affero-gpl.en.html)
