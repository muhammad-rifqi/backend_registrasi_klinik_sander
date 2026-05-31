function deleteCookie(name, path = '/') {
    document.cookie = `${name}=; path=${path}; max-age=0; SameSite=Lax`;
}

function logoutAction () {
    window.location.href = "/logoutaction";
}