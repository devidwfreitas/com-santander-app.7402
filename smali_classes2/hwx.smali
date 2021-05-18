.class Lhwx;
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
        "Lhus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhwp;

.field final synthetic b:Lhwu;


# direct methods
.method constructor <init>(Lhwu;Lhwp;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lhwx;->b:Lhwu;

    iput-object p2, p0, Lhwx;->a:Lhwp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhus;)V
    .locals 3

    .prologue
    .line 121
    :try_start_0
    invoke-virtual {p1}, Lhus;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lhwx;->a:Lhwp;

    invoke-interface {v0, p1}, Lhwp;->a(Lhus;)V

    .line 130
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lhwx;->a:Lhwp;

    new-instance v1, Lhur;

    invoke-virtual {p1}, Lhus;->getMensagemErro()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lhur;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lhwp;->a(Lhur;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    const-string v1, "CPURepositoryImpl"

    const-string v2, "calcular"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    iget-object v0, p0, Lhwx;->a:Lhwp;

    new-instance v1, Lhur;

    const v2, 0x7f09043f

    invoke-direct {v1, v2}, Lhur;-><init>(I)V

    invoke-interface {v0, v1}, Lhwp;->a(Lhur;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 117
    check-cast p1, Lhus;

    invoke-virtual {p0, p1}, Lhwx;->a(Lhus;)V

    return-void
.end method
