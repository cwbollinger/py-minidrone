#!/usr/bin/env python

import curses
import time
import threading
import minidrone
import dronedict

DRONEMAC = 'E0:14:F6:32:3D:29'

if __name__ == '__main__':
    global drone, state, message, config, speed, battery
    state = S_DISCONNECTED
    message = speed = battery = ''
    config = dict()
    drone = minidrone.MiniDrone(mac=DRONEMAC, callback=refresh_data)
    drone.connect()
    drone.takeoff()
    time.sleep(1)
    drone.land()

#    curses.wrapper(main_loop)
    drone.die()
#    curses.curs_set(1)
#    curses.nl()

