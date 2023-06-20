#import required libraries
import numpy as np
import scipy as sp
import matplotlib.pyplot as plt

#define constants
SPEAKERS_PER_COUNTRY = 12
NUMBER_OF_COUNTRIES = 10

#defining a function to calculate the number of speakers needed in each session
def calculate_number_of_speakers(number_of_countries):
  if number_of_countries <= 10:
    speakers_required = number_of_countries * SPEAKERS_PER_COUNTRY
  else:
    speakers_required = (number_of_countries * 3) + 10
  return speakers_required

#defining a function to determine the maximum number of speakers in the session
def calculate_max_speakers(number_of_countries):
  if number_of_countries <= 10:
    max_speakers = SPEAKERS_PER_COUNTRY
  else:
    max_speakers = number_of_countries * 3
  return max_speakers

#defining a function to calculate the total number of sessions
def calculate_number_of_sessions(number_of_countries):
  number_of_sessions = calculate_number_of_speakers(number_of_countries) // calculate_max_speakers(number_of_countries)
  return number_of_sessions

#creating an array with number of countries
number_of_countries_arr = np.arange(NUMBER_OF_COUNTRIES + 1)

#creating an array to store the calculated results
speakers_requirement_arr = np.zeros(NUMBER_OF_COUNTRIES + 1)

#the loop to calculate the number of speakers required
for i in number_of_countries_arr:
  speakers_requirement_arr[i] = calculate_number_of_speakers(i)

#the loop to calculate the max number of speakers in each session
max_speakers_arr = np.zeros(NUMBER_OF_COUNTRIES + 1)
for i in number_of_countries_arr:
  max_speakers_arr[i] = calculate_max_speakers(i)

#the loop to calculate the total number of sessions
number_of_sessions_arr = np.zeros(NUMBER_OF_COUNTRIES + 1)
for i in number_of_countries_arr:
  number_of_sessions_arr[i] = calculate_number_of_sessions(i)

#plotting the results
plt.plot(number_of_countries_arr, speakers_requirement_arr, 'b')
plt.plot(number_of_countries_arr, max_speakers_arr, 'g--')
plt.plot(number_of_countries_arr, number_of_sessions_arr, 'r-.')
plt.xlabel('Number of countries')
plt.ylabel('Speakers and Sessions')
plt.legend(('Speakers required', 'Max Speakers per session', 'Total Sessions'))
plt.title('Paths to Peace')
plt.show()