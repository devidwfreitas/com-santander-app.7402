.class public Ljaq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljap;


# instance fields
.field private a:Lizn;

.field private b:Liwg;


# direct methods
.method public constructor <init>(Lizn;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Ljaq;->a:Lizn;

    .line 28
    new-instance v0, Liwh;

    invoke-direct {v0, p0, p2}, Liwh;-><init>(Ljap;Landroid/app/Activity;)V

    iput-object v0, p0, Ljaq;->b:Liwg;

    .line 29
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Ljaq;->a:Lizn;

    invoke-interface {v0, p1}, Lizn;->a(Landroid/content/Intent;)V

    .line 44
    return-void
.end method

.method public a(Lgyx;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ljaq;->b:Liwg;

    invoke-interface {v0, p1}, Liwg;->a(Lgyx;)V

    .line 34
    return-void
.end method

.method public a(Lgyx;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Ljaq;->b:Liwg;

    invoke-interface {v0, p1, p2}, Liwg;->a(Lgyx;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Ljaq;->b:Liwg;

    invoke-interface {v0, p1}, Liwg;->a(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public a()Z
    .locals 3

    .prologue
    .line 59
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->i()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->y()Lmwy;

    move-result-object v1

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    .line 62
    sget-object v2, Lnaz;->MODO_CONSULTIVO_TELA_05_BLOQUEIO_TENTATIVAS:Lnaz;

    invoke-virtual {v2}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lnaz;->TRANSACIONAL_COM_ID_OU_OTIMIZACAO:Lnaz;

    .line 63
    invoke-virtual {v2}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    :cond_0
    const-string v1, "PR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->C()Lipi;

    move-result-object v0

    const-string v1, "00000111"

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    .line 72
    :goto_0
    return v0

    .line 69
    :cond_1
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->C()Lipi;

    move-result-object v0

    const-string v1, "00000110"

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 72
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Ljaq;->b:Liwg;

    invoke-interface {v0, p1}, Liwg;->b(Ljava/lang/String;)V

    .line 54
    return-void
.end method
