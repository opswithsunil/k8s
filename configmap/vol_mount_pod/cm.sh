kubectl create cm cmfile --from-file=db.txt -n practice  # <= one key and multiple values

#                    or

#kubectl create cm envfile --from-env-file=db.txt -n practice  # <= multiple keys with multiple values

