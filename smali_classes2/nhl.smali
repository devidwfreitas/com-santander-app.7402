.class Lnhl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Lnhk;


# direct methods
.method constructor <init>(Lnhk;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lnhl;->b:Lnhk;

    iput-object p2, p0, Lnhl;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnhl;->a:Landroid/webkit/WebView;

    const-string v1, "javascript:(function(){\n    var payload = {};\n    try {\n        var ts = new RegExp(\"ut[0-9]+\\.[0-9]+\\.[0-9]{12}\").exec(document.childNodes[0].textContent)[0];\n        ts = ts.substring(ts.length - 12, ts.length);\n        var y = ts.substring(0, 4);\n        var mo = ts.substring(4, 6);\n        var d = ts.substring(6, 8);\n        var h = ts.substring(8, 10);\n        var mi = ts.substring(10, 12);\n        var t = Date.from(y+\'/\'+mo+\'/\'+d+\' \'+h+\':\'+mi+\' UTC\');\n        if(!isNaN(t)){\n            payload.published = t;\n        }\n    } catch(e) {    }\n    var f=document.cookie.indexOf(\'trace_id=\');\n    if(f>=0){\n        payload.trace_id = document.cookie.substring(f+9).split(\';\')[0];\n    }\n    window.open(\'tealium://_config?request=\' + encodeURIComponent(JSON.stringify({\n        payload : payload\n    })), \'_self\');\n})()"

    invoke-static {v0, v1}, Lcom/ca/android/app/CaMDOWebView;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
