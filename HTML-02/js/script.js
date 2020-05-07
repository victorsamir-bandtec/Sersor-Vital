// Simulador de regra de negocio
function simu() {
  var numero_casos = Number(infectados.value);

  var economia_mensal = (numero_casos * 0.10) * 0.75;
  var economia_anual = economia_mensal * 12;

  economia.innerHTML = `<b>${economia_mensal.toFixed(0)}</b> casos`;
  anual.innerHTML = `<b>${economia_anual.toFixed(0)}</b> casos`;
}