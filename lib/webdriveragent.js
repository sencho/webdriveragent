/* ================================================================
 * webdriveragent by xdf(xudafeng[at]126.com)
 *
 * first created at : Tue Mar 01 2016 15:59:46 GMT+0800 (CST)
 *
 * ================================================================
 * Copyright  xdf
 *
 * Licensed under the MIT License
 * You may not use this file except in compliance with the License.
 *
 * ================================================================ */

'use strict';

var path = require('path');

exports.AGENT_URL_REG = /ServerURLHere->(.*)<-ServerURLHere/;
exports.AGENT_LAUNCHED_REG = /<-AgentLaunchedHere->/;
exports.schemeName = 'XCTUITestRunner';
exports.appName = 'XCTUITestRunner-Runner.app';
exports.agentPath = path.join(__dirname, '..', 'WebDriverAgent', 'WebDriverAgent.xcworkspace');
