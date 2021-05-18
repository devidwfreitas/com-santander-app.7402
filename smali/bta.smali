.class public Lbta;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbrf;


# instance fields
.field final synthetic a:Lcom/facebook/login/LoginClient$Request;

.field final synthetic b:Lcom/facebook/login/WebViewLoginMethodHandler;


# direct methods
.method public constructor <init>(Lcom/facebook/login/WebViewLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lbta;->b:Lcom/facebook/login/WebViewLoginMethodHandler;

    iput-object p2, p0, Lbta;->a:Lcom/facebook/login/LoginClient$Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lbhp;)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lbta;->b:Lcom/facebook/login/WebViewLoginMethodHandler;

    iget-object v1, p0, Lbta;->a:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v0, v1, p1, p2}, Lcom/facebook/login/WebViewLoginMethodHandler;->b(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lbhp;)V

    .line 75
    return-void
.end method
