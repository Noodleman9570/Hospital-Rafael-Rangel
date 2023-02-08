document.querySelector('#loginForm').addEventListener('submit', function(e){
    e.preventDefault();
    login()
})

async function login(){
    let loginForm = document.querySelector('#loginForm');
    const datos = new FormData(loginForm);
    try {
        const url = `${base_url}/Login/access`;
        const res = await fetch(url, {
            method: "POST",
            body: datos
        })

        const result = await res.json();
        
        if(result.error){
            new Noty({
                type: 'error',
                theme: 'metroui',
                text: `${result.error}`,
                timeout: 2000,
            }).show();
        }else{
            new Noty({
                type: 'success',
                theme: 'metroui',
                text: `${result.msg}`,
                timeout: 2000,
            }).show();

            setTimeout(()=>{
                window.location.href = `${base_url}/Home`;
            },2500);
        }
    } catch (err) {
        console.log(err);
    }
}