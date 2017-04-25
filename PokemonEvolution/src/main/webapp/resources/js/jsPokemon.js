/**
 * Pokemon API js
 */

function displayPokeball(){
	
	var sel = document.getElementById("levelOptions")
	while (sel.firstChild) 
	{
		sel.removeChild(sel.firstChild);
	}	
	pokemonVarV1 = null;
	pokemonVarV2 = null;
	document.getElementById("pokemonId").value = "";
	// Step 1. Open XHR
	var xhttp = new XMLHttpRequest(); // Usually JSON now, ignore the XML
	
	// Step 2. function to handle ready state change of the response
	xhttp.onreadystatechange = function(){
		if(xhttp.readyState == 4 && xhttp.status == 200){
			// We know
			var item = JSON.parse(xhttp.responseText);
			
			// put item url in pokemonImage tag
			setItemValues(item);
		}
	};
															// false would
															// synchronous
	// Step 3 Open //true uses asynchronous
	xhttp.open("GET","http://pokeapi.co/api/v2/item/4", true);
	// Step 4 Send it
	xhttp.send(); // Post data
	
}

function setItemValues(item)
{
	var itemImg = document.getElementById("pokemonImage");
	itemImg.setAttribute("src",item.sprites.default);
	itemImg.setAttribute("alt", item.name);
}

var pokemonVarV1; //holds evolution
var pokemonVarV2; //holds image

function getPokemon(){
	getPokemonV1();
}

//2 has the image
function getPokemonV2()
{
	var pokemonId = document.getElementById("pokemonId").value;
	
	if(pokemonId.length === 0 || pokemonId == null)
	{
		return;
	}
	
	// Step 1. Open XHR
	var xhttp = new XMLHttpRequest(); // Usually JSON now, ignore the XML
	
	// Step 2. function to handle ready state change of the response
	xhttp.onreadystatechange = function(){
		
		if(xhttp.status == 404)
		{
			alert("Not a pokemon");
		}
		
		if(xhttp.readyState == 4 && xhttp.status == 200){
			// We know
			var pokemon = JSON.parse(xhttp.responseText);
			setPokemonValues(pokemon);
			pokemonVarV2 = pokemon;
		}
	};
							
	// Step 3 Open //true uses asynchronous
	xhttp.open("GET","http://pokeapi.co/api/v2/pokemon/" + pokemonId, true);
	
	// Step 4 Send it
	xhttp.send(); // Post data
}

//1 has the evolutions
function getPokemonV1(){
	var pokemonId = document.getElementById("pokemonId").value;
	
	if(pokemonId.length === 0 || pokemonId == null){		
		alert("Not a Pokemon")
		return;
	}
	
	// Step 1. Open XHR
	var xhttp = new XMLHttpRequest(); // Usually JSON now, ignore the XML
	
	// Step 2. function to handle ready state change of the response
	xhttp.onreadystatechange = function(){
		
		if(xhttp.status == 404)
		{
			alert("Not a pokemon");
		}
		
		if(xhttp.readyState == 4 && xhttp.status == 200){
			// We know
			pokemonVarV1 = JSON.parse(xhttp.responseText);
			
			getPokemonV2();
		}
	};
							
	// Step 3 Open //true uses asynchronous
	xhttp.open("GET","http://pokeapi.co/api/v1/pokemon/" + pokemonId, true);
	
	// Step 4 Send it
	xhttp.send(); // Post data
}

function setPokemonValues(pokemon){
	// document.getElementById("pokemonName").innerHTML = pokemon.name;
	var pokeImg = document.getElementById("pokemonImage");
	document.getElementById("pokemonId").value = pokemon.name;
	pokeImg.setAttribute("src", pokemon.sprites.front_default);
	pokeImg.setAttribute("alt", pokemon.name);
	
	var sel = document.getElementById("levelOptions")
	while (sel.firstChild) 
	{
		sel.removeChild(sel.firstChild);
	}	
	
	if(pokemonVarV1.evolutions.length > 0) //if there are evolutions
	{
		console.log("evolutions exist");
		//create a combo box of methods
		setComboBoxOfMethods(pokemon);
	}
}

function setComboBoxOfMethods(pokemon)
{
	//for every evolution in the pokemon, put the method as an option in the combo box
	for(var i = 0; i < pokemonVarV1.evolutions.length; i++)
	{
		var option = document.createElement("option");
		option.value = pokemonVarV1.evolutions[i].to;
		option.innerHTML = pokemonVarV1.evolutions[i].to;
		document.getElementById("levelOptions").appendChild(option);
	}
}

function getEvolution()
{
	if(pokemonVarV1.evolutions.length > 0)
	{		
		var indexOfSelectedValue = getComboBoxValueSelectedIndex();
		document.getElementById("pokemonId").value = (pokemonVarV1.evolutions[indexOfSelectedValue].to).toLowerCase();
		getPokemon();
	}
}

function getComboBoxValueSelectedIndex()
{
	var sel = document.getElementById('levelOptions');
	return sel.selectedIndex;
}

window.onload = function(){
	// put pokeball image in image tag
	displayPokeball();
	
	document.getElementById("evolveButton").addEventListener("click", getEvolution); 
	document.getElementById("returnButton").addEventListener("click", displayPokeball);
	document.getElementById("goButton").addEventListener("click", getPokemon); 
}