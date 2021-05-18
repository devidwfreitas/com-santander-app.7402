.class Lnbj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkw",
        "<",
        "Lftz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lnbi;


# direct methods
.method constructor <init>(Lnbi;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lnbj;->a:Lnbi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lftz;)V
    .locals 2

    .prologue
    const v1, 0x7f0903b9

    .line 77
    if-eqz p1, :cond_2

    .line 78
    invoke-virtual {p1}, Lftz;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lnbj;->a:Lnbi;

    iget-object v0, v0, Lnbi;->a:Lnbh;

    iget-object v0, v0, Lnbh;->a:Lnbg;

    invoke-static {v0}, Lnbg;->b(Lnbg;)Lndw;

    move-result-object v0

    invoke-interface {v0}, Lndw;->f()V

    .line 88
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual {p1}, Lftz;->hasError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lnbj;->a:Lnbi;

    iget-object v0, v0, Lnbi;->a:Lnbh;

    iget-object v0, v0, Lnbh;->a:Lnbg;

    invoke-static {v0}, Lnbg;->b(Lnbg;)Lndw;

    move-result-object v0

    invoke-interface {v0, p1}, Lndw;->a(Lftz;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lnbj;->a:Lnbi;

    iget-object v0, v0, Lnbi;->a:Lnbh;

    iget-object v0, v0, Lnbh;->a:Lnbg;

    invoke-static {v0}, Lnbg;->b(Lnbg;)Lndw;

    move-result-object v0

    invoke-interface {v0, v1}, Lndw;->a(I)V

    goto :goto_0

    .line 86
    :cond_2
    iget-object v0, p0, Lnbj;->a:Lnbi;

    iget-object v0, v0, Lnbi;->a:Lnbh;

    iget-object v0, v0, Lnbh;->a:Lnbg;

    invoke-static {v0}, Lnbg;->b(Lnbg;)Lndw;

    move-result-object v0

    invoke-interface {v0, v1}, Lndw;->a(I)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 74
    check-cast p1, Lftz;

    invoke-virtual {p0, p1}, Lnbj;->a(Lftz;)V

    return-void
.end method
