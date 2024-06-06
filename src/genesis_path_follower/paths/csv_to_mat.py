import pandas as pd
import numpy as np
from scipy.io import savemat

# Load the CSV file into a DataFrame
df = pd.read_csv("/home/nitish/Documents/catkin_ws_mpc/src/genesis_path_follower/paths/solio2.csv")

# Extract the first entry of "mode" and convert it to a shape of (1,)
mode_first_entry = np.array([df["mode"].values[0]])
print(mode_first_entry)

# Convert the rest of the variables to 1x6703 arrays
variables = {
    "a": np.array([df["a"].values]),
    "psi": np.array([df["psi"].values]),
    "df": np.array([df["df"].values]),
    "lon": np.array([df["lon"].values]),
    "lat": np.array([df["lat"].values]),
    "mode": mode_first_entry,
    "v": np.array([df["v"].values]),
    "y": np.array([df["y"].values]),
    "x": np.array([df["x"].values]),
    "t": np.array([df["t"].values])
}

# Save the dictionary of arrays to a .mat file
savemat("solio2.mat", variables)
print("MAT file saved successfully.")
