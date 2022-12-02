### Features

- Simple ready to use boilerplate in order to start making flakes of packages and modules.
- Easy to understand and follow.
- Well documented with comments.

# Boilerplate to start developing flakyfied Nix Package and Module

This boilerplate will eliminate your worries about packaging your software for NixOs. Leave the task of writing flake to this and focus on your software.

This boilerplate shows an example where it provides a package named "**_pkg_name_**" and its corresponding module named "**_module_name_**". The package installs a bash script to the system which can be run by the command "**_pkg_name_**".

It also provides a module called "**_module_name_**" which if added to the system provides a service called "**_pkg_name_**". Once the service is enabled and a string is provided to the option "_extra_option_", the service will keep printing this string along with the current time after 30 seconds.

#### Help

I am still learning Nix, so I need your help and contributions to improve it. Please provide your feedback and use this boilerplate to provide documentation and showcase best practices.

#### Contributors

Abhishek Adhikari ([Github](https://github.com/abhishekadhikari23 "Github") | [Twitter](https://twitter.com/xpertr2 "Twitter") | [Website](https://www.the-xpert.me/ "Website") | [Email](mailto:hi@abhishekadhikari.rocks "Email"))

#### License

The Creative Commons Zero v1.0 Universal.
