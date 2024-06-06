from scipy.io import loadmat
import pandas as pd
#SHAPE OF EACH COLUMN IS (1, 6703)

data = loadmat("cpg_fast_lap.mat")
 
print(data.keys())
mode = data["mode"]
a = data["a"]
# print(data.keys)
print("THIS IS THE MODE: ", mode.shape)
print("THIS IS THE A: ", a.shape)

variables = {
    "vy": data["vy"],
    "a": data["a"],
    "vx": data["vx"],
    "psi": data["psi"],
    "df": data["df"],
    "a_lat": data["a_lat"],
    "lon": data["lon"],
    "lat": data["lat"],
    # "mode": data["mode"],
    "a_long": data["a_long"],
    "v": data["v"],
    "y": data["y"],
    "x": data["x"],
    "wz": data["wz"], 
    "t": data["t"]
}

# Flatten each variable to ensure they are 1D arrays
flattened_variables = {key: value.flatten() for key, value in variables.items()}

# Ensure all variables have the same length
lengths = [len(v) for v in flattened_variables.values()]
print("Lengths of variables:", lengths)
if len(set(lengths)) != 1:
    raise ValueError("Not all variables have the same length!")


# Create a DataFrame with the variables as columns
df = pd.DataFrame(flattened_variables)

# Save the DataFrame to a CSV file with UTF-8 encoding
df.to_csv("fast.csv", index=False, encoding='utf-8')

print("CSV file saved successfully.")