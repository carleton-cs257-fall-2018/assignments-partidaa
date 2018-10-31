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

@app.after_request
def set_headers(response):
    response.headers['Access-Control-Allow-Origin'] = '*'
    return response


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
    item_query = "SELECT * FROM stats"
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
                   item = {'item_name':row[0], 'brand_name':brand_name, 'calories': row[7], 'calories_fat':row[8],
                        'total_fat':row[9], 'sat_fat':row[10],'trans_fat_acid':row[11],'poly_unsat_fat':row[12],'mono_unsat_fat':row[13],
                        'cholesterol':row[14],'sodium':row[15], 'total_carbs':row[16], 'dietary_fiber':row[17],  'sugars':row[18], 'protein':row[19],
                        'vitamin_a':row[20], 'vitamin_c':row[21], 'calcium':row[22], 'iron':row[23], 'potassium':row[24], 'servings_per_cont':row[25],
                        'serving_unit': unitSize}
                   item_list.append(item)
           if brand_name == None:
                for row in get_select_query_results(connection, item_query):
                    unitSize = ''
                    for unit in get_select_query_results(connection, unit_query):
                        if (unit[1] == row[7]):
                            unitSize = unit[0]
                    for brand in get_select_query_results(connection, brand_query):
                        if brand[1] == row[1]:
                            brand_name = brand[0]
                    item = {'item_name':row[0], 'brand_name':brand_name, 'calories': row[7], 'calories_fat':row[8],
                         'total_fat':row[9], 'sat_fat':row[10],'trans_fat_acid':row[11],'poly_unsat_fat':row[12],'mono_unsat_fat':row[13],
                         'cholesterol':row[14],'sodium':row[15], 'total_carb':row[16], 'dietary_fiber':row[17],  'sugars':row[18], 'protein':row[19],
                         'vitamin_a':row[20], 'vitamin_c':row[21], 'calcium':row[22], 'iron':row[23], 'potassium':row[24], 'servings_per_cont':row[25],
                         'serving_unit': unitSize}
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
