.class final Lbuc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbus;


# instance fields
.field final synthetic a:Lbue;

.field final synthetic b:Lbvj;


# direct methods
.method constructor <init>(Lbue;Lbvj;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lbuc;->a:Lbue;

    iput-object p2, p0, Lbuc;->b:Lbvj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbum;)V
    .locals 5

    .prologue
    .line 334
    iget-object v0, p1, Lbum;->b:Lbuz;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lbuc;->a:Lbue;

    iget-object v1, p1, Lbum;->b:Lbuz;

    .line 336
    invoke-static {v1}, Lbua;->a(Lbuz;)Lbud;

    move-result-object v1

    .line 335
    invoke-interface {v0, v1}, Lbue;->a(Lbud;)V

    .line 349
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lbuc;->b:Lbvj;

    invoke-static {v0, p1}, Lbua;->a(Lbvj;Lbum;)Landroid/os/Bundle;

    move-result-object v0

    .line 342
    new-instance v1, Lcom/facebook/GraphRequest;

    .line 343
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v2

    const-string v3, "current_place/results"

    sget-object v4, Lbiz;->GET:Lbiz;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;)V

    .line 347
    iget-object v0, p0, Lbuc;->a:Lbue;

    invoke-interface {v0, v1}, Lbue;->a(Lcom/facebook/GraphRequest;)V

    goto :goto_0
.end method
