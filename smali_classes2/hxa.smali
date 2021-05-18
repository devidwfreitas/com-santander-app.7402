.class Lhxa;
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
.field final synthetic a:Lhwr;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lhwu;


# direct methods
.method constructor <init>(Lhwu;Lhwr;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lhxa;->c:Lhwu;

    iput-object p2, p0, Lhxa;->a:Lhwr;

    iput-object p3, p0, Lhxa;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhuy;)V
    .locals 3

    .prologue
    .line 176
    :try_start_0
    invoke-virtual {p1}, Lhuy;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lhxa;->a:Lhwr;

    invoke-virtual {p1}, Lhuy;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lhxa;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lhwr;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lhxa;->a:Lhwr;

    new-instance v1, Lhur;

    invoke-virtual {p1}, Lhuy;->getMensagemErro()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lhur;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lhwr;->a(Lhur;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    const-string v1, "CPURepositoryImpl"

    const-string v2, "callQuadroAviso"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    iget-object v0, p0, Lhxa;->a:Lhwr;

    new-instance v1, Lhur;

    const v2, 0x7f09043f

    invoke-direct {v1, v2}, Lhur;-><init>(I)V

    invoke-interface {v0, v1}, Lhwr;->a(Lhur;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 172
    check-cast p1, Lhuy;

    invoke-virtual {p0, p1}, Lhxa;->a(Lhuy;)V

    return-void
.end method
