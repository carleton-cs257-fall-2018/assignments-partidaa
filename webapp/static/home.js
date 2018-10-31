initialize();

function initialize(){
  var element = document.getElementById('generateTable')
  if (element) {
    element.onclick = onGenerateTableClicked;
  }
}


var slider = document.getElementById("myRange");
var output = document.getElementById("output");
output.innerHTML = slider.value; // Display the default slider value

// Update the current slider value (each time you drag the slider handle)
slider.oninput = function() {
    output.innerHTML = this.value;
}

var pageIn = document.getElementById("pageInput");
var pageOut = document.getElementById("pageOutput");

// Update the current slider value (each time you drag the slider handle)
if (pageIn) {
  pageIn.onclick = incrementpageOut;
}

function incrementpageOut() {
  pageOut += 1;
}

function getBaseURL() {
    var baseURL = window.location.protocol + '//' + window.location.hostname + ':' + api_port;
    return baseURL;
}

function onGenerateTableClicked() {
    var page = document.getElementById('pageOutput')
    var url = getBaseURL() + '/food_items/brands';

    // Send the request to the Books API /authors/ endpoint
      fetch(url, {method: 'get'})
      // When the results come back, transform them from JSON string into
      // a Javascript object (in this case, a list of author dictionaries).
      .then((response) => response.json())
      // Once you have your list of author dictionaries, use it to build
      // an HTML table displaying the author names and lifespan.
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
          for (var k = 0; k < 50; k++) {
              tableBody += '<tr>'+'<td>' + fooditemsList[k+(page*50)]['item_name']+'</td>';
              tableBody += '<td>'+ fooditemsList[k+(page*50)]['brand_name'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k+(page*50)]['calories'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k+(page*50)]['calories_fat'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k+(page*50)]['total_fat'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k+(page*50)]['sat_fat'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k+(page*50)]['trans_fat_acid'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k+(page*50)]['poly_unsat_fat'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k+(page*50)]['mono_unsat_fat'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k+(page*50)]['cholestrol'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k+(page*50)]['sodium'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k+(page*50)]['total_carbs'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k+(page*50)]['dietary_fiber'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k+(page*50)]['sugars'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k+(page*50)]['protein'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k+(page*50)]['vitamin_A'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k+(page*50)]['vitamin_C'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k+(page*50)]['calcium'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k+(page*50)]['iron'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k+(page*50)]['potassium'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k+(page*50)]['servings_per_cont'] + '</td>';
              tableBody += '<td>'+ fooditemsList[k+(page*50)]['serving_unit'] + '</td>';
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
