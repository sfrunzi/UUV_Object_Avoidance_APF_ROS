
"use strict";

let GoToIncremental = require('./GoToIncremental.js')
let SetPIDParams = require('./SetPIDParams.js')
let Hold = require('./Hold.js')
let IsRunningTrajectory = require('./IsRunningTrajectory.js')
let GetMBSMControllerParams = require('./GetMBSMControllerParams.js')
let AddWaypoint = require('./AddWaypoint.js')
let InitCircularTrajectory = require('./InitCircularTrajectory.js')
let StartTrajectory = require('./StartTrajectory.js')
let InitRectTrajectory = require('./InitRectTrajectory.js')
let GetPIDParams = require('./GetPIDParams.js')
let SwitchToManual = require('./SwitchToManual.js')
let GoTo = require('./GoTo.js')
let InitWaypointSet = require('./InitWaypointSet.js')
let ClearWaypoints = require('./ClearWaypoints.js')
let InitHelicalTrajectory = require('./InitHelicalTrajectory.js')
let SwitchToAutomatic = require('./SwitchToAutomatic.js')
let InitWaypointsFromFile = require('./InitWaypointsFromFile.js')
let GetSMControllerParams = require('./GetSMControllerParams.js')
let SetMBSMControllerParams = require('./SetMBSMControllerParams.js')
let SetSMControllerParams = require('./SetSMControllerParams.js')
let GetWaypoints = require('./GetWaypoints.js')
let ResetController = require('./ResetController.js')

module.exports = {
  GoToIncremental: GoToIncremental,
  SetPIDParams: SetPIDParams,
  Hold: Hold,
  IsRunningTrajectory: IsRunningTrajectory,
  GetMBSMControllerParams: GetMBSMControllerParams,
  AddWaypoint: AddWaypoint,
  InitCircularTrajectory: InitCircularTrajectory,
  StartTrajectory: StartTrajectory,
  InitRectTrajectory: InitRectTrajectory,
  GetPIDParams: GetPIDParams,
  SwitchToManual: SwitchToManual,
  GoTo: GoTo,
  InitWaypointSet: InitWaypointSet,
  ClearWaypoints: ClearWaypoints,
  InitHelicalTrajectory: InitHelicalTrajectory,
  SwitchToAutomatic: SwitchToAutomatic,
  InitWaypointsFromFile: InitWaypointsFromFile,
  GetSMControllerParams: GetSMControllerParams,
  SetMBSMControllerParams: SetMBSMControllerParams,
  SetSMControllerParams: SetSMControllerParams,
  GetWaypoints: GetWaypoints,
  ResetController: ResetController,
};
