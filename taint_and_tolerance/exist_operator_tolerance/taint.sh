#create taint of node
# in this taint schedular not assign pod to this worker node

# if we tolerance include with pod then pod assign to this node(worker node)
kubectl taint node ip-192-168-178-13.ap-south-1.compute.internal mysize=large:NoSchedule



# This taint assign to node then all pod are terminate
# kubectl taint node ip-192-168-178-13.ap-south-1.compute.internal mysize=large:NoExecute