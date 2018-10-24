
"use strict";

let trajFeedback = require('./trajFeedback.js');
let trajResult = require('./trajResult.js');
let trajGoal = require('./trajGoal.js');
let trajAction = require('./trajAction.js');
let trajActionGoal = require('./trajActionGoal.js');
let trajActionResult = require('./trajActionResult.js');
let trajActionFeedback = require('./trajActionFeedback.js');

module.exports = {
  trajFeedback: trajFeedback,
  trajResult: trajResult,
  trajGoal: trajGoal,
  trajAction: trajAction,
  trajActionGoal: trajActionGoal,
  trajActionResult: trajActionResult,
  trajActionFeedback: trajActionFeedback,
};
