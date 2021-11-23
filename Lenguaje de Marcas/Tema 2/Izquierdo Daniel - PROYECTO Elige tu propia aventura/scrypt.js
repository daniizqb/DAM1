//pokemon
var app = new Vue({
	el: '#app',
	data: {
	   userPokemonSrc: "kenmango.jpg",
	   opponentPokemonSrc: "yoburlao.jpg",
	   userPokemon: "MCPapaya",
	   opponentPokemon: "Kenny",
	   userAlive: true,
	   opponentAlive: true,
	   opponentFill: 100,
	   userFill: 100,
	   userHP: 100,
	   startUserHP: 100,
	   opponentHP: 100,
	   userLevel: 50,
	   opponentLevel: 50,
	   battleText: "Que va a hacer MCPapaya?",
	   battleOptions: ["Ataque", "Pokemon", "Item", "Huir"],
	   userAttackDamage: [15,40,50,25],
	   opponentAttacks: ["Patada", "Amarillo", "Rashita", "Buco"],
	   opponentAttackDamage: [15,40,50,25],
	   fightOptions: ["Buco", "Navajazo", "Machetaso", "Amarillo"],
	   endOptions: ["Si", "No"],
	   fightOn: false,
	   optionsOn: true,
	   endOn: false,
	userHpBar: {
	  width: "100%"
	},
	opponentHpBar: {
	  width: "100%"
	}
   },
	methods:{
	  processOption: function(option){
		switch(option){
		  case 1:
			this.optionsOn = false
			this.fightOn = true
		  break;
		  case 2:
			setTimeout(() => {
			this.battleText = "Que hará " + this.userPokemon + " ?"
		}, 2000);
			
			this.battleText = "Solo tienes a " + this.userPokemon + "!"
			
		  break;
		  case 3:
			setTimeout(() => {
			this.battleText = "Que hará "  + this.userPokemon + " do?"
		}, 2000);
			this.battleText = "No hiciste la compra we"
		  break;
		  case 4:
			setTimeout(() => {
			this.battleText = "Que hará "  + this.userPokemon + " ?"
		}, 2000);
			this.battleText = "Te falta calle pa"
		  break;
		}
	  },
	  processAttack: function(attack){
		switch(attack){
		  case 1:
			this.opponentHP -= this.userAttackDamage[attack-1]
			this.opponentFill -= (this.userAttackDamage[attack-1])
			if(this.opponentFill <= 0){
			  this.opponentHpBar.width = "0%"
			} else{
			  this.opponentHpBar.width = this.opponentFill + "%"
			}   
			if(this.checkOpponentHp()){
			  this.battleText = this.opponentPokemon + " ha sido debilitado! Quieres jugar otra vez?"
			  this.processFaint(1)
			} else if(this.checkOpponentHp() === false) {
			  
				setTimeout(() => {
				this.processOpponentAttack()
				}, 2000);
			
			  this.battleText = this.userPokemon + " usó " + this.fightOptions[attack-1] + "!"
			setTimeout(() => { 
			  if(this.userAlive){
				setTimeout(() => {this.battleText = "Que hará " + this.userPokemon + " ?"
				}, 2000);
			  }
			 }, 2000);
			}
		  break;
		  case 2:
			 this.opponentHP -= this.userAttackDamage[attack-1]
			this.opponentFill -= (this.userAttackDamage[attack-1])
			if(this.opponentFill <= 0){
			  this.opponentHpBar.width = "0%"
			} else{
			  this.opponentHpBar.width = this.opponentFill + "%"
			}
			  if(this.checkOpponentHp()){
			  this.battleText = this.opponentPokemon + " ha sido debilitado! Quieres jugar otra vez?"
			  this.processFaint(1)
			} else if(this.checkOpponentHp() === false) {
			  
				setTimeout(() => {
				this.processOpponentAttack()
				}, 2000);
			
			  this.battleText = this.userPokemon + " usó " + this.fightOptions[attack-1] + "!"
			setTimeout(() => { 
			  if(this.userAlive){
				setTimeout(() => {this.battleText = "Que hará " + this.userPokemon + " ?"
				}, 2000);
			  }
			 }, 2000);
			}
		  break;
		  case 3:
			 this.opponentHP -= this.userAttackDamage[attack-1]
			this.opponentFill -= (this.userAttackDamage[attack-1])
			if(this.opponentFill <= 0){
			  this.opponentHpBar.width = "0%"
			} else{
			  this.opponentHpBar.width = this.opponentFill + "%"
			}
			  if(this.checkOpponentHp()){
			  this.battleText = this.opponentPokemon + " ha sido debilitado! Quieres jugar otra vez?"
			  this.processFaint(1)
			} else if(this.checkOpponentHp() === false) {
			  
				setTimeout(() => {
				this.processOpponentAttack()
				}, 2000);
			
			  this.battleText = this.userPokemon + " usó " + this.fightOptions[attack-1] + "!"
			setTimeout(() => { 
			  if(this.userAlive){
				setTimeout(() => {this.battleText = "Que hará " + this.userPokemon + " ?"
				}, 2000);
			  }
			 }, 2000);
			}
		  break;
		  case 4:
			 this.opponentHP -= this.userAttackDamage[attack-1]
			this.opponentFill -= (this.userAttackDamage[attack-1])
			if(this.opponentFill <= 0){
			  this.opponentHpBar.width = "0%"
			} else{
			  this.opponentHpBar.width = this.opponentFill + "%"
			}
			if(this.checkOpponentHp()){
			  this.battleText = this.opponentPokemon + " ha sido debilitado! Quieres jugar otra vez?"
			  this.processFaint(1)
			} else if(this.checkOpponentHp() === false) {
			  
				setTimeout(() => {
				this.processOpponentAttack()
				}, 2000);
			
			  this.battleText = this.userPokemon + " usó " + this.fightOptions[attack-1] + "!"
			setTimeout(() => { 
			  if(this.userAlive){
				setTimeout(() => {this.battleText = "Que hará " + this.userPokemon + " ?"
				}, 2000);
			  }
			 }, 2000);
			}
		  break;
		}
	  },
	  checkOpponentHp: function(){
		if(this.opponentHP <= 0){
		  return true
		  
		} else{
		  return false
		}
	  },
	  processFaint: function(pokemon){
		this.fightOn = false
		this.endOn = true;
		if(pokemon === 1){
		  this.opponentAlive = false
		} else {
		  this.userHP = 0
		  this.userAlive = false
		}
	  },
	  processOpponentAttack: function(){
		var random = Math.floor((Math.random() * 4) + 1)
		this.userHP -=  this.opponentAttackDamage[random-1]
		this.userFill -= (this.opponentAttackDamage[random-1])
		if(this.userFill <= 0){
		  this.userHpBar.width = "0%"
		} else{
		  this.userHpBar.width = this.userFill + "%"
		} 
		 if(this.checkUserHp()){
		   this.battleText = this.userPokemon + " ha sido debilitado! Quieres jugar otra vez?"
		   this.processFaint(2)
		 } else if(this.checkOpponentHp() === false) {  
		   this.battleText = this.opponentPokemon + " usó " + this.opponentAttacks[random-1]  + "!"
		   this.fightOn = false
		   this.optionsOn = true
		 }
	  },
	  checkUserHp: function(){
		 if(this.userHP <= 0){
		  return true
		  
		} else{
		  return false
		}
	  },
	  resetBattle: function(){
		this.endOn = false;
		this.fightOn = false;
		this.optionsOn = true;
		this.battleText = "Que hará MCPapaya?"
		this.userAlive = true
		this.opponentAlive = true
		this.userHP = 100
		this.opponentHP = 100
		this.userFill = 100
		this.opponentFill = 100
		this.userHpBar.width = "100%"
		this.opponentHpBar.width = "100%"
	  }
	}
	
  })