
// Simulador de regra de negocio
function simulador() {
  var casos_infecção = Number(casos_infecção.value);

  var resul = (casos_infecção * 10);

  economia.innerHTML = `R$ ${resul.toFixed(2)}`;
  anual.innerHTML = `R$ ${re.toFixed(2)}`;
}