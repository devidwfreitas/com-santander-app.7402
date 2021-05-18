.class Ljjz;
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
        "Ljdf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljjy;


# direct methods
.method constructor <init>(Ljjy;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Ljjz;->a:Ljjy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Ljdf;

    invoke-virtual {p0, p1}, Ljjz;->a(Ljdf;)V

    return-void
.end method

.method public a(Ljdf;)V
    .locals 2

    .prologue
    .line 37
    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p1}, Ljdf;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p1}, Ljdf;->getMensagemErro()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Ljjz;->a:Ljjy;

    invoke-static {v0}, Ljjy;->a(Ljjy;)Ljjx;

    move-result-object v0

    invoke-interface {v0, p1}, Ljjx;->a(Ljdf;)V

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Ljjz;->a:Ljjy;

    invoke-static {v0}, Ljjy;->a(Ljjy;)Ljjx;

    move-result-object v0

    invoke-interface {v0, p1}, Ljjx;->b(Ljdf;)V

    goto :goto_0
.end method
