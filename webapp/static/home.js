var slider = document.getElementById("myRange");
var output = document.getElementById("demo");
output.innerHTML = slider.value; // Display the default slider value

// Update the current slider value (each time you drag the slider handle)
slider.oninput = function() {
    output.innerHTML = this.value;
}

function onChangeWordButton() {
    var colorBoxElement = document.getElementById('colorbox');
    var magicWordElement = document.getElementById('magicword');
    colorBoxElement.innerHTML = 'The magic word is "' + magicWordElement.value + '"';
}

function initialize() {
    var button = document.getElementById('changewordbutton');
    button.onclick = onChangeWordButton;
}

window.onload = initialize;
