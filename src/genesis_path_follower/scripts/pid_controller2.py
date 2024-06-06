
import matplotlib.pyplot as plt
import numpy as np

class PIDControllervel:
    def __init__(self, kp, ki, kd):
        self.kp = kp
        self.ki = ki
        self.kd = kd
        self.error = 0
        # self.rate_min = rate_min
        # self.rate_max = rate_max
        self.prev_error = 0
        self.integral = 0

    def compute(self, setpoint, current_value):
        self.error = setpoint - current_value
        self.integral += self.error
        derivative = self.error - self.prev_error
        
        output = self.kp * self.error + self.ki * self.integral + self.kd * derivative
        self.prev_error = self.error
        
        return output