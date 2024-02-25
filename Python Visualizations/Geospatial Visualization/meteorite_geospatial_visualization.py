import folium # Open terminal and pip install folium
from folium.plugins import MarkerCluster
import pandas as pd

# Latitude and longitude coordinates for the top 80 meteorites by mass
latitude = [-19.58333, 76.13333, -27.46667, 35.05, 47, -25.5, 27, -30.78333, 46.16, 26.2, -9.11667, 45.36667, 
            27.05, 25.1, -38.1, -26.21667, -10.11667, 37.5825, 44.05, -25.75, -32.1, 36.3, 19.56667, 27.5, 
            24.2, 34.46667, 21.49972, -22.36667, 35.33333, 28.7, 26.96667, -24.56667, 24.23333, -14.258, 
            -16.26667, 19.22778, 22.01833, 31.71667, 30.4, 49.96667, 38.08333, 23.08333, 19.21667, 48.7, 20.6, 
            -33.61667, 41.98, -29.58333, 42.25, 39.68333, 44.43333, 67.3, 22.81667, -29.41667, 31.85, 35.78333, 
            -24.20333, 68, 13.51667, 5.91667, 52.5, 32, 32.94889, -19.3, 43.73333, 30.80833, 44.86667, 39.93333, 
            19.7, -28.83333, 39.5, 35.16667, 27.71667, 43.36667, -31.38333, -7.56667, -33.11667, -28.23333, 
            -22.61667, 57.78333]

longitude = [17.91667, -64.93333, -60.58333, -111.03333, 88, 18, -105.1, 127.55, 134.65333, -107.83333, 
             33.06667, -122.58333, -105.43333, 107.7, 145.3, -48.6, -39.2, -99.16361, 126.16667, -70.5, 
             117.71667, 120.48333, -99.56667, -12.5, 113.4, -115.23333, 50.47222, 135.76667, -109.5, -102.73333, 
             -105.31667, 133.16667, 111.18333, -49.15917, -47.95, 56.14278, 26.08778, -102.4, -107.8, 6.53333, 
             -115.53333, -101.01667, -98.3, 45.7, 44.88333, 24, -120.54167, 139.9, 59.2, -99.86667, 87.63333, 
             160.8, -102.56667, -66.85, -110.96667, -83.25, -68.80667, 128.3, 122.45, -73, 30.33333, -95, -81.865, 
             127.76667, -71.33333, 151.3, 119.71667, -101.78333, -104.25, -109.98333, -2.645, -50.15, 
             6.78333, 109.5, 95.41667, -99.6, 55.73333, 21.13333, -112.9, -107.88333]

# Create a DataFrame from latitude and longitude data
data = pd.DataFrame({'Latitude': latitude, 'Longitude': longitude})

# Create a Folium map centered at the mean latitude and longitude
m = folium.Map(location=[data['Latitude'].mean(), data['Longitude'].mean()], zoom_start=2)

# Create a MarkerCluster layer
marker_cluster = MarkerCluster().add_to(m)

# Add markers for each data point
for idx, row in data.iterrows():
    folium.Marker([row['Latitude'], row['Longitude']]).add_to(marker_cluster)

# Save the map as an HTML file
m.save("C:\\Users\\prath\\Downloads\\code\\meteorite_landings_map.html") #REPLACE YOUR FILE DESTINATION HERE
