const express = require("express");
const router = express.Router();
const pool = require("../pool");
//轮播图图片
router.get("/", (req, res) => {
    var obj = {
        sowing: []
    }
    var sql = `SELECT * FROM sowing`
    pool.query(sql, (err, result) => {
        if (err) throw err;
        obj.sowing = result;
        res.send(obj);
    })
})

router.get("/title", (req, res) => {
        var obj = {
            rise: []
        }
        var sql = 'SELECT * FROM rise'
        pool.query(sql, (err, result) => {
            if (err) throw err;
            obj.rise = result;
            res.send(obj);
        })
    })
//手风琴图片
router.get('/fenqing', (req, res) => {
    var obj = {
        img: []
    }
    var sql = 'SELECT * FROM img'
    pool.query(sql, (err, result) => {
        if (err) throw err;
        obj.img = result;
        res.send(obj);
    })
})

//房客体验
router.get('/tiyan',(req,res)=>{
    var obj={
        tenant:[]
    }
    var sql="SELECT * FROM tenant"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        obj.tenant=result;
        res.send(obj);
    })
})

//房东的故事
router.get("/gushi",(req,res)=>{
    var obj={
        landIord:[]
    }
    var sql="SELECT * FROM landIord"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        obj.landIord=result;
        res.send(obj);
    })
})

//旅行故事轮播
router.get('/img',(req,res)=>{
    var obj={
        img:[]
    }
    var sql="SELECT * FROM imgam"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        obj.img=result;
        res.send(obj);
    })
})

//注册页面
router.post("/login",(req,res)=>{
    var uname=req.body.uname;
    var upwd=req.body.upwd;
    var uemail=req.body.uemail;
    var uphone=req.body.uphone;
    pool.query("insert into login values(null,?,?,?,?)",[uname,upwd,uemail,uphone],function(err,result){
        if(err) throw err;
        if(result.affectedRows>0){
            res.send({ok:1,msg:"注册成功"});
        }else{
            res.send({ok:0,msg:"注册失败"});
        }
    })
})

//登陆页面
router.post("/user",(req,res)=>{
    var uname=req.body.uname;
    var upwd=req.body.upwd;
    pool.query("select * from login where uname=? and upwd=?",[uname,upwd],function(err,result){
        if(err) throw err;
        if(result.length>0){
            res.send({ok:1,mag:"登陆成功"});
        }else{
            res.send({ok:0,msg:"登陆失败"})
        }
    });
})

//用户名验证
router.get("/user",(req,res)=>{
    var uname=req.query.uname;
    pool.query("select * from login where uname=?",[uname],function(err,result){
        if(err) throw err;
        if(result.length>0){
            res.send("0");
        }else{
            res.send("1");
        }
    })
})

//邮箱验证
router.get("/uemail",(req,res)=>{
    var uemail=req.query.uemail;
    console.log(uemail);
    pool.query("select * from login where uemail=?",[uemail],function(err,result){
        if(err) throw err;
        if(result.length>0){
            res.send("0");
        }else{
            res.send("1");
        }
    })
})

//手机号验证
router.get("/uphone",(req,res)=>{
    var uphone=req.query.uphone;
    console.log(uphone);
    pool.query("select * from login where uphone=?",[uphone],function(err,result){
        if(err) throw err;
        if(result.length>0){
            res.send("0");
        }else{
            res.send("1");
        }
    })
})

//北京住宿图片
router.get("/beijing",(req,res)=>{
    var pno=req.query.pno;
    var pageSize=req.query.pageSize;
    if(!pno){pno=1}
    if(!pageSize){pageSize=6}
    var reg=/^[0-9]{1,3}$/;
    if(!reg.test(pno)){
        res.send({code:-1,msg:"页码格式不正确"});
        return
    }
    if(!reg.test(pageSize)){
        res.send({code:-2,msg:"页码大小格式不正确"});
        return
    }
    var progress = 0;
    var obj = {code:1};
    obj.uname = req.session.uname;

    var sql = "SELECT count(id) AS c FROM beijing";
    pool.query(sql,(err,result)=>{
        if(err)throw err;
        var pageCount = Math.ceil(result[0].c/pageSize);
        progress+=50;
        obj.pageCount = pageCount;
        if(progress==100){
            res.send(obj);
        }
    });

    var sql =" SELECT id,img_url,title,";
    sql+=" title_money,title_text,title_per";
    sql+=" FROM beijing";
    sql+=" ORDER BY id ASC";
    sql+=" LIMIT ?,?";
    var offset = parseInt((pno-1)*pageSize);
    pageSize = parseInt(pageSize);
    pool.query(sql,[offset,pageSize],(err,result)=>{
        if(err)throw err;
        progress+=50;
        obj.data=result;
        if(progress==100){
            res.send(obj);
        }
    })
})

//价格从高到底
router.get("/high",(req,res)=>{
    var pno=req.query.pno;
    var pageSize=req.query.pageSize;
    if(!pno){pno=1}
    if(!pageSize){pageSize=6}
    var reg=/^[0-9]{1,3}$/;
    if(!reg.test(pno)){
        res.send({code:-1,msg:"页码格式不正确"});
        return
    }
    if(!reg.test(pageSize)){
        res.send({code:-2,msg:"页码大小格式不正确"});
        return
    }
    var progress = 0;
    var obj = {code:1};
    obj.uname = req.session.uname;

    var sql = "SELECT count(id) AS c FROM beijing";
    pool.query(sql,(err,result)=>{
        if(err)throw err;
        var pageCount = Math.ceil(result[0].c/pageSize);
        progress+=50;
        obj.pageCount = pageCount;
        if(progress==100){
            res.send(obj);
        }
    });

    var sql ="select * from beijing order by title_money desc LIMIT ?,?"
    var offset = parseInt((pno-1)*pageSize);
    pageSize = parseInt(pageSize);
    pool.query(sql,[offset,pageSize],(err,result)=>{
        if(err)throw err;
        progress+=50;
        obj.data=result;
        if(progress==100){
            res.send(obj);
        }
    })
})


//旅行故事
router.get("/travel",(req,res)=>{
    var pno=req.query.pno;
    var pageSize=req.query.pageSize;
    if(!pno){pno=1}
    if(!pageSize){pageSize=6}
    var reg=/^[0-9]{1,3}$/;
    if(!reg.test(pno)){
        res.send({code:-1,msg:"页码格式不正确"});
        return
    }
    if(!reg.test(pageSize)){
        res.send({code:-2,msg:"页码大小格式不正确"});
        return
    }
    var progress = 0;
    var obj = {code:1};
    obj.uname = req.session.uname;

    var sql = "SELECT count(id) AS c FROM travel";
    pool.query(sql,(err,result)=>{
        if(err)throw err;
        var pageCount = Math.ceil(result[0].c/pageSize);
        progress+=50;
        obj.pageCount = pageCount;
        if(progress==100){
            res.send(obj);
        }
    });

    var sql =" SELECT id,img_url,portrait,";
    sql+=" title,author,time,browse,content,region,live,pipil";
    sql+=" FROM travel";
    sql+=" ORDER BY id ASC";
    sql+=" LIMIT ?,?";
    var offset = parseInt((pno-1)*pageSize);
    pageSize = parseInt(pageSize);
    pool.query(sql,[offset,pageSize],(err,result)=>{
        if(err)throw err;
        progress+=50;
        obj.data=result;
        if(progress==100){
            res.send(obj);
        }
    })
})

module.exports = router;

