// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {StudentAttendance} from "../src/StudentAttendance.sol";

contract StudentAttendanceScript is Script {
    StudentAttendance public studentattendance;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        studentattendance = new StudentAttendance();

        vm.stopBroadcast();
    }
}
