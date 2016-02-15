# Mainflux Fiware

[![License](https://img.shields.io/badge/license-Apache%20v2.0-blue.svg)](LICENSE) [![Join the chat at https://gitter.im/Mainflux/mainflux](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/Mainflux/mainflux?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

### About
Mainflux IoT Cloud Platform based on [Fiware](https://www.fiware.org/)

It allows device, user and application connections over various network protocols, like HTTP, MQTT, WebSocket and CoAP, making a seamless bridge between them. As a consequence, Mainflux represents highly secure and highly optimised M2M platform based on the cutting-edge standards and approaches in the industry.

### System Architecture
Mainflux is used to inter-connect davices and applications in a typical IoT system architecture:
![Cloud Architecture](https://github.com/Mainflux/mainflux-doc/blob/master/img/cloudArchitecture.jpg)

It has however some additional roles in the system - like device management, data history storage (time series and Big Data) and various types of event processing and analytics. See [Features](https://github.com/Mainflux/mainflux#features) chapter below.

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
