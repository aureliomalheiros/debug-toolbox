# Debug Tool BOX

![tshoot-tool-box](img/tshoot-meme.jpg)

This repository serves as a comprehensive toolkit for troubleshooting and debugging across various platforms and environments. It contains scripts, utilities, and resources to assist in diagnosing and resolving technical issues effectively.

---

### Docker Image: motoko-kusanagi

A lightweight and powerful Docker image based on debian:12.9-slim, designed for troubleshooting, network diagnostics, and system analysis. Named after Motoko Kusanagi, the iconic cyborg from Ghost in the Shell, this image is your go-to tool for hacking, debugging, and exploring systems.

##### Features

This image comes pre-installed with a suite of essential tools for:

- Network diagnostics
- System analysis
- Web and API debugging
- Miscellaneous utilities

#### How to use

- Local Running:

```
sudo docker build -t motoko-kusanagi .
sudo docker run -it motoko-kusanagi
```

- In Cluster Kubernetes

> [!Important]
> I fix the image using `docker buildx`, so in this case I add multi-arquitecture

Generate image:

```
sudo docker buildx build --platform linux/amd64,linux/arm64 -t seu-usuario/nome-da-imagem:tag .
```

### Reference

- [Multi-Platform Builds](https://docs.docker.com/build/building/multi-platform/)
