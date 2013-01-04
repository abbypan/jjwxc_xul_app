var JJWXC_QUERY_URL = "http://www.jjwxc.net/search.php";
var JJWXC_QUERY_TYPE = {
    "book":"1",    
    "writer":"2",  
    "lead":"4",  
    "support":"5", 
    "other":"6",
    "作品":"1",    
    "作者":"2",  
    "主角":"4",  
    "配角":"5", 
    "其他":"6"
};


function query_ljj(type){
    var keyword = get_selected_text();
    if(type=='cse'){
        query_bubble_cse(keyword);
    }else{
        query_ljj_form(keyword, type);
    }
}

function get_selected_text()
{
    var focused_window = document.commandDispatcher.focusedWindow;
    var select_text = focused_window.getSelection();
    return select_text.toString();
}

function query_bubble_cse(keyword){
    var kw = encodeURI(keyword);
    var num=20;
    var url='http://www.google.com.hk/custom?hl=zh-CN&newwindow=1&client=google-coop-np&cof=AH%3Aleft%3BS%3Ahttp%3A%2F%2Fwww.google.com%2Fcoop%2Fcse%3Fcx%3D002715881505881904928%3Alxsfdlsvzng%3BCX%3A%25E5%25B0%258F%25E8%25AF%25B4drama%3BL%3Ahttp%3A%2F%2Fmy1.photodump.com%2Fbubble7733%2Fpapaf-T.jpg%3BLH%3A98%3BLP%3A1%3BVLC%3A%23551a8b%3BGFNT%3A%23666666%3BDIV%3A%23cccccc%3B&adkw=AELymgXCCBA1xJdtdDsFAhFwECh_DAMPJDAJ4hfZjXU-zTjN8MqejYQvBdivNO4IgqCpVwz8hq4IUd8ZMj8fo2iIMQQDCi9UMzeobo-FUgk9jQIfIyiCNCI&btnG=Google+%E6%90%9C%E7%B4%A2&cx=002715881505881904928%3Alxsfdlsvzng&num='+num+'&q='+kw;
    var browser = getBrowser();
    browser.loadOneTab(url, null, null, null, false, true); 
};

function query_ljj_form(kw, type) {
    var t = JJWXC_QUERY_TYPE[type];
    var doc = window.content.document;
    var form=doc.createElement("form");  
    form.target='_blank';
    form.action= JJWXC_QUERY_URL;
    form.setAttribute('accept-charset', 'gbk');
    form.innerHTML='<input id="query_ljj_kw" type="text" value="' + 
        kw + '" name="kw"><input id="query_ljj_t" type="text" value="'+ 
        t +'" name="t"><input type="submit" value="查询" name="submit">';
    doc.body.appendChild(form);  

    form.submit();
    doc.body.removeChild(form);
    return ;
}
