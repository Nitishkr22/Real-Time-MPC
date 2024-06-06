
"use strict";

let LaneReport = require('./LaneReport.js');
let SteeringReport = require('./SteeringReport.js');
let VehicleImuReport = require('./VehicleImuReport.js');
let ESRTrackReport = require('./ESRTrackReport.js');
let MandoObjectReport = require('./MandoObjectReport.js');
let WheelSpeedReport = require('./WheelSpeedReport.js');
let ESRValidReport = require('./ESRValidReport.js');
let TurnSignalReport = require('./TurnSignalReport.js');
let SRRStatusReport = require('./SRRStatusReport.js');
let SRRTrackReport = require('./SRRTrackReport.js');

module.exports = {
  LaneReport: LaneReport,
  SteeringReport: SteeringReport,
  VehicleImuReport: VehicleImuReport,
  ESRTrackReport: ESRTrackReport,
  MandoObjectReport: MandoObjectReport,
  WheelSpeedReport: WheelSpeedReport,
  ESRValidReport: ESRValidReport,
  TurnSignalReport: TurnSignalReport,
  SRRStatusReport: SRRStatusReport,
  SRRTrackReport: SRRTrackReport,
};
