#! eqela sling-r121
#
# This file is part of Jkop
# Copyright (c) 2016-2018 Job and Esther Technologies Oy
# Copyright (c) 2018-2019 Eqela Oy
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#

lib scf:r121
import jk.fs
import jk.lang
import jk.script
import scf.sling.sushi

var script = new Script()
var compiler = new SlingToSushiCompilerKit(script.ctx)
var file = new FileKit(script.ctx)

script.command("build", func(args) {
	compiler.compileLibrary({
		"source" : "src",
		"workdir" : "build/workdir-local",
		"destdir" : "build",
		"version" : "local",
		"install" : true
	})
})

script.command("release", func(args) {
	var version = script.requireParameter(args, 0, "version")
	compiler.compileLibrary({
		"source" : "src",
		"version" : version,
		"workdir" : "build/workdir-" .. version,
		"destdir" : "build"
	})
})

script.command("clean", func(args) {
	file.remove("build")
})

script.main(args)
