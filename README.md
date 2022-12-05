# Initialization

## Servers
```
cd ./servers
./init.sh [server number ie. 1]
```
Potem zmieniacie kartę sieciową na *internal -network* i nazwe dajecie *servers*

## Clients
```
cd ./clients
./init.sh [client number ie. 1]
```

Potem zmieniacie kartę sieciową na *internal -network* i nazwe dajecie *clients*

## Router1
```
cd ./router
./install.sh
shutdown -P 0
```
Zmieniacie pierwszą kartę sieciową na *internal -network* i nazwe dajecie *clients*

Zmieniacie drugą kartę sieciową na *internal -network* i nazwe dajecie *servers*

```
cd ./router
./init.sh
```
---
