#!/usr/bin/env python3
'''
    example_flask_app.py
    Jeff Ondich, 22 April 2016

    A slightly more complicated Flask sample app than the
    "hello world" app found at http://flask.pocoo.org/.
'''
import sys
import flask
import json
import psycopg2

app = flask.Flask(__name__)

def get_connection():
    password = ''
    database = 'partidaa'
    user = 'partidaa'
    connection = none
    try:
        connection = psycopg2.connect(database=database, user=user, password=password)
    except Exception as e:
        print(e)
    return connection

def get_select_query_results(connection, query, parameters=None):
    '''
    Executes the specified query with the specified tuple of
    parameters. Returns a cursor for the query results.
    Raises an exception if the query fails for any reason.
    '''
    cursor = connection.cursor()
    if parameters is not None:
        cursor.execute(query, parameters)
    else:
        cursor.execute(query)
    return cursor




# Who needs a database when you can just hard-code some actors and movies?
food_items = []
brands = []
serving_size_unit = []

statList = [
'calories', 'calories_fat', 'total_fat', 'sat_fat', 'trans_fat_acid', 'poly_unsat_fat',
'mono_unsat_fat', 'cholesterol', 'sodium', 'total_carb', 'dietary_fiber', 'sugars', 'protein',
'vitamin_A', 'vitamin_C', 'calcium', 'iron', 'potassium'
]

@app.route('/')
def hello():
    return 'Hello, Citizen of CS257.'

@app.route('/fooditems')
def get_food_items():
    ''' Returns a list of all items  '''
    item_list = []
    stat = flask.request.args.get('stat')
    min_quantity = flask.request.args.get('sq', default=0, type=int)
    max_quantity = flask.request.args.get('mq', default=0, type=int)
    for item in items:
        stat_index = statList.index(stat) + 1
        if item[stat_index].get() <= max_quantity and item[stat_index].get() >= min_quantity:
            item_list.append(item)
    return json.dumps(item_list)

@app.route('/brands')
def get_brands():
    ''' Returns a list of all brands '''
    brand_list = []
    for brand in brands:
        brand_list.append(brand)
    return json.dumps(brand_list)
    

if __name__ == '__main__':
    if len(sys.argv) != 3:
        print('Usage: {0} host port'.format(sys.argv[0]))
        print('  Example: {0} perlman.mathcs.carleton.edu 5101'.format(sys.argv[0]))
        exit()

    host = sys.argv[1]
    port = int(sys.argv[2])
    app.run(host=host, port=port, debug=True)
