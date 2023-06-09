Jkop - A generic and comprehensive framework for software application development
=================================================================================

Jkop is a multi-platform, multi-language application development framework and API,
intended to support the development of different kinds of applications on multiple
programming languages and operating systems. Fully developed in the Sling programming
language, the code is translated upon compilation to different programming languages
to support the different platforms. Currently Jkop fully supports development in
Sling, Java, C#, Objective-C and JavaScript, and is actively tested on Android, iOS,
macOS / Mac OS X, Windows, Linux and the web.

Jkop is fully written in the [Sling Programming Language](http://eqdn.tech/sling),
and also serves as the default application development framework for Sling applications.
Jkop is also an integral part of the Eqela development framework.

Compiling Jkop
--------------

The Sling compiler is distributed in Javascript format through NPM. To compile Jkop,
you will therefore need to install Node.JS (v16 or higher), which includes NPM.

To compile for Node.JS:

```
npm run build-node-js
```

This performs a full build of all modules of Jkop, and produces Javascript code as
the output. The compiled version of the library is then found in the "dist"
subdirectory.

More information:

* Jkop website: http://www.jkop.org
* Documentation and tutorials: https://eqdn.tech/jkop/
* The Sling programming language: http://eqdn.tech/sling
* About Eqela: https://www.eqela.com
