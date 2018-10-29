#!/usr/bin/env python3
'''
Addison Partida & Henry Pearson
Phase5 - API.py
CS257 Jeff Ondich
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
    connection = None
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



@app.route('/')
def hello():
    return 'Hello, Citizen of CS257.'

@app.route('/food_items')
def get_food_items():
    #return 'food items'
    '''Returns a list of all items with stat(min, max)'''
    stat = flask.request.args.get('stat')
    min_quantity = flask.request.args.get('sq', default=0, type=float)
    max_quantity = flask.request.args.get('mq', default=0, type=float)
    query = "SELECT item_name, " + stat + ", servings_per_cont, unit_id FROM stats"
    unit_query = "SELECT * FROM serving_size_unit"

    item_list = []
    connection = get_connection()

    if connection is not None:
        try:
            for row in get_select_query_results(connection, query):
                unitSize = ''
                for unit in get_select_query_results(connection, unit_query):
                    if (unit[1] == row[3]):
                        unitSize = unit[0]
                item = {'item_name':row[0], stat:row[1], 'servings_per_containter':row[2], 'serving_unit':unitSize}
                if (row[1] != None and row[2] != None and min_quantity <= row[1]*row[2] <= max_quantity):
                    item_list.append(item)
        except Exception as e:
            print(e, file=sys.stderr)
        connection.close()


    return json.dumps(item_list)

@app.route('/food_items/brands/<brand_name>')
@app.route('/food_items/brands')
def get_food_items_by_brand(brand_name = None):
    #print("fooditembrands")
    '''Returns a list of food_items of the same brand'''
    item_query = "SELECT item_name, brand_id, calories, protein, total_carb, sugars, servings_per_cont, unit_id FROM stats"
    brand_query = "SELECT name, id FROM brands"
    unit_query = "SELECT * FROM serving_size_unit"
    item_list = []
    connection = get_connection()

    if connection is not None:
        try:
           brand_id_correct = ''
           if brand_name != None:
                for row in get_select_query_results(connection, brand_query):
                    if row[0].lower() == brand_name.lower():
                        brand_id_correct = row[1]
                        break
           for row in get_select_query_results(connection, item_query):
               if row[1] == brand_id_correct and brand_name != None:
                   unitSize = ''
                   for unit in get_select_query_results(connection, unit_query):
                       if (unit[1] == row[7]):
                           unitSize = unit[0]
                   item = {'item_name':row[0], 'brand_id':row[1], 'calories': row[2], 'protein':row[3],
                        'total_carb':row[4], 'sugars':row[5], 'servings_per_cont': row[6], 'serving_unit': unitSize}

                   item_list.append(item)
           if brand_name == None:
                for row in get_select_query_results(connection, item_query):
                    unitSize = ''
                    for unit in get_select_query_results(connection, unit_query):
                        if (unit[1] == row[7]):
                            unitSize = unit[0]
                    item = {'item_name':row[0], 'brand_id':row[1], 'calories': row[2], 'protein':row[3],
                            'total_carb':row[4], 'sugars':row[5], 'servings_per_cont': row[6], 'serving_unit': unitSize}
                    item_list.append(item)
        except Exception as e:
            print(e, file=sys.stderr)
        connection.close()

    return json.dumps(item_list)

@app.route('/brands')
def get_brands():
    #print("brands")
    ''' Returns a list of all brands'''
    query = "SELECT name FROM brands"
    brand_list = []
    connection = get_connection()
    if connection is not None:
        try:
            for row in get_select_query_results(connection, query):
                brand = {'brand_name':row[0]}
                brand_list.append(brand)
        except Exception as e:
            print(e, file=sys.stderr)
    return json.dumps(brand_list)


if __name__ == '__main__':
    if len(sys.argv) != 3:
        print('Usage: {0} host port'.format(sys.argv[0]))
        print('Example: {0} perlman.mathcs.carleton.edu 5101'.format(sys.argv[0]))
        exit()

    host = sys.argv[1]
    port = int(sys.argv[2])
    app.run(host=host, port=port, debug=True)
