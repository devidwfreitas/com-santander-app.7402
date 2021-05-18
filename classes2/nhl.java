import android.webkit.WebView;
import com.ca.android.app.CaMDOWebView;

class nhl implements Runnable {
  nhl(nhk paramnhk, WebView paramWebView) {}
  
  public void run() {
    CaMDOWebView.loadUrl(this.a, "javascript:(function(){\n    var payload = {};\n    try {\n        var ts = new RegExp(\"ut[0-9]+\\.[0-9]+\\.[0-9]{12}\").exec(document.childNodes[0].textContent)[0];\n        ts = ts.substring(ts.length - 12, ts.length);\n        var y = ts.substring(0, 4);\n        var mo = ts.substring(4, 6);\n        var d = ts.substring(6, 8);\n        var h = ts.substring(8, 10);\n        var mi = ts.substring(10, 12);\n        var t = Date.from(y+'/'+mo+'/'+d+' '+h+':'+mi+' UTC');\n        if(!isNaN(t)){\n            payload.published = t;\n        }\n    } catch(e) {    }\n    var f=document.cookie.indexOf('trace_id=');\n    if(f>=0){\n        payload.trace_id = document.cookie.substring(f+9).split(';')[0];\n    }\n    window.open('tealium://_config?request=' + encodeURIComponent(JSON.stringify({\n        payload : payload\n    })), '_self');\n})()");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nhl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */