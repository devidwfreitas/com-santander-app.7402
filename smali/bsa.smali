.class public Lbsa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbql;


# instance fields
.field final synthetic a:Lcom/facebook/login/LoginClient$Request;

.field final synthetic b:Lcom/facebook/login/GetTokenLoginMethodHandler;


# direct methods
.method public constructor <init>(Lcom/facebook/login/GetTokenLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lbsa;->b:Lcom/facebook/login/GetTokenLoginMethodHandler;

    iput-object p2, p0, Lbsa;->a:Lcom/facebook/login/LoginClient$Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lbsa;->b:Lcom/facebook/login/GetTokenLoginMethodHandler;

    iget-object v1, p0, Lbsa;->a:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/login/GetTokenLoginMethodHandler;->a(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V

    .line 75
    return-void
.end method
