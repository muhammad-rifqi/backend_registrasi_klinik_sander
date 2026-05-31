function deleteCookie(name, path = '/') {
    document.cookie = `${name}=; path=${path}; max-age=0; SameSite=Lax`;
}

function logoutAction () {
    swal({
        title: "Are You Sure ?",
        text: "to exit this app ??",
        icon: "warning",
        buttons: true,
        dangerMode: true,
    })
        .then((willOut) => {
            if (willOut) {
                window.location.href = '/logoutaction';
            } else {
                console.log('NaN')
            }
        });
}