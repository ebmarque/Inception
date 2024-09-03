# Inception Project

## Overview

The **Inception** project is a comprehensive DevOps exercise designed to provide hands-on experience in systems administration, containerization, and cloud infrastructure. This project tasks you with building a secure, scalable, and functional multi-service environment using Docker. By deploying essential services such as WordPress, MariaDB, and an NGINX web server, you will simulate a real-world cloud infrastructure, gaining deep insights into modern IT operations.

## Project Objectives

The primary objectives of the Inception project are:

1. **Containerization**: Utilize Docker to create isolated, manageable, and scalable containers for various services.
  
2. **Service Deployment**: Implement and configure the following services within a virtualized environment:
   - **WordPress**: A widely-used content management system (CMS) for web development.
   - **MariaDB**: An open-source relational database management system, a fork of MySQL, serving as the backend for WordPress.
   - **NGINX**: A high-performance web server and reverse proxy server, managing incoming HTTP requests.
   - **File Server**: A secure file transfer server using FTP or SFTP protocols.

3. **Networking**: Configure a virtual network that enables secure and efficient communication between containers, mirroring the complexities of a production environment.

4. **Security**: Implement security best practices, including:
   - SSL/TLS encryption for web traffic.
   - Configuring firewall rules and network isolation.
   - Ensuring secure access to services.

5. **Automation and Orchestration**: Leverage orchestration tools to automate the deployment, management, and scaling of containerized services, ensuring efficiency and reliability.

6. **Scalability**: Design the infrastructure to be easily scalable, allowing for the addition of new services or the expansion of existing ones with minimal effort.

## Project Structure

The project is structured as follows:

- **Docker Configuration**: Each service runs in its own Docker container, ensuring isolation and ease of management. Docker Compose is used to define and manage the multi-container setup.

- **Service Setup**: 
  - **WordPress**: Configured within its container, connected to the database for dynamic content management.
  - **MariaDB**: Deployed in a separate container, serving as the database backend for WordPress.
  - **NGINX**: Set up as a reverse proxy, managing HTTP requests and directing traffic to the appropriate containerized service.
  - **File Server**: Deployed in its own container, providing secure file transfer capabilities.

- **Networking and Security**: 
  - Establish a Docker network to enable secure communication between services.
  - Implement SSL/TLS certificates to encrypt web traffic and secure communications.
  - Configure firewall rules and access controls to protect the infrastructure from unauthorized access.

- **Automation and Orchestration**: Use Docker Compose or similar orchestration tools to automate the deployment and lifecycle management of the containerized environment.

## Conclusion

The Inception project at 42 School is a critical exercise in mastering the complexities of cloud infrastructure and DevOps practices. By completing this project, you will develop a solid foundation in containerization, service deployment, and infrastructure management, all of which are essential skills for a career in modern IT and DevOps. This project not only sharpens technical abilities but also fosters a deep understanding of how to build and maintain secure, scalable, and robust infrastructures.

---

**Author**: Ebenezer Marquezine

**Contact**: ebenezermarquezine@gmail.com

**Date**: September 2024
