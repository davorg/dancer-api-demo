# dancer-api-demo

Simple demo of some Dancer2 API tricks

This is the code that accompanies my blog post
[In-place editing with Dancer2 and jQuery](https://dev.to/davorg/in-place-editing-with-dancer2-and-jquery-efd).

It's a simple Dancer2 application that demonstrates in-place editing of text fields on a web page.

## Running the demo

Check out the code

    $ git clone https://github.com/davorg/dancer-api-demo.git
    
### version 1 
Change directory

    $ cd dancer-api-demo
    
Install required modules

    $ cpanm --installdeps APIDemo

### version 2
Change directory

    $ cd dancer-api-demo/APIDemo
    
Install required modules

    $ carton install
    
Move database to `dancer-api-demo/APIDemo`

## Start the local server
    $ plackup APIDemo/bin/app.psgi
    
Open a brower on http://localhost:5000/
