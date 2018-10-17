#Addison Partida
#Henry Pearson
#api_test.py
import unittest

class api_test(unittest.Testcase):
def testGetItemsLessThanAmount(self):
    ExtpectedResponse = [{'brand_name': Eclipse, 'item_name': 'Gum, Sugarfree, Polar Ice, Big E Pak', 'nf_calories': 5, 'nf_serving_size_qty': 30},
     {'brand_name': Lipton Beverage, 'item_name': 'Iced Tea Mix, Tea & Honey Iced Green Tea/Blackberry Pomegranate', 'nf_calories': 5 'nf_serving_size_qty': 40},
     {'brand_name': Weber, 'item_name': Sweet N' Tangy BBQ 6.75 Oz, Seasoning, 'nf_calories': 5, 'nf_serving_size_qty': 192},
     {'brand_name': Kevita, 'item_name': 'Sparkling Probiotic Drink, Coconut', 'nf_calories': 5, 'nf_serving_size_qty': 2},
     {'brand_name': Herb Ox, 'item_name': 'Bouillon Cubes, Chicken Flavor', 'nf_calories': 5, 'nf_serving_size_qty': 12},
     {'brand_name': Trident, 'item_name': 'Gum, Sugar Free, Cool Rush', 'nf_calories': 5, 'nf_serving_size_qty': 72},
     {'brand_name': Trident, 'item_name': 'Layers Sugar Free Gum, Jelly Bean', 'nf_calories': 2.5 'nf_serving_size_qty': 14}]
    self.assertEqual("https://api.nutritionix.com/v1_1/search/items/lessThanQty/calories/5", )
