#!/bin/bash
define() {
echo "Generujem host" $HOST
multipass launch 16.04 -c 4 -d 50G -m 8G --cloud-init cka_cloudinit.yaml -n ${HOST}
sleep 120
}

# exec 0<&-
for HOST in {'ckam1','ckaw1'};
  do define $HOST;
  done

