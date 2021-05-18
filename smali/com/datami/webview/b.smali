.class final Lcom/datami/webview/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/datami/webview/SmiWebView;


# direct methods
.method constructor <init>(Lcom/datami/webview/SmiWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/webview/b;->a:Lcom/datami/webview/SmiWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/datami/webview/b;->a:Lcom/datami/webview/SmiWebView;

    invoke-static {v0}, Lcom/datami/webview/SmiWebView;->access$900(Lcom/datami/webview/SmiWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/datami/webview/SmiWebView;->access$802(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
