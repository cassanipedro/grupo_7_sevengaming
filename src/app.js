const express=require('express');
const app=express();
const path=require("path")

//similar a los recursos estaticos, es para evitar poner el path
app.set('view',path.resolve(__dirname,'views'));
//configuramos el motor de plantillas (EJS)
app.set('view engine','ejs')
//Usamos los recursos estaticos
app.use(express.static('public'));
//usando los enrutadores importados

const productsRouter = require("./routes/productsRouter.js")
const usersRouter = require("./routes/usersRouter.js")
const homeRouter = require("./routes/homeRouter.js")

app.use("/productos", productsRouter);
app.use("/usuarios", usersRouter);
app.use("/", homeRouter);

app.listen(3012,()=>{
    console.log('servidor corriendo en http://localhost:3012');
});

app.use(express.static(path.resolve(__dirname, './public')));

app.get('/',(req,res)=>{
    res.sendFile(__dirname+'/views/home.html')
})

app.get('/productDetail', function(req,res){
    res.sendFile(path.resolve(__dirname, './views/productDetail.html'));

});

app.get('/cuenta', function(req,res){
        res.sendFile(path.resolve(__dirname, './views/cuenta.html'));

});

app.get('/producto', function(req,res){
    res.sendFile(path.resolve(__dirname, './views/producto.html'));

});

app.get('/carrito', function(req,res){
    res.sendFile(path.resolve(__dirname, './views/carrito.html'));

});
app.get('/login', function(req,res){
    res.sendFile(path.resolve(__dirname, './views/login.html'));

});