function FormataCPFBlur(campo) {
	
	var mycpf = campo.value.replace("/^\d+$/","");
	mycpf = mycpf.substring(0,11);
	if (mycpf.length == 11){
		mycpf = mycpf.substring(0,3) + "." + mycpf.substring(3,6) +"."+mycpf.substring(6,9) + "-"+mycpf.substring(9,11);
		campo.value = mycpf;
	}
}

function FormataCPF(texto) {
	var mycpf = "";
	mycpf = mycpf + texto;
	if (mycpf.length == 3 || mycpf.length == 7) {
		mycpf = mycpf + '.';
		document.forms[0].cpf.value = mycpf;
	} else if (mycpf.length == 11) {
		mycpf = mycpf + '-';
		document.forms[0].cpf.value = mycpf;
	}
}

function FormataCPF2(texto) {
	var mycpf = "";
	mycpf = mycpf + texto;
	if (mycpf.length == 3 || mycpf.length == 7) {
		mycpf = mycpf + '.';
		document.forms[0].cpfNotaFiscal.value = mycpf;
	} else if (mycpf.length == 11) {
		mycpf = mycpf + '-';
		document.forms[0].cpfNotaFiscal.value = mycpf;
	}
}

function FormataCPF3(texto) {
	var mycpf = "";
	mycpf = mycpf + texto;
	if (mycpf.length == 3 || mycpf.length == 7) {
		mycpf = mycpf + '.';
		document.forms[0].cpfCondutorVisita.value = mycpf;
	} else if (mycpf.length == 11) {
		mycpf = mycpf + '-';
		document.forms[0].cpfCondutorVisita.value = mycpf;
	}
}

function validaCPF(texto) {
	if (texto == null || texto == "")
		return;
	var cpf = texto.substr(0, 3) + texto.substr(4, 3) + texto.substr(8, 3)
			+ texto.substr(12, 2);
	var i;
	var c = cpf.substr(0, 9);
	var dv = cpf.substr(9, 2);
	var d1 = 0;

	for (i = 0; i < 9; i++) {
		d1 += c.charAt(i) * (10 - i);
	}

	if (d1 == 0) {
		alert("CPF Invalido!")
		document.forms[0].actions.style.display = "block";
		return false;
	}

	d1 = 11 - (d1 % 11);

	if (d1 > 9)
		d1 = 0;

	if (dv.charAt(0) != d1) {
		alert("CPF Invalido!")
		document.forms[0].actions.style.display = "block";
		return false;
	}

	d1 *= 2;

	for (i = 0; i < 9; i++) {
		d1 += c.charAt(i) * (11 - i);
	}

	d1 = 11 - (d1 % 11);

	if (d1 > 9)
		d1 = 0;

	if (dv.charAt(1) != d1) {
		alert("CPF Invalido!")
		document.forms[0].actions.style.display = "block";
		return false;
	}
	var masc1 = texto.substr(3, 1) ;
	var masc2 = texto.substr(7, 1);
	var masc3 =  texto.substr(11, 1);
	if(!(masc1 == ".") || !(masc2 == ".") || !(masc3 == "-")){
		alert("CPF Invalido!")
		document.forms[0].actions.style.display = "block";
		return false;
	}
	return true;

}

function validaCPFFocus(obj) {
	var cpf = obj.value.replace(/\D/g,"");
	if (cpf.length == 0)
		return;
	
	var texto = obj.value;
	if (texto == null || texto == "")
		return;
	var cpf = texto.substr(0, 3) + texto.substr(4, 3) + texto.substr(8, 3)
			+ texto.substr(12, 2);
	var i;
	var c = cpf.substr(0, 9);
	var dv = cpf.substr(9, 2);
	var d1 = 0;

	for (i = 0; i < 9; i++) {
		d1 += c.charAt(i) * (10 - i);
	}

	if (d1 == 0) {
		alert("CPF Invalido!")
		obj.focus();
		return;
	}

	d1 = 11 - (d1 % 11);

	if (d1 > 9)
		d1 = 0;

	if (dv.charAt(0) != d1) {
		alert("CPF Invalido!")
		obj.focus();
		return;
	}

	d1 *= 2;

	for (i = 0; i < 9; i++) {
		d1 += c.charAt(i) * (11 - i);
	}

	d1 = 11 - (d1 % 11);

	if (d1 > 9)
		d1 = 0;

	if (dv.charAt(1) != d1) {
		alert("CPF Invalido!")
		obj.focus();
		return;
	}

}
