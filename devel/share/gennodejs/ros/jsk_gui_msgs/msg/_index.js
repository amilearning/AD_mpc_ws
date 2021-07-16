
"use strict";

let VoiceMessage = require('./VoiceMessage.js');
let AndroidSensor = require('./AndroidSensor.js');
let MultiTouch = require('./MultiTouch.js');
let DeviceSensor = require('./DeviceSensor.js');
let Tablet = require('./Tablet.js');
let SlackMessage = require('./SlackMessage.js');
let Action = require('./Action.js');
let Touch = require('./Touch.js');
let MagneticField = require('./MagneticField.js');
let Gravity = require('./Gravity.js');
let TouchEvent = require('./TouchEvent.js');

module.exports = {
  VoiceMessage: VoiceMessage,
  AndroidSensor: AndroidSensor,
  MultiTouch: MultiTouch,
  DeviceSensor: DeviceSensor,
  Tablet: Tablet,
  SlackMessage: SlackMessage,
  Action: Action,
  Touch: Touch,
  MagneticField: MagneticField,
  Gravity: Gravity,
  TouchEvent: TouchEvent,
};
