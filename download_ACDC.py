import requests
import json

url = "https://humanheart-project.creatis.insa-lyon.fr/database/api/v1/resource/download"

# Headers
headers = {"Content-Type": "application/json"}

# Parameters
folder = {"folder": ["637218e573e9f0047faa00fc"]}
params = {"resources": json.dumps(folder)}

# Make a GET request to fetch the data
response = requests.get(url, headers=headers, params=params)

# Check if request was successful
if response.status_code == 200:
    # Save the data as a .zip file
    with open('output.zip', 'wb') as f:
        f.write(response.content)
else:
    print(f'Failed to retrieve data: {response.status_code}')