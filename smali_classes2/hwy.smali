.class Lhwy;
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
        "Lhuy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhwq;

.field final synthetic b:Lhwu;


# direct methods
.method constructor <init>(Lhwu;Lhwq;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lhwy;->b:Lhwu;

    iput-object p2, p0, Lhwy;->a:Lhwq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhuy;)V
    .locals 3

    .prologue
    .line 139
    :try_start_0
    invoke-virtual {p1}, Lhuy;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lhwy;->a:Lhwq;

    invoke-interface {v0, p1}, Lhwq;->a(Lhuy;)V

    .line 148
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lhwy;->a:Lhwq;

    new-instance v1, Lhur;

    invoke-virtual {p1}, Lhuy;->getMensagemErro()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lhur;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lhwq;->a(Lhur;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    const-string v1, "CPURepositoryImpl"

    const-string v2, "termosCondicaoService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    iget-object v0, p0, Lhwy;->a:Lhwq;

    new-instance v1, Lhur;

    const v2, 0x7f09043f

    invoke-direct {v1, v2}, Lhur;-><init>(I)V

    invoke-interface {v0, v1}, Lhwq;->a(Lhur;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 135
    check-cast p1, Lhuy;

    invoke-virtual {p0, p1}, Lhwy;->a(Lhuy;)V

    return-void
.end method
