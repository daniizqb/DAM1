//texto animado
const text = document.querySelector('.text');
text.innerHTML = text.textContent.replace(/\S/g, "<span>$&</span>");

const element = document.querySelectorAll('span');
for (let i=0; i<element.length;i++){
	element[i].style.animationDelay = i*0.04 + 's';
}
//guardar arma
function arma() {
	if (flag != true){	
	var enlace = document.getElementById('enlace');
	document.getElementById("atext").innerHTML = "Volver a intentar"
	enlace.setAttribute('href', 'card.html');
	}
	if (flag = true){
		document.getElementById('vagabundo').innerHTML = "Sacas el machete que cojiste en la sala y le macheteas al vagabundo antes de que te ataque con la navaja"
	}
	var flag = true;
}