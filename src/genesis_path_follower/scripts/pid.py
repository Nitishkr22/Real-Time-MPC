
import os
import numpy as np
class PIDController:
    def __init__(self, Kp, Ki, Kd, rate_min, rate_max):
        self.Kp = Kp
        self.Ki = Ki
        self.Kd = Kd
        self.rate_min = rate_min
        self.rate_max = rate_max
        self.error =  0.0
        self.previous_error = 0.0
        self.integral = 0.0

    def update(self, desired_position, current_position):
        desired_position = np.array([desired_position])  # if needed
        current_position = np.array([current_position]) 
        self.error = desired_position - current_position
        self.integral += self.error
        derivative = self.error - self.previous_error
        output = self.Kp * self.error + self.Ki * self.integral + self.Kd * derivative
        self.previous_error = self.error
        rate = output
        rate = max(self.rate_min, min(rate, self.rate_max))

        return rate

# import numpy as np

# class PIDController:
#     def __init__(self, Kp, Ki, Kd, rate_min, rate_max, sample_time=0.3, filter_coefficient=0.08):
#         self.Kp = Kp
#         self.Ki = Ki
#         self.Kd = Kd
#         self.rate_min = rate_min
#         self.rate_max = rate_max
#         self.sample_time = sample_time
#         self.filter_coefficient = filter_coefficient
        
#         self.error = 0.0
#         self.previous_error = 0.0
#         self.integral = 0.0
#         self.previous_derivative = 0.0

#     def update(self, desired_position, current_position):
#         # Calculate error
#         self.error = desired_position - current_position
        
#         # Proportional term
#         P_term = self.Kp * self.error
        
#         # Integral term with anti-windup
#         self.integral += self.error * self.sample_time
#         I_term = self.Ki * self.integral
        
#         # Derivative term with filtering
#         derivative = (self.error - self.previous_error) / self.sample_time
#         derivative = self.filter_coefficient * derivative + (1 - self.filter_coefficient) * self.previous_derivative
#         D_term = self.Kd * derivative
        
#         # Compute PID output
#         output = P_term + I_term + D_term
        
#         # Update previous values
#         self.previous_error = self.error
#         self.previous_derivative = derivative
        
#         # Clamp the output to rate limits
#         rate = max(self.rate_min, min(output, self.rate_max))
        
#         # Anti-windup: prevent integral from growing when the output is clamped
#         if rate == self.rate_max and self.error > 0:
#             self.integral -= self.error * self.sample_time
#         elif rate == self.rate_min and self.error < 0:
#             self.integral -= self.error * self.sample_time

#         return rate