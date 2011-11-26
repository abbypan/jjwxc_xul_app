function ljj_query(type){
    var browser = getBrowser();
    var keyword = get_selected_text();
    var url = 
        type == 'cse'? ljj_query_url_google_cse(keyword)
        :ljj_query_url(keyword,type);
    browser.loadOneTab(url, null, null, null, false, true); 
}

function ljj_query_url_google_cse(keyword){
    keyword =encodeURI(keyword);
    var num=20;
    var url='http://www.google.com.hk/custom?hl=zh-CN&newwindow=1&client=google-coop-np&cof=AH%3Aleft%3BS%3Ahttp%3A%2F%2Fwww.google.com%2Fcoop%2Fcse%3Fcx%3D002715881505881904928%3Alxsfdlsvzng%3BCX%3A%25E5%25B0%258F%25E8%25AF%25B4drama%3BL%3Ahttp%3A%2F%2Fmy1.photodump.com%2Fbubble7733%2Fpapaf-T.jpg%3BLH%3A98%3BLP%3A1%3BVLC%3A%23551a8b%3BGFNT%3A%23666666%3BDIV%3A%23cccccc%3B&adkw=AELymgXCCBA1xJdtdDsFAhFwECh_DAMPJDAJ4hfZjXU-zTjN8MqejYQvBdivNO4IgqCpVwz8hq4IUd8ZMj8fo2iIMQQDCi9UMzeobo-FUgk9jQIfIyiCNCI&btnG=Google+%E6%90%9C%E7%B4%A2&cx=002715881505881904928%3Alxsfdlsvzng&num='+num+'&q='+keyword;
    return url;
};

function ljj_query_url(keyword,type) {
    var query_type = {
        "book":"1",    /*作品*/
        "writer":"2",  /*作者*/ 
        "lead role":"4",  /*主角*/ 
        "support role":"5", /*配角*/ 
        "other":"6", /*其他*/
    };
    var url="http://www.jjwxc.net/search.php?t="+query_type[type]+"&kw=" + keyword;
    return url;
}

function get_selected_text()
{
    var focused_window = document.commandDispatcher.focusedWindow;
    var sel_text = focused_window.getSelection();
    return sel_text.toString();
}

