function initialize(){
  var element = document.getElementById('changewordbutton')
  if (element) {
    element.onclick = onGenerateTableClicked;
  }
}


var slider = document.getElementById("myRange");
var output = document.getElementById("demo");
output.innerHTML = slider.value; // Display the default slider value

// Update the current slider value (each time you drag the slider handle)
slider.oninput = function() {
    output.innerHTML = this.value;
}

function getBaseURL() {
    var baseURL = window.location.protocol + '//' + window.location.hostname + ':' + api_port;
    return baseURL;
}

function onGenerateTableClicked() {
    var url = getBaseURL() + '/fooditems/brands/';

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
        tableBody +=  '<div style="overflow-x:auto;">' +
                      '<table id = "results_table">' +
                      '<tr>' +
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
        for (var k = 0; k < fooditemsList.length; k++) {
            tableBody = '<tr>''<td> + fooditemsList[k]['item_name']''</td>';
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
            tableBody += '<td>'+ fooditemsList[k]['total_carbs'] + '</td>';
            tableBody += '<td>'+ fooditemsList[k]['dietary_fiber'] + '</td>';
            tableBody += '<td>'+ fooditemsList[k]['sugars'] + '</td>';
            tableBody += '<td>'+ fooditemsList[k]['protein'] + '</td>';
            tableBody += '<td>'+ fooditemsList[k]['vitamin_A'] + '</td>';
            tableBody += '<td>'+ fooditemsList[k]['vitamin_C'] + '</td>';
            tableBody += '<td>'+ fooditemsList[k]['calcium'] + '</td>';
            tableBody += '<td>'+ fooditemsList[k]['iron'] + '</td>';
            tableBody += '<td>'+ fooditemsList[k]['potassium'] + '</td>';
            tableBody += '<td>'+ fooditemsList[k]['servings_per_cont'] + '</td>';
            tableBody += '<td>'+ fooditemsList[k]['serving_unit'] + '</td>';
            tableBody'</tr>';
        }
        // Put the table body we just built inside the table that's already on the page.
        var resultsTableElement = document.getElementById('results_table');
        if (resultsTableElement) {
            resultsTableElement.innerHTML = tableBody;
        }
    })

    // Log the error if anything went wrong during the fetch.
    .catch(function(error) {
        console.log(error);
    });
}

function sortTable(n) {
  var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
  table = document.getElementById("results_table");
  switching = true;
  //Set the sorting direction to ascending:
  dir = "asc";
  /*Make a loop that will continue until
  no switching has been done:*/
  while (switching) {
    //start by saying: no switching is done:
    switching = false;
    rows = table.rows;
    /*Loop through all table rows (except the
    first, which contains table headers):*/
    for (i = 1; i < (rows.length - 1); i++) {
      //start by saying there should be no switching:
      shouldSwitch = false;
      /*Get the two elements you want to compare,
      one from current row and one from the next:*/
      x = rows[i].getElementsByTagName("TD")[n];
      y = rows[i + 1].getElementsByTagName("TD")[n];
      /*check if the two rows should switch place,
      based on the direction, asc or desc:*/
      if (dir == "asc") {
        if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
          //if so, mark as a switch and break the loop:
          shouldSwitch= true;
          break;
        }
      } else if (dir == "desc") {
        if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
          //if so, mark as a switch and break the loop:
          shouldSwitch = true;
          break;
        }
      }
    }
    if (shouldSwitch) {
      /*If a switch has been marked, make the switch
      and mark that a switch has been done:*/
      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
      switching = true;
      //Each time a switch is done, increase this count by 1:
      switchcount ++;
    } else {
      /*If no switching has been done AND the direction is "asc",
      set the direction to "desc" and run the while loop again.*/
      if (switchcount == 0 && dir == "asc") {
        dir = "desc";
        switching = true;
      }
    }
  }
}
</script>


window.onload = initialize;
