.class Lhxb;
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
        "Lhuo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhws;

.field final synthetic b:Lhwu;


# direct methods
.method constructor <init>(Lhwu;Lhws;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lhxb;->b:Lhwu;

    iput-object p2, p0, Lhxb;->a:Lhws;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhuo;)V
    .locals 3

    .prologue
    .line 196
    :try_start_0
    invoke-virtual {p1}, Lhuo;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-static {}, Lhyb;->j()Lhya;

    move-result-object v0

    invoke-interface {v0}, Lhya;->h()V

    .line 198
    iget-object v0, p0, Lhxb;->a:Lhws;

    invoke-interface {v0, p1}, Lhws;->a(Lhuo;)V

    .line 212
    :goto_0
    return-void

    .line 200
    :cond_0
    new-instance v0, Lhur;

    invoke-virtual {p1}, Lhuo;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lhur;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    const-string v1, "CPURepositoryImpl"

    const-string v2, "contratar"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lhuo;->getMensagemErro()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    new-instance v0, Lhur;

    invoke-virtual {p1}, Lhuo;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lhur;-><init>(Ljava/lang/String;)V

    .line 210
    :goto_1
    iget-object v1, p0, Lhxb;->a:Lhws;

    invoke-interface {v1, v0}, Lhws;->a(Lhur;)V

    goto :goto_0

    .line 208
    :cond_1
    new-instance v0, Lhur;

    const v1, 0x7f09043f

    invoke-direct {v0, v1}, Lhur;-><init>(I)V

    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 192
    check-cast p1, Lhuo;

    invoke-virtual {p0, p1}, Lhxb;->a(Lhuo;)V

    return-void
.end method
