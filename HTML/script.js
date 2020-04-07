
// Simulador de regra de negocio
function simu() {
  var numero_casos = Number(infectados.value);

  var economia_mensal = (numero_casos * 0.10) * 0.75;
  var economia_anual = economia_mensal * 12;

  economia.innerHTML = `R$ ${economia_mensal.toFixed(2)}`;
  anual.innerHTML = `R$ ${economia_anual.toFixed(2)}`;
}