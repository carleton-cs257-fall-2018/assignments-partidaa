initialize();



function initialize(){
  filterNumber = 0;
  var element = document.getElementById('generateTable');
  if (element && filterNumber == 0) {
    element.onclick = onGenerateTableClicked;
  }
  if (element && filterNumber > 0) {
    element.onclick = updateTableWithFilter;
  }
  var filterElement = document.getElementById('generateFilter');
  if (filterElement) {
    filterElement.onclick = onGenerateFilterClicked;
  }
}


function getBaseURL() {
    var baseURL = window.location.protocol + '//' + window.location.hostname + ':' + api_port;
    return baseURL;
}

function onGenerateTableClicked() {
    var url = getBaseURL() + '/food_items/brands';

    // Send the request to the Books API /authors/ endpoint
      fetch(url, {method: 'get'})
      // When the results come back, transform them from JSON string into
      // a Javascript object (in this case, a list of author dictionaries).
      .then((response) => response.json())
      .then(function(fooditemsList) {
          // Build the table body.
          var tableBody = '';
          tableBody +=  '<tr>' +
                        '<th onclick="sortTable(0)">Item Name</th>' +
                        '<th onclick="sortTable(1)">Brand Name</th>' +
                        '<th onclick="sortTable(2)">Calories</th>' +
                        '<th onclick="sortTable(3)">Calories From Fat</th>' +
                        '<th onclick="sortTable(4)">Total Fat</th>' +
                        '<th onclick="sortTable(5)">Saturated Fat</th>' +
                        '<th onclick="sortTable(6)">Trans Fatty Acid</th>' +
                        '<th onclick="sortTable(7)">PolyUnsaturated Fat</th>' +
                        '<th onclick="sortTable(8)">MonoUnsaturated Fat</th>' +
                        '<th onclick="sortTable(9)">Cholesterol</th>' +
                        '<th onclick="sortTable(10)">Sodium</th>' +
                        '<th onclick="sortTable(11)">Total Carbohydrates</th>' +
                        '<th onclick="sortTable(12)">Dietary Fiber</th>' +
                        '<th onclick="sortTable(13)">Sugars</th>' +
                        '<th onclick="sortTable(14)">Protein</th>' +
                        '<th onclick="sortTable(15)">Vitamin A</th>' +
                        '<th onclick="sortTable(16)">Vitamin C</th>' +
                        '<th onclick="sortTable(17)">Calcium</th>' +
                        '<th onclick="sortTable(18)">Iron</th>' +
                        '<th onclick="sortTable(19)">Potassium</th>' +
                        '<th>serving size</th>' +
                        '<th>Serving Quantity</th>' +
                        '</tr>' +
                        '</div>'
          for (var k = 0 ; k < 50; k++) {
              tableBody += '<tr>'+'<td>' + fooditemsList[k]['item_name']+'</td>';
              tableBody += '<td>'+ fooditemsList[k]['brand_name'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k]['calories'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k]['calories_fat'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k]['total_fat'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k]['sat_fat'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k]['trans_fat_acid'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k]['poly_unsat_fat'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k]['mono_unsat_fat'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k]['cholesterol'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k]['sodium'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k]['total_carb'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k]['dietary_fiber'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k]['sugars'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k]['protein'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k]['vitamin_a'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k]['vitamin_c'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k]['calcium'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k]['iron'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k]['potassium'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k]['servings_per_cont'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k]['serving_unit'] + '</td>';
              tableBody += '</tr>';
          }
          // Put the table body we just built inside the table that's already on the page.
          var resultsTableElement = document.getElementById('results_table');
          if (resultsTableElement) {
              resultsTableElement.innerHTML = tableBody;
          }



    })
    .catch(function(error) {
      console.log(error);
    });


}

function onGenerateFilterClicked() {
    var e = document.getElementById('filterList');
    var stat = e.options[e.selectedIndex].innerHTML;
    var call = e.options[e.selectedIndex].value;
    var url = getBaseURL()+'/maxStat/'+call;
    fetch(url, {method: 'get'})
    .then((response) => response.json())
    .then(function(maxStat) {
      var filterBody = '';
      filterBody +=  '<p>' + stat + ' Filter</div>' +
                   '<p id="filterName'+ filterNumber + '" hidden>' + call + ' Filter</div>' +
                   '<p style="font-size:12px;">Less Than</p>'+
                   '<div class="slidecontainer">'+
                   '<input type="range" min="0" max="' + maxStat + '" value = "0" class="slider" id="filterRangeMin'+ filterNumber +'">'+
                   '<output id="filterOutputMin'+ filterNumber + '">'+
                   '</div>'+
                   '<p style="font-size:12px;">Greater Than</p>' +
                   '<div class="slidecontainer">'+
                   '<input type="range" min="0" max="' + maxStat + '" value="' + maxStat +'" class="slider" id="filterRangeMax'+ filterNumber +'">'
                   '<output id="filterOutputMax'+ filterNumber +'">'+
                   '</div>';
      var filterColumnElement = document.getElementById('filterColumn')
      if (filterColumnElement) {
        filterColumnElement.innerHTML += filterBody;
        filterNumber++;
    }
  })
    .catch(function(error){console.log(error)});
}

