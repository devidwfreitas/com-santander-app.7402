.class Lica;
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
        "Libr;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Liby;


# direct methods
.method constructor <init>(Liby;Z)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lica;->b:Liby;

    iput-boolean p2, p0, Lica;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Libr;)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lica;->b:Liby;

    invoke-static {v0}, Liby;->a(Liby;)Lidj;

    move-result-object v0

    invoke-interface {v0}, Lidj;->b()V

    .line 56
    if-nez p1, :cond_0

    .line 57
    iget-object v0, p0, Lica;->b:Liby;

    invoke-static {v0}, Liby;->a(Liby;)Lidj;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lidj;->a(Ljava/lang/String;)V

    .line 63
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-virtual {p1}, Libr;->getFaultstring()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Libr;->getFaultstring()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lica;->b:Liby;

    invoke-static {v0}, Liby;->a(Liby;)Lidj;

    move-result-object v0

    invoke-virtual {p1}, Libr;->getFaultstring()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lidj;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lica;->b:Liby;

    invoke-static {v0}, Liby;->b(Liby;)Libx;

    move-result-object v0

    iget-boolean v1, p0, Lica;->a:Z

    invoke-interface {v0, p1, v1}, Libx;->a(Libr;Z)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    check-cast p1, Libr;

    invoke-virtual {p0, p1}, Lica;->a(Libr;)V

    return-void
.end method
