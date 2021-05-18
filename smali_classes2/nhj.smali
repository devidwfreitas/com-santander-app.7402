.class Lnhj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lnhg;


# direct methods
.method constructor <init>(Lnhg;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnhj;->b:Lnhg;

    iput-object p2, p0, Lnhj;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lnhj;->b:Lnhg;

    invoke-static {v0}, Lnhg;->b(Lnhg;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lnhj;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ca/android/app/CaMDOWebView;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lnhj;->b:Lnhg;

    invoke-static {v0}, Lnhg;->c(Lnhg;)Lnhc;

    move-result-object v0

    sget v1, Lnkf;->webview_dispatcher_error_loading_url:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lnhj;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lnhj;->b:Lnhg;

    invoke-static {v4}, Lnhg;->b(Lnhg;)Landroid/webkit/WebView;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lnhc;->d(I[Ljava/lang/Object;)V

    goto :goto_0
.end method
