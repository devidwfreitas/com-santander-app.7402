.class Lhyn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkv",
        "<",
        "Lhyq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhxy;

.field final synthetic b:Lhyb;


# direct methods
.method constructor <init>(Lhyb;Lhxy;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lhyn;->b:Lhyb;

    iput-object p2, p0, Lhyn;->a:Lhxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhyq;)V
    .locals 3

    .prologue
    .line 412
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lhyq;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lhyn;->b:Lhyb;

    iget-object v1, p0, Lhyn;->b:Lhyb;

    invoke-static {v1}, Lhyb;->b(Lhyb;)Lhxo;

    move-result-object v1

    invoke-virtual {v1}, Lhxo;->f()Lhxk;

    move-result-object v1

    invoke-virtual {p1}, Lhyq;->a()Z

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lhyb;->a(Lhyb;Lhxk;Lhyq;Z)Lhxk;

    move-result-object v0

    .line 414
    iget-object v1, p0, Lhyn;->b:Lhyb;

    invoke-static {v1}, Lhyb;->b(Lhyb;)Lhxo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhxo;->b(Lhxk;)V

    .line 415
    invoke-virtual {p1}, Lhyq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lhyn;->a:Lhxy;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lhxy;->a(I)V

    .line 423
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lhyn;->a:Lhxy;

    invoke-interface {v0}, Lhxy;->a()V

    goto :goto_0

    .line 421
    :cond_1
    iget-object v0, p0, Lhyn;->a:Lhxy;

    invoke-interface {v0}, Lhxy;->b()V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 409
    check-cast p1, Lhyq;

    invoke-virtual {p0, p1}, Lhyn;->a(Lhyq;)V

    return-void
.end method
