# multiple keys with multiple values

kubectl create cm envcm --from-env-file=db.properties --from-env-file=db2.properties --from-env-file=db3.properties --from-env-file=db4.properties -n practice
