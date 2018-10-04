##Addison Partida
## October 1 2018
## Software Design Fall 2018 \\ test-api.py
import requests
import json
import sys

def APIcall(food):
    #GET parameters
    parameters = {"phrase":food,"results":"0:5","fields":"item_name,nf_calories,nf_total_fat",
                  "appId":"49b84782","appKey":"a8f6a849d585cd6e08b92030bf9a9c5a"}

    #make a GET request
    response = requests.get("https://api.nutritionix.com/v1_1/search/{" + food+"}",params=parameters)

    data = response.json()


    return MoreInfo(data)

def MoreInfo(dictionary):
    d={}
    #part2
    for object in dictionary['hits']:
        fields  = object['fields']
        d[fields["item_name"]] = fields
    #display the name of each cookie
    #for object in dicionary, print item_name
    print("These are our food items")
    for item in d:
        print ( item ,"\n")
    interests = input("Enter food item you would like more information about?")
    if interests in d:
        print(d[interests])
    else:
        MoreInfo(dictionary)
def main():
    if len(sys.argv) > 1:
        if len(sys.argv) == 3:
            food = sys.argv[1] + " "+ sys.argv[2]
        elif len(sys.argv) ==2:
            food = sys.argv[1]
    API = APIcall(food)
if __name__ == '__main__':
    main()
