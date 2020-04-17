# nginx-custom Image
Custom Docker image for nginx. Uses common configuration file for Javascript projects. 
Useful for *Angular, React or any other precompiled app* that needs **nginx** &amp; **gzip** out of the box.


## Gzip &amp; Default Location
Configuration file comes with Gzip enabled for almost all modern browsers. 

**Default Location** it's pretty useful for JavaScript applications. Enables the app to use direct links such as:

`http://your-app-address/some/route/page`

If Default Location to `index.html` is not configured, this route would not work because the router handler it's no intialized. With 
this configuration, route is passed to the JavaScript app and the router handler can redirect to the proper page/component.

## Using in your Dockerfile
To use this in your Docker workflow (multi-staged or not), you can do it like this:

````dockerfile
FROM prosmartxyz/nginx:latest
COPY dist/my-app /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
````

Assuming that your built bundle is in `dist/my-app`, wich is the common scenario for almost every CLI over there. Please feel free to 
suggest changes or improvements.
