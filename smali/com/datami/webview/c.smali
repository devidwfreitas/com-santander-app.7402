.class final Lcom/datami/webview/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/datami/smi/SmiResult;

.field final synthetic b:Lcom/datami/webview/SmiWebView;


# direct methods
.method constructor <init>(Lcom/datami/webview/SmiWebView;Lcom/datami/smi/SmiResult;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/webview/c;->b:Lcom/datami/webview/SmiWebView;

    iput-object p2, p0, Lcom/datami/webview/c;->a:Lcom/datami/smi/SmiResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/datami/webview/c;->b:Lcom/datami/webview/SmiWebView;

    iget-object v1, p0, Lcom/datami/webview/c;->a:Lcom/datami/smi/SmiResult;

    invoke-static {v0, v1}, Lcom/datami/webview/SmiWebView;->access$1000(Lcom/datami/webview/SmiWebView;Lcom/datami/smi/SmiResult;)V

    return-void
.end method
