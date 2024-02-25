# Visualize the distribution of meteorite classes using Python's Matplotlib library

import matplotlib.pyplot as plt
import seaborn as sns

# Data Retrieved from SQL Query: The top 10 meteorite classes based on the count of meteorites along with total mass of each class
meteorite_classes = ['L6', 'H5', 'L5', 'H6', 'H4', 'LL5', 'LL6', 'L4', 'H4/5', 'CM2']
meteorite_counts = [8333, 7160, 4815, 4528, 4222, 2766, 2045, 1255, 428, 414]
meteorite_masses = [12, 15, 9, 4, 4, 1, 1, 2, 1, 0] # converted and rounded from grams to tons


# Create a bar chart
plt.figure(figsize=(10, 6))
plt.bar(meteorite_classes, meteorite_counts, color='skyblue')
plt.xlabel('Meteorite Class')
plt.ylabel('Count')
plt.title('Distribution of Meteorite Classes using Bar Chart')
plt.show()

# Create a pie chart
plt.figure(figsize=(8, 8))
plt.pie(meteorite_counts, labels=meteorite_classes, autopct='%1.1f%%', startangle=140)
plt.title('Distribution of Meteorite Classes using Pie Chart')
plt.axis('equal')
plt.show()

# Create a boxplot
sns.boxplot(x=meteorite_classes, y=meteorite_masses)
plt.xlabel('Meteorite Class')
plt.ylabel('Mass')
plt.title('Distribution of Meteorite Masses by Class using Boxplot')
plt.show()

