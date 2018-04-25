# net-measurement 

A tool to diagnose network performance on different node. including latency, bandwidth and package loss

# Deployment

### Clone the project

```
    git clone https://github.com/FuQiFeiPian/net-measurement

```

### Install dependencies

* Install tcptraceroute

```
	$ sudo apt install tcptraceroute

```

* Install tcpping

```
	$ cd /usr/bin
	$ sudo wget http://www.vdberg.org/~richard/tcpping
	$ sudo chmod 755 tcpping
```

* Install iperf3

```
	$ sudo apt install iperf3
```

### Usage

* Edit constants.sh, add IP for below devices
 
 	* AP - Access Point
 	* SR - Soft router
 	* VPS - Virtual Private Server
 	* FI - Foreign Internet
 	* CI - Chinese Internet
 
 * on PC in intranet

```
	$ ./T_PC_latency.sh
	$ ./T_PC_ploss.sh

```

 * on SR

```
	$ ./T_SR_latency.sh
	$ ./T_SR_ploss.sh
	$ ./T_SR_VPS_bandwidth.sh
```

* on VPS

```
	$ ./T_VPS_latency.sh  
	$ ./T_VPS_ploss.sh

```


# Logistics

### Contributing

Please read [CONTRIBUTING.md](https://github.com/FuQiFeiPian/net-measurement/blob/master/docs/CONTRIBUTING.md) for contributing.

For details on our [code of conduct](https://github.com/FuQiFeiPian/net-measurement/blob/master/docs/CODE_OF_CONDUCT.md), and the process for submitting pull requests to us.

### Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the tags on this repository

### Authors

* **dorrywhale** - *Initial work* - [dorrywhale](https://github.com/dorrywhale)

See also the list of [contributors](https://github.com/FuQiFeiPian/net-measurement/graphs/contributors) who participated in this project.

### Acknowledgments

See [Acknowledgments](https://github.com/FuQiFeiPian/net-measurement/blob/master/docs/ACKNOWLEDGMENTS.md)


### License

This project is licensed under the MIT License - see the [LICENSE.md](https://github.com/FuQiFeiPian/net-measurement/blob/master/LICENSE.md) file for details


