let errorCodes = {
    404: "Not Found, please check your URL.",
    500: "Error with the server",
    403: "Credentials needed to pass beyond this point",
    503: "Eror, servers are unavailable. Try again soon."
}

async function fetchData(sourceURL) {
        // ask for a resource, and then do something with it when it resolves
    let resource = await fetch(sourceURL).then(response => {
        if (response.status !== 200) {
            throw new Error(`Error ${response.status}: ${errorCodes[response.status]}`);
        } 
        
        return response;           
    });

    // fetch uses the Promise API, so it'll return with the resource or return false - either way, it resolves the promise

    // we'll assume success and pass through a parsed JavaScript object from the JSON data we get
    let dataset = await resource.json();

    return dataset[0];
    
    debugger;
}
export { fetchData };