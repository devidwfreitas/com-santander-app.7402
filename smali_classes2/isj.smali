.class Lisj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgwd;


# instance fields
.field final synthetic a:Lise;


# direct methods
.method constructor <init>(Lise;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lisj;->a:Lise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lipk;)V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lisj;->a:Lise;

    invoke-static {v0}, Lise;->i(Lise;)V

    .line 371
    return-void
.end method

.method public a(Lis;)V
    .locals 2

    .prologue
    .line 386
    if-eqz p1, :cond_0

    .line 387
    iget-object v0, p0, Lisj;->a:Lise;

    invoke-static {v0}, Lise;->c(Lise;)Litf;

    move-result-object v0

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Litf;->c(Ljava/lang/String;)V

    .line 391
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lisj;->a:Lise;

    invoke-static {v0}, Lise;->c(Lise;)Litf;

    move-result-object v0

    const v1, 0x7f0900f3

    invoke-interface {v0, v1}, Litf;->a(I)V

    goto :goto_0
.end method

.method public b(Lipk;)V
    .locals 4

    .prologue
    const v1, 0x7f09043f

    .line 375
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lipk;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lisj;->a:Lise;

    invoke-static {v0}, Lise;->c(Lise;)Litf;

    move-result-object v0

    invoke-interface {v0, v1}, Litf;->a(I)V

    .line 377
    const-string v1, "LoginInteractorImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(requestSaldoContaCorrenteHub) - onErrorProduct: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lipk;->a()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liou;

    invoke-virtual {v0}, Liou;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :goto_0
    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lisj;->a:Lise;

    invoke-static {v0}, Lise;->c(Lise;)Litf;

    move-result-object v0

    invoke-interface {v0, v1}, Litf;->a(I)V

    .line 380
    const-string v0, "LoginInteractorImpl"

    const-string v1, "(requestSaldoContaCorrenteHub) - onErrorProduct: null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