function updateTableWithFilter() {
  var url = getBaseURL()+'/food_items/brands';
  var foodItemList = fetch(url, {method:'get'})
  .then((response) => response.json())
  .catch(function(error){console.log(error)});
  for (j = 0; j < filterNumber; j ++) {
      var stat = document.getElementById('filterName'+j).innerHTML;
      var min = document.getElementById('filterRangeMin'+j).value;
      var max = document.getElementById('filterRangeMax'+j).value;
      for (k = 0; k < foodItemList; k++) {
        if (foodItemList[k][stat] > max || foodItemList[k][stat] < min) {
            foodItemList.remove(k);
        }
      }
  }
  var newBody = ''
  newBody +=  '<tr>' +
                '<th onclick="sortTable(0)">Item Name</th>' +
                '<th onclick="sortTable(1)">Brand Name</th>' +
                '<th onclick="sortTable(2)">Calories</th>' +
                '<th onclick="sortTable(3)">Calories From Fat</th>' +
                '<th onclick="sortTable(4)">Total Fat</th>' +
                '<th onclick="sortTable(5)">Saturated Fat</th>' +
                '<th onclick="sortTable(6)">Trans Fatty Acid</th>' +
                '<th onclick="sortTable(7)">PolyUnsaturated Fat</th>' +
                '<th onclick="sortTable(8)">MonoUnsaturated Fat</th>' +
                '<th onclick="sortTable(9)">Cholesterol</th>' +
                '<th onclick="sortTable(10)">Sodium</th>' +
                '<th onclick="sortTable(11)">Total Carbohydrates</th>' +
                '<th onclick="sortTable(12)">Dietary Fiber</th>' +
                '<th onclick="sortTable(13)">Sugars</th>' +
                '<th onclick="sortTable(14)">Protein</th>' +
                '<th onclick="sortTable(15)">Vitamin A</th>' +
                '<th onclick="sortTable(16)">Vitamin C</th>' +
                '<th onclick="sortTable(17)">Calcium</th>' +
                '<th onclick="sortTable(18)">Iron</th>' +
                '<th onclick="sortTable(19)">Potassium</th>' +
                '<th>serving size</th>' +
                '<th>Serving Quantity</th>' +
                '</tr>' +
                '</div>'
  for (var k = 0 ; k < 50; k++) {
      newBody += '<tr>'+'<td>' + foodItemList[k]['item_name']+'</td>';
      newBody += '<td>'+ foodItemList[k]['brand_name'] + '</td>';
      newBody += '<td>'+ foodItemList[k]['calories'] + '</td>';
      newBody += '<td>'+ foodItemList[k]['calories_fat'] + '</td>';
      newBody += '<td>'+ foodItemList[k]['total_fat'] + '</td>';
      newBody += '<td>'+ foodItemList[k]['sat_fat'] + '</td>';
      newBody += '<td>'+ foodItemList[k]['trans_fat_acid'] + '</td>';
      newBody += '<td>'+ foodItemList[k]['poly_unsat_fat'] + '</td>';
      newBody += '<td>'+ foodItemList[k]['mono_unsat_fat'] + '</td>';
      newBody += '<td>'+ foodItemList[k]['cholesterol'] + '</td>';
      newBody += '<td>'+ foodItemList[k]['sodium'] + '</td>';
      newBody += '<td>'+ foodItemList[k]['total_carb'] + '</td>';
      newBody += '<td>'+ foodItemList[k]['dietary_fiber'] + '</td>';
      newBody += '<td>'+ foodItemList[k]['sugars'] + '</td>';
      newBody += '<td>'+ foodItemList[k]['protein'] + '</td>';
      newBody += '<td>'+ foodItemList[k]['vitamin_a'] + '</td>';
      newBody += '<td>'+ foodItemList[k]['vitamin_c'] + '</td>';
      newBody += '<td>'+ foodItemList[k]['calcium'] + '</td>';
      newBody += '<td>'+ foodItemList[k]['iron'] + '</td>';
      newBody += '<td>'+ foodItemList[k]['potassium'] + '</td>';
      newBody += '<td>'+ foodItemList[k]['servings_per_cont'] + '</td>';
      newBody += '<td>'+ foodItemList[k]['serving_unit'] + '</td>';
      newBody += '</tr>';
  }
  // Put the table body we just built inside the table that's already on the page.
  var resultsTableElement = document.getElementById('results_table');
  if (resultsTableElement) {
      resultsTableElement.innerHTML = newBody;
  }


}
