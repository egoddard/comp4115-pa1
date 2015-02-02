#!/usr/bin/env python
import requests
from bs4 import BeautifulSoup
import cPickle as pickle
from time import sleep

def main():
    with open("pop.pkl", 'rb') as f:
        states = pickle.load(f)

    url = "http://www.brewersassociation.org/statistics/by-state/"
    
    with open('states.txt', 'w') as f:
        for state in states:
            payload = {'state': state}
            request = requests.get(url, params=payload)
            states[state]['craft_breweries'] = get_brewery_count(request.text) 
            print(states[state]) 
            f.write("{name},{abbr},{pop},{breweries}\n"
                    .format(name=states[state]['name'], abbr=state,
                            pop=states[state]['population'],
                            breweries=states[state]['craft_breweries']))
            sleep(5)

def get_brewery_count(state):
    try:
        page = BeautifulSoup(state)
        total_div = page.find("div", class_="total")
        total = total_div.find("span", class_="count")
    except AttributeError:
        return 0

    return int(total.getText())


if __name__ == '__main__':
    main()

