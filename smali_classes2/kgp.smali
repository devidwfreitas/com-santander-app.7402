.class Lkgp;
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
        "Lkgi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkgn;


# direct methods
.method constructor <init>(Lkgn;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lkgp;->a:Lkgn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 95
    check-cast p1, Lkgi;

    invoke-virtual {p0, p1}, Lkgp;->a(Lkgi;)V

    return-void
.end method

.method public a(Lkgi;)V
    .locals 2

    .prologue
    .line 98
    if-nez p1, :cond_1

    .line 99
    iget-object v0, p0, Lkgp;->a:Lkgn;

    invoke-static {v0}, Lkgn;->a(Lkgn;)Lkgx;

    move-result-object v0

    const-string v1, "Ocorreu um erro ao carregar as informa\u00e7\u00f5es"

    invoke-virtual {v0, v1}, Lkgx;->a(Ljava/lang/String;)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-virtual {p1}, Lkgi;->getMensagemErro()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lkgp;->a:Lkgn;

    invoke-static {v0}, Lkgn;->a(Lkgn;)Lkgx;

    move-result-object v0

    invoke-virtual {p1}, Lkgi;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkgx;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {p1}, Lkgi;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lkgp;->a:Lkgn;

    invoke-static {v0}, Lkgn;->a(Lkgn;)Lkgx;

    move-result-object v0

    invoke-virtual {p1}, Lkgi;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkgx;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
