#Brasileirao2015
Web application with teams and players of the Brazilian soccer championship.

##Installation
```
$ git clone https://github.com/jessicalins/brasileirao2015.git

$ cd brasileirao2015/

$ bundle install
```
##Database creation
```
$ rake db:create

$ rake db:migrate

$ rake db:seed
```
##Troubleshooting

Some versions of the ruby in the OS X can present issues with the **therubyracer** gem. In case of any problem, try to uninstall the libv8 and install the **therubyracer** gem again:
```
$ gem uninstall libv8 -a -x

$ bundle install

$ gem install therubyracer -v '0.12.0'
```
