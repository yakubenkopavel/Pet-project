const input = document.querySelector("#file-downloader");
const button = document.querySelector("#submit");

button.style.opacity = 0;
input.style.opacity = 0;

document.getElementById('file-downloader').addEventListener('change', function (event) {
    var file = event.target.files[0];
    document.getElementById("messages").textContent = file.name;
});

document.getElementById('submitButton').addEventListener('click', function() {
    document.getElementById('submit').click();
});