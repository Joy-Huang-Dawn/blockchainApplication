var mysql = require('mysql');

var mysql = mysql.createPool({
// connectionLimit:100;
host:'localhost',
user:'root',
port:'3306',
password:'011006',
database:'ershouche'
});

//connection.connect();

var express = require('express');
var app = express();

app.use(express.static('public'));

app.get('/',function (req,res) {
res.sendFile(_dirname + "/" + "./index.html");
})

app.get('/login',function (req,res) {
var response = {
    "user":req.query.user,
    "password":req.query.password,
};
var selectSQL = "select user,password from user where user = '" + req.query.user + "' and password = '" + req.query.password + "'" ;
var addSqlParams = [req.query.user,req.query.password];
connection.query(selectSQL,function (err,result) {
    if (err) {
        console.log('[login Error] - ',err.message);
        return;
    }
    if (result=='') {
        console.log("账号或密码错误！");
        res.end("0");
    } else {
        console.log("OK");
        res.end("1");
    }
});
console.log(response);
})

// 注册
var addSql = 'INSERT INTO user(user,password) VALUES(?,?)';

app.get('/process_get',function (req,res) {
var response = {
    "user":req.query.user,
    "password":req.query.password,
};
var addSqlParams = [req.query.user,req.query.password];
connection.query(addSql,addSqlParams,function (err,result) {
    if (err) {
        console.log('[INSERT Error] -',err.message);
        res.end("0");
        return;
    }
    res.end("1");
    console.log("OK");
});
console.log(response);
})
var server = app.listen(5500,function() {
var host = server.address().address
var port = server.address().port
console.log("访问地址为 http://%s:%s",host,port)
})

