/******************************************************************
 *                                                               _
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
 *	- Document: server.js
 *	- Author: aleen42
 *	- Description: Booting files for servers
 *	- Create Time: __${TIME}__
 *	- Update Time: __${TIME}__
 *
 *****************************************************************/

/* global require */

const express = require('express');

const port = '3728'; // port to bind
const app = express();

'__${WEBPACK}__'

app.listen(`${port}`, () => console.log(`Please visit at http://localhost:${port}`));
