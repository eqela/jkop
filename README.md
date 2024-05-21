Jkop - A generic and comprehensive framework for software application development
=================================================================================

Jkop is a multi-platform, multi-language application development framework and API,
intended to support the development of different kinds of applications on multiple
programming languages and operating systems. Jkop is fully written in the
[Sling Programming Language](http://eqdn.tech/sling) and serves as the default
application development framework for Sling applications. Jkop is also an integral
part of the Eqela development framework.

Compiling Jkop
--------------

The Sling compiler is distributed in Javascript format through NPM. To compile Jkop,
you will therefore need to install Node.JS, which also includes NPM. Once Node and
NPM are installed, compiling Jkop itself can be easily done with the supplied
"actions.sling" script.

To see the available targets and build options:

```
./actions.sling
```

To compile for Node.JS:

```
./actions.sling build-all-node
```

To compile for browser:

```
./actions.sling build-all-browser
```

To compile for iOS:

```
./actions.sling build-all-ios
```

To compile for all supported platforms:

```
./actions.sling build-all
```

These commands perform full builds of all modules of Jkop, and produce output code in the
target language as their output. The compiled versions of the library are then found in the
"dist" subdirectory.

More information:

* Jkop website: http://www.jkop.org
* Documentation and tutorials: https://eqdn.tech/jkop/
* The Sling programming language: http://eqdn.tech/sling
* About Eqela: https://www.eqela.com
