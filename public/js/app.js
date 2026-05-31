function login(event) {
    event.preventDefault();
    document.getElementById("btn_loading").innerText = "loading...";
    const csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute('content');
    const email = document.getElementById('email').value;
    const password = document.getElementById('password').value;
// https://dev.klinikdrsanderb-emcu.com/api/v1/registrationpatients/login
    fetch('http://localhost:8000/api/loginaction', {
        method: 'POST',
        credentials: 'include',
        headers: {
            'Content-Type': 'application/json',
            'X-CSRF-TOKEN': csrfToken
        },
        body: JSON.stringify({
            email: email,
            password: password
        })
    })
    .then(res => res.json())
    .then(data => {
        if(data?.status === true){
            const xxx1 = btoa(data?.user?.email);
            const xxx2 = btoa(data?.user?.users_id);
            const xxx3 = btoa(data?.token);
            document.cookie = `xxx1=${encodeURIComponent(xxx1)}; path=/`;
            document.cookie = `xxx2=${encodeURIComponent(xxx2)}; path=/`;
            document.cookie = `xxx3=${encodeURIComponent(xxx3)}; path=/`;
            document.getElementById("btn_loading").innerText = "Login";
            window.location.href=`/dashboard`;
        }else{
              swal({
                title: "Failed",
                text: "Login Failed",
                icon: "error",
                }).then(function () {
                    window.location.href = "/login";
                });
        }
        
    })
    .catch(err => {
          swal({
          title: "Failed",
          text: err.message,
          icon: "error",
            }).then(function () {
                window.location.href = "/login";
            });
    });
}

// function deleteCookie(name, path = '/') {
//     document.cookie = `${name}=; path=${path}; max-age=0; SameSite=Lax`;
// }

function logoutaction() {
  window.location.href = "/logoutaction";
}
