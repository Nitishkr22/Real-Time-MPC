import pandas as pd
import matplotlib.pyplot as plt

def plot_csv_with_df(csv_file, num_points=20):
    # Read the CSV file
    df = pd.read_csv(csv_file)

    # Check if the necessary columns are present
    if 'x' not in df.columns or 'y' not in df.columns or 'df' not in df.columns:
        raise ValueError("CSV file must contain 'x', 'y', and 'df' columns")

    # Select a subset of the data
    df_subset = df.head(num_points)

    # Plot the x and y values
    plt.figure(figsize=(10, 6))
    plt.scatter(df_subset['x'], df_subset['y'], c='blue', label='Position')

    # Annotate each point with the corresponding df value
    for i in range(len(df_subset)):
        plt.text(df_subset['x'][i], df_subset['y'][i], f'{df_subset["df"][i]:.5f}', fontsize=9, ha='right')

    # Set labels and title
    plt.xlabel('x')
    plt.ylabel('y')
    plt.title('Plot of x and y with df annotations (first {} points)'.format(num_points))
    plt.legend()
    plt.grid(True)

    # Show the plot
    plt.show()

# Example usage
csv_file = 'data.csv'  # Replace with your CSV file path
plot_csv_with_df(csv_file, num_points=20)