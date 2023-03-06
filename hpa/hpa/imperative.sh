#imperative method of HPA

kubectl autoscale deployment webapache --cpu-percent=80 --min=1 --max=10