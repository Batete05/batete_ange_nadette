# DevOps Exam Express.js App with Nginx Reverse Proxy

## 1. Express.js Application

- Simple Node.js app using Express.js
- Responds with `Hello devOps!` on GET /
- Listens on port 3000

## 2. Dockerization

### Build the Express.js Docker image

```sh
docker build -t devops-exam-app .
```

### Run the Express.js container

```sh
docker run -d --name express-app -p 3000:3000 devops-exam-app
```

## 3. Nginx Reverse Proxy

### Run Nginx container with custom config

```sh
docker run -d --name nginx-proxy -p 80:80 -v "${PWD}\nginx.conf:/etc/nginx/nginx.conf:ro" nginx:alpine
```

- Nginx listens on port 80 and forwards requests to Express.js on port 3000
- Access the app at [http://localhost/](http://localhost/)

## 4. Test the Setup

- Use curl or browser:

```sh
curl http://localhost:80
# Output: hello devops!
```
