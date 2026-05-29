function login(event) {
    event.preventDefault();
    const csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute('content');
    const username = document.getElementById('username').value;
    const password = document.getElementById('password').value;

    fetch('/loginaction', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'X-CSRF-TOKEN': csrfToken
        },
        body: JSON.stringify({
            username: username,
            password: password
        })
    })
    .then(res => res.json())
    .then(data => {
        console.log(data);
    })
    .catch(err => {
        console.error(err);
    });
}

function logout() {
  localStorage.removeItem("login");
  window.location.href = "/login";
}

// proteksi dashboard
if (window.location.pathname.includes("dashboard")) {
  if (!localStorage.getItem("login")) {
    window.location.href = "/login";
  }
}