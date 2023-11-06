// script.js
document.getElementById('entrada-salida-form').addEventListener('submit', function (e) {
    e.preventDefault();

    const placa = document.getElementById('placa').value;
    const accion = document.getElementById('accion').value;

    // Simular un registro en una base de datos o servidor
    const mensaje = `Vehículo con placa ${placa} ha realizado una ${accion}.`;

    document.getElementById('registro-mensaje').textContent = mensaje;
    this.reset();
});
