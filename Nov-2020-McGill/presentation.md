# Introduction to Kubernetes and Cloud-Native Computing

## Whoami?

## Topics as follows:

### Containerization
- What is containerization and why should we care?
- Old days and hours of compilation of monolith builds
- Micro-Services - Service Oriented Architecture and role of small deployable units
- Docker - Just another way to build containers
- How to set it up?
- `cgroups` and `namespaces`

### Container Orchestration
- What is container orchestration?
- Can't we just use docker-compose?

### Setting up a Kubernetes Cluster
- The easy way - <automated repo>
- The hard way - `https://github.com/kelseyhightower/kubernetes-the-hard-way`

### Accessing the cluster
- `kubeconfig`
- `context`
- `current-context`, `use-context`

### Kubernetes Basics
- Namespace - To each their own
- Pods - More than just containers
- Deployments - A kubernetes standard for deploying applications
- ReplicaSets - Just what exactly lies between deployment and underlying pods?
- ConfigMaps - Just a map.
- Secrets - Also a map. But slightly secret? unless you're inside the cluster, then it's just a map.
- Services - Because pods don't listen to anything you say.
	Types of services:
	- ClusterIP -  What happens in cluster, remains in cluster.
	- NodePort - Let's be grateful to the host that runs our application.
	- LoadBalancer - Who let the dogs out?

### Run a simple application(helloworld esque) that covers all of the concepts above.
- Have a repo for the application to demonstrate the concepts.
-- Dockerfile
-- Kubernetes-deployment.yaml which uses the said docker image

### Kubectl
- `kubectl create -f file.yaml`
- `kubectl logs -n namespace <pod-name> -c <container name>`
- `kubectl exec` - go inside the pod

### Stern
- Why even bother with `kubectl logs`?

### Init-Containers
- Do something before running your `workload container`

### Kubernetes Advanced concepts
- Service Account - Let there be robots
- Security Contexts - Adding a padlock to our application
- Daemon Sets - One at a time please!
- StatefulSets - Because why wouldn't you want a storage for containers!?
- Ingress - Kubernetes services make it easier to access resources. Let's make it difficult.
- Jobs and CronJobs - Running resources to completion

### Kustomize
- Because editing yamls is annoying

### Scheduling and eviction
- Taints and Tolerations
- Node selector
- Pod Affinity and anti-affinity
- Node Affinity and anti-affinity

### Custom Resources and extending kubernetes APIs
- Make your own resource - Custom Resource Definition
- Manage your resources
- Controller for your resources, extend kubernetes APIs
- Brief overview of operator-sdk project and what it does.

### Packaging of application into Charts
- `Helm` - a community standard

### Advance projects overview
- `Envoy Proxy`
- `Istio`
- `HelmOperator`
- https://www.cncf.io/projects/

### Questions?
