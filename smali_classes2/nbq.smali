.class Lnbq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lnbp;


# direct methods
.method constructor <init>(Lnbp;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lnbq;->b:Lnbp;

    iput-object p2, p0, Lnbq;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 53
    check-cast p1, Lnax;

    .line 54
    iget-object v0, p0, Lnbq;->b:Lnbp;

    invoke-static {v0}, Lnbp;->a(Lnbp;)Lmip;

    move-result-object v0

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {p1}, Lnax;->getTokenTransacao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmir;->i(Ljava/lang/String;)V

    .line 56
    :try_start_0
    iget-object v0, p0, Lnbq;->a:Ljava/lang/String;

    invoke-static {v0}, Lalb;->a(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ErrD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 61
    array-length v1, v0

    if-lez v1, :cond_0

    .line 62
    new-instance v1, Lnaf;

    invoke-direct {v1}, Lnaf;-><init>()V

    invoke-virtual {v1, v0}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v1, Lneh;

    new-instance v2, Lnbr;

    invoke-direct {v2, p0}, Lnbr;-><init>(Lnbq;)V

    invoke-direct {v1, v2}, Lneh;-><init>(Lgkw;)V

    .line 90
    invoke-virtual {v1, v0}, Lneh;->a(Ljava/lang/String;)V

    .line 105
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lnbq;->b:Lnbp;

    invoke-static {v0}, Lnbp;->c(Lnbp;)Lndw;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lndw;->a(Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    const-string v1, "ERROR_GEN_OTP"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lnbq;->b:Lnbp;

    invoke-static {v0}, Lnbp;->c(Lnbp;)Lndw;

    move-result-object v0

    invoke-interface {v0, v4}, Lndw;->a(Ljava/lang/Integer;)V

    goto :goto_0

    .line 96
    :cond_1
    :try_start_1
    const-string v1, "ErroGenerateOTP"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lnbq;->b:Lnbp;

    invoke-static {v1}, Lnbp;->c(Lnbp;)Lndw;

    move-result-object v1

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ErrD"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Lndw;->a(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
