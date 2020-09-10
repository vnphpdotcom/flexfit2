<html>
<body>
<h1>Đây là trang hiển thị của hợp đồng <span style="color: red">{{$data->contract_code}}</span> khi không có token</h1>
<p>Quét QR Code bên dưới để nhận link có token:</p>
<img src="data:image/png;base64, {!! base64_encode(QrCode::format('png')
                        ->size(500)->errorCorrection('H')
                        ->generate(env('APP_URL').'/'.$token)) !!} ">
</body>
</html>