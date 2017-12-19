const CleanWebpackPlugin = require('clean-webpack-plugin');
const HtmlWebpackPlugin  = require('html-webpack-plugin');
const UglifyJSWebpackPlugin = require('uglifyjs-webpack-plugin');
module.exports = {
	entry : "./src",
	output : {
		filename : "index.js",
		path : __dirname + "/build"
	},
	module : {
		loaders : [{
			test : /\.js$/,
			exclude : /node_modules/,
			loader : "babel-loader"
		}]
	},
	plugins : [
		new CleanWebpackPlugin(['build']),
		new HtmlWebpackPlugin({
			template : "src/index.html"
		})
	]
};
