/******************************************************************
 *                                                                _
 * 	 _____  _                           ____  _                 |_|
 *	|  _  |/ \   ____  ____ __ ___     / ___\/ \   __   _  ____  _
 *	| |_| || |  / __ \/ __ \\ '_  \ _ / /    | |___\ \ | |/ __ \| |
 *	|  _  || |__. ___/. ___/| | | ||_|\ \___ |  _  | |_| |. ___/| |
 *	|_/ \_|\___/\____|\____||_| |_|    \____/|_| |_|_____|\____||_|
 *
 *	===============================================================
 *		   More than a coder, More than a designer
 *	===============================================================
 *
 *	- Document: webpack.config.js
 *	- Author: aleen42
 *	- Description: A configuration file for configuring Webpack
 *	- Create Time: May, 30th, 2017s
 *	- Update Time: May, 30th, 2017
 *
 *****************************************************************/

const path = require('path');

module.exports = {
    entry: './src/index.js',
    output: {
        path: path.join(__dirname, 'build'),
        filename: 'index.js'
    },
    resolve: {
        alias: require('./src/alias.js')
    },
    resolveLoader: {
        alias: {
            text: 'html-loader'
        }
    },
    module: {
        loaders: [
            /** style */
            {
                test: /\.css/,
                loader: 'style!css?sourceMap',
            },

            /** babel */
            {
                test: /\.jsx?$/,
                loader: ['babel-loader', 'eslint-loader'],
                exclude: /node_modules/,
                query: {
                    presets: ['es2015', 'react']
                }
            }
        ]
    }
};
