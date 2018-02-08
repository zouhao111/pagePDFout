// 获取本页表格中最后一行是第几行（对不同高度的表格进行不同的处理）
var last_counts = $('.t2:last').text();

//监听pdf导出按键
$('#exportpdf').click(function () {
	
//     将 id 为 contents 的 div 渲染成 canvas
	var targetDom = $("#contents");
	var copyDom = targetDom.clone();
	copyDom.width(targetDom.width()+ "px");    
    copyDom.height(targetDom.height()+ "px");
    $('body').append(copyDom);
    
    html2canvas(copyDom, {
        // 渲染完成时调用，获得 canvas
    	
        onrendered: function(canvas) {
            // 从 canvas 提取图片数据
            var imgData = canvas.toDataURL('image/jpeg',100);
　　　　　　　
　　　　　　 // 因为我要在每页都加上特定的图片，所以要先将图片转化为base64格式（可以参考这个网站：http://tool.css-js.com/base64.html）
            var img1_base = '~';
            var img2_base = '~';
            var img3_base = '~';

            //初始化pdf，设置相应格式（单位为pt,导出a4纸的大小）
            var doc = new jsPDF("p", "pt", "a4");

            //图片的位置和尺寸（图片,left,top,width,high）
//            doc.addImage(img1_base, 10, 5, 90, 50);
//            doc.addImage(img2_base, 450, 5, 130, 50);

　　　　　　　// 初始导出的页面为270（根据引入的图片和每行表格的高度设置）
//            var img_high = 270;
//            for (var i=1; i<last_counts; i++) {
//　　　　　　　　　// 然后每增加一行加20的高（因为我的表格是分页的，每页最多26行，所以最高为750）
//                img_high += 20
//            }
//            doc.addImage(imgData, 10, 65, 580, img_high);
            doc.addImage(imgData, 10, 10, 550, 900);
　　　　　　　// 页尾再加上一个图片
//            doc.addImage(img3_base, 450, 780, 120, 40);
            //输出保存命名为bill的pdf
            doc.save('bill.pdf');
        },
　　　　　// 导出的pdf默认背景颜色为黑色，所以要设置颜色为白（根据自己的需求设置）
        background: '#FFF'
    });
    $('body').remove(copyDom);
});