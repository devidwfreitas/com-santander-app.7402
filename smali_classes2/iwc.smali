.class Liwc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Livz;


# direct methods
.method constructor <init>(Livz;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Liwc;->c:Livz;

    iput-object p2, p0, Liwc;->a:Ljava/lang/String;

    iput-object p3, p0, Liwc;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 103
    if-eqz p1, :cond_3

    instance-of v0, p1, Liuv;

    if-eqz v0, :cond_3

    .line 105
    check-cast p1, Liuv;

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Liuv;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {p1}, Liuv;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p1}, Liuv;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Liwc;->c:Livz;

    invoke-static {v0}, Livz;->a(Livz;)Ljal;

    move-result-object v0

    const-string v1, "falhaComunicacao|"

    const-string v2, "s0003"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljal;->a(Ljava/lang/String;)V

    .line 135
    :goto_0
    return-void

    .line 114
    :cond_0
    new-instance v1, Liuz;

    invoke-direct {v1}, Liuz;-><init>()V

    .line 115
    iget-object v0, p0, Liwc;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Liuz;->a(Ljava/lang/String;)V

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Liwc;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Liwc;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnar;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Liuz;->d(Ljava/lang/String;)V

    .line 118
    :try_start_0
    new-instance v0, Lnaf;

    invoke-direct {v0}, Lnaf;-><init>()V

    iget-object v2, p0, Liwc;->b:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Liuz;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_1
    iget-object v0, p0, Liwc;->c:Livz;

    invoke-static {v0}, Livz;->a(Livz;)Ljal;

    move-result-object v0

    invoke-interface {v0, v1}, Ljal;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    const-string v2, "ERROR_ENCRYPT"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 126
    :cond_1
    iget-object v0, p0, Liwc;->c:Livz;

    invoke-static {v0}, Livz;->a(Livz;)Ljal;

    move-result-object v0

    const-string v1, "falhaComunicacao|"

    invoke-virtual {p1}, Liuv;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljal;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_2
    iget-object v0, p0, Liwc;->c:Livz;

    invoke-static {v0}, Livz;->a(Livz;)Ljal;

    move-result-object v0

    const-string v1, "falhaComunicacao|"

    const-string v2, "s0002"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljal;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_3
    iget-object v0, p0, Liwc;->c:Livz;

    invoke-static {v0}, Livz;->a(Livz;)Ljal;

    move-result-object v0

    const-string v1, "falhaComunicacao|"

    const-string v2, "s0001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljal;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
