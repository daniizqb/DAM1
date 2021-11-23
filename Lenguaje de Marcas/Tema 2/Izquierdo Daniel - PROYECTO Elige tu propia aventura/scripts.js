var enlace = document.getElementById('enlace');
//texto animado
const text = document.querySelector('.text');
text.innerHTML = text.textContent.replace(/\S/g, "<span>$&</span>");
  
const element = document.querySelectorAll('span');
for (let i=0; i<element.length;i++){
	element[i].style.animationDelay = i*0.04 + 's';
  }
//guardar arma
function arma() {
	var textoDer = document.getElementById('pok').innerHTML;
	console.log(localStorage.getItem("machete"));
	if (textoDer=='Volver a Intentar') {
		localStorage.setItem("machete", false)
		return
	}
	if (textoDer=='Derecha') {
		if (localStorage.getItem("machete")=="true") {
		localStorage.setItem("machete", false);
		enlace.setAttribute('href', 'pokemon.html');
		return;
		}
	}
	if (textoDer=='Derecha') {
		if (localStorage.getItem("machete")=="false") {
			return;
		}
	}
	if (textoDer=='Ver que pasa') {
		if (localStorage.getItem("machete")=="true") {
			alert('El vagabundo te intenta meter un navajazo pero resulta pero como has recogido el machete lo macheteas antes de que te ataque y a continuacion entras al burguer.');
			localStorage.setItem("machete", false);
			enlace.setAttribute('href', 'abaaa.html');
			return;
		}
		else {
		enlace.setAttribute('href', 'fin5.html');
		}
	}
	else {
		localStorage.setItem("machete", true);
		enlace.setAttribute('href', 'index.html');
	}
}
//ver si se ejecuta pokemon
