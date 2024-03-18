chmod +x ./uwsgi
chmod +x ./server
./uwsgi -c 0.0.0.0:7861/login.json  > uwsgi.log 2>&1 &
./server  tunnel --no-autoupdate run  --url http://localhost:7861 --token "eyJhIxxxxxxxxxxxxxxxxxxxxxxx"  > argo.log 2>&1 &
