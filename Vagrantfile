#######################################################################
## Make sure this is for vagrant V2
Vagrant.configure("2") do |config|
  
  #####################################################################
  ## Define a new node called "django-centos7"
	config.vm.define "django-centos7" do |pm|
    
    
    ###################################################################
		## Map the local puppet configuration to the django-centos7
		#pm.vm.synced_folder "./django-centos7", "/etc/puppet"
		pm.vm.synced_folder "./django", "/home/vagrant/django"
		pm.vm.synced_folder "./provisionscripts", "/provisionscripts"
    
    ## Use a simple shell script to configure the box only once
    pm.vm.provision "shell", path: "./provisionscripts/install-django.sh",
    run: "once"
	


    ###################################################################  
    ## We use the puppet centos 7 box image as a base.
		pm.vm.box = "puppetlabs/centos-7.0-64-puppet"

    ###################################################################  
    ## Set the fully qualified domain name
    pm.vm.hostname = "django-centos7.local"
    
    ###################################################################
    ## We create a private network interface with access to the internet.
		#pm.vm.network "private_network", ip: "192.168.2.2"
		## I want an ip, acessible from the host machine
		## for the rails webserver
		pm.vm.network "public_network", ip: "192.168.0.27"

    ###################################################################
		## Enable the virtualbox GUI, mainly for debugging, it doesn't hurt.
    ## Give it a name in virtualbox and give is 1 vcpu's and 1GB of memory.
    ## You may want to change it if you are running low on system resources.
		pm.vm.provider :virtualbox do |v|
			#v.gui = true
			v.name = "django-centos7"
		end
    
  #####################################################################
  ## End of django-centos7 vm configuration.
	end 

end
