let inputDate = document.getElementById("input-date");
let select = document.getElementById("select-option");
let buttonForm = document.getElementById("button-form");
let inputName = document.getElementById("input-name").value;
let inputEmail = document.getElementById("input-email").value;
let containerDados = document.getElementById("container-dados");

buttonForm.addEventListener("click", function (event) {
  event.preventDefault();

  let dataHora = inputDate.value;

  if (dataHora) {
    let option = document.createElement("option");
    option.value = dataHora;
    option.textContent = dataHora;
    select.appendChild(option);

    inputDate.value = ""; 
  } else {
    alert("Por favor, preencha a data e hora.");
  }
});

containerDados.innerHTML = `
  <h1>Consultar dados pessoais</h1>
  <h2>Seus dados:</h2>
  <p>Nome: ${inputName}</p>
  <p>E-mail: ${inputEmail}</p>
`;