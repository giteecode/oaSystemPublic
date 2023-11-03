<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <title>404</title>
    <style>html, body{height:95%;}body{background: #0f3854;background: -webkit-radial-gradient(center ellipse, #0a2e38 0%, #000000 70%);background: radial-gradient(ellipse at center, #0a2e38 0%, #000000 70%);background-size: 100%;}p{margin:0;padding:0;}#clock{font-family: 'Share Tech Mono', monospace;color: #ffffff;text-align: center;position: absolute;left: 50%;top: 50%;-webkit-transform: translate(-50%, -50%);transform: translate(-50%, -50%);color: #daf6ff;text-shadow: 0 0 20px #0aafe6, 0 0 20px rgba(10, 175, 230, 0);}#clock .time{letter-spacing: 0.05em;font-size: 60px;padding: 5px 0;}#clock .date{letter-spacing:0.1em;font-size:15px;}#clock .text{letter-spacing: 0.1em;font-size:12px;padding:20px 0 0;}</style>
    <script type="text/javascript" src="/js/time.js"></script>
</head>
<body>
<div id="clock">
    <p class="date">...404 error page...</p>
    <p class="date">您访问的页面丢失了，我们很快将它找回</p>
    <p class="time">{{ time }}</p>
    <p class="text">{{ date }}</p>
    <p class="text">
        <a href="/index" style="color: #daf6ff;font-size: 14px;">回到首页</a>
        <a href="" target="_blank" style="color: #daf6ff;font-size: 14px;">
            查看项目地址
        </a>
    </p>
</div>
<script>
    var clock = new Vue({
        el: '#clock',
        data: {
            time: '',
            date: ''
        }
    });
    var week = ['星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六'];
    var timerID = setInterval(updateTime, 1000);
    updateTime();
    function updateTime() {
        var cd = new Date();
        clock.time = zeroPadding(cd.getHours(), 2) + ':' + zeroPadding(cd.getMinutes(), 2) + ':' + zeroPadding(cd.getSeconds(), 2);
        clock.date = zeroPadding(cd.getFullYear(), 4) + '-' + zeroPadding(cd.getMonth()+1, 2) + '-' + zeroPadding(cd.getDate(), 2) + ' ' + week[cd.getDay()];
    };
    function zeroPadding(num, digit) {
        var zero = '';
        for(var i = 0; i < digit; i++) {
            zero += '0';
        }
        return (zero + num).slice(-digit);
    }</script>
</body>

</html>
