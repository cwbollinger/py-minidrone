#!/usr/bin/env python

import curses
import time
import threading
import minidrone
import dronedict
import random

DRONEMAC = 'E0:14:F6:32:3D:29'

def new_direction():
    global t, move, moves
    move = moves[random.randrange(4)]
    print(str(move))
    t = threading.Timer(2.0, new_direction)
    t.start()

if __name__ == '__main__':
    global drone
    global t, move, moves
    drone = minidrone.MiniDrone(mac=DRONEMAC)
    moves = [drone.move_fw, drone.move_bw, drone.move_right, drone.move_left]
    move = moves[0]
    drone.connect()
    drone.takeoff()
    t = threading.Timer(1.0, new_direction)
    t.start()
    try:
        while True:
            pass
            #move()
    except KeyboardInterrupt:
        drone.land()

    drone.die()
