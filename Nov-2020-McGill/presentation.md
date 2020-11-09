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
- The easy way - `<automated repo>`
- The hard way - `https://github.com/kelseyhightower/kubernetes-the-hard-way`

### Accessing the cluster
- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- `kubeconfig`
- `context`
- `current-context`, `use-context`

### Kubernetes Basics
- [Namespace](https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/) - To each their own
- [Pods](https://kubernetes.io/docs/concepts/workloads/pods/) - More than just containers
- [Deployments](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/) - A kubernetes standard for deploying applications
- [ReplicaSets](https://kubernetes.io/docs/concepts/workloads/controllers/replicaset/) - Just what exactly lies between deployment and underlying pods?
- [ConfigMaps](https://kubernetes.io/docs/concepts/configuration/configmap/) - Just a map.
- [Secrets](https://kubernetes.io/docs/concepts/configuration/secret/) - Also a map. But slightly secret? unless you're inside the cluster, then it's just a map.
- [Services](https://kubernetes.io/docs/concepts/services-networking/connect-applications-service/) - Because pods don't listen to anything you say.
	[Types of services](https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types):
	- ClusterIP -  What happens in cluster, remains in cluster.
	- [NodePort](https://kubernetes.io/docs/concepts/services-networking/service/#nodeport) - Let's be grateful to the host that runs our application.
	- [LoadBalancer](https://kubernetes.io/docs/concepts/services-networking/service/#loadbalancer) - Who let the dogs out?
	- [Headless Service](https://kubernetes.io/docs/concepts/services-networking/service/#headless-services)

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
- Use [Stern](https://github.com/wercker/stern#installation)

### Init-Containers
- Do something before running your `workload container`

### Kubernetes Advanced concepts
- [Service Account](https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/) - Let there be robots
- [Daemon Sets](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/) - One at a time please!
- [StatefulSets](https://kubernetes.io/docs/concepts/workloads/controllers/statefulset/) - Because why wouldn't you want a storage for containers!?
- [Ingress](https://kubernetes.io/docs/concepts/services-networking/ingress/) - Kubernetes services make it easier to access resources. Let's make it difficult.
- [Ingress Controllers](https://kubernetes.io/docs/concepts/services-networking/ingress-controllers/)
- [Jobs and CronJobs](https://kubernetes.io/docs/concepts/workloads/controllers/job/) - Running resources to completion

### Kustomize
- Because editing yamls is annoying let's use [Kustomize](https://github.com/kubernetes-sigs/kustomize)

### Scheduling and eviction
- [Taints and Tolerations](https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/)
- [Node selector](https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#nodeselector)
- [Pod Affinity and anti-affinity](https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity)
- [Node Affinity and anti-affinity](https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#affinity-and-anti-affinity)

### Custom Resources and extending kubernetes APIs
- Make your own resource - [Custom Resource Definition](https://kubernetes.io/docs/concepts/extend-kubernetes/api-extension/custom-resources/)
- Manage your resources
- Controller for your resources, extend kubernetes APIs
- Brief overview of [operator-sdk](https://github.com/operator-framework/operator-sdk) project and what it does.

### Packaging of application into Charts
- [Helm](https://helm.sh/) - a community standard

### Advance projects overview
- [Envoy Proxy](https://www.envoyproxy.io/)
- [Istio](https://istio.io/)
- [HelmOperator](https://github.com/fluxcd/helm-operator)
- https://www.cncf.io/projects/

### Questions?
