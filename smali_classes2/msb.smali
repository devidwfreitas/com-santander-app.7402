.class Lmsb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liew;


# instance fields
.field final synthetic a:Lmrv;

.field final synthetic b:Lmry;


# direct methods
.method constructor <init>(Lmry;Lmrv;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lmsb;->b:Lmry;

    iput-object p2, p0, Lmsb;->a:Lmrv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 213
    if-eqz p1, :cond_0

    .line 214
    iget-object v0, p0, Lmsb;->a:Lmrv;

    invoke-interface {v0}, Lmrv;->a()V

    .line 216
    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 200
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 201
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    new-instance v1, Lnaf;

    invoke-direct {v1}, Lnaf;-><init>()V

    .line 203
    invoke-virtual {v1, v0}, Lnaf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "99|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lmsb;->a:Lmrv;

    invoke-interface {v1, v0}, Lmrv;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    iget-object v0, p0, Lmsb;->a:Lmrv;

    invoke-interface {v0}, Lmrv;->a()V

    goto :goto_0
.end method
