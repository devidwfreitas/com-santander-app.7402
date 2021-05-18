.class public Lmrl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmrk;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmlq;Lmlp;Lmrp;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Lmlq;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmrl;->a:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Lmlq;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmrl;->b:Ljava/lang/String;

    .line 43
    invoke-virtual {p2}, Lmlp;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmrl;->c:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lmlq;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmrl;->d:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lmlq;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmrl;->e:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lmlq;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmrl;->f:Ljava/lang/String;

    .line 47
    invoke-virtual {p3}, Lmrp;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmrl;->g:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lmlq;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmrl;->h:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lmlq;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmrl;->i:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lmlq;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmrl;->j:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Lmlq;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmrl;->m:Ljava/lang/String;

    .line 52
    invoke-virtual {p2}, Lmlp;->getDataHoraTransacao()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmrl;->k:Ljava/lang/String;

    .line 53
    invoke-virtual {p2}, Lmlp;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmrl;->l:Ljava/lang/String;

    .line 54
    invoke-virtual {p2}, Lmlp;->getMsgErro()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmrl;->p:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lmlq;->c()Z

    move-result v0

    iput-boolean v0, p0, Lmrl;->n:Z

    .line 56
    invoke-virtual {p1}, Lmlq;->s()Z

    move-result v0

    iput-boolean v0, p0, Lmrl;->o:Z

    .line 57
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    :try_start_0
    iget-object v0, p0, Lmrl;->b:Ljava/lang/String;

    iget-object v1, p0, Lmrl;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const-string v0, "N/A"

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lmrl;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmrl;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 78
    :try_start_0
    invoke-virtual {p0}, Lmrl;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lmrl;->e:Ljava/lang/String;

    iget-object v1, p0, Lmrl;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    .line 81
    :cond_0
    const-string v0, "%s / %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lmrl;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lmrl;->d:Ljava/lang/String;

    .line 83
    invoke-static {v3}, Lmwv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 81
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    const-string v0, "N/A"

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lmrl;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmrl;->f:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lmrl;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmrl;->g:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lmrl;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmrl;->h:Ljava/lang/String;

    const-string v1, "cc"

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Conta Corrente"

    .line 106
    :goto_0
    return-object v0

    .line 107
    :cond_0
    const-string v0, "Transfer\u00eancia entre contas"

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lmrl;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmrl;->i:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 4

    .prologue
    .line 121
    :try_start_0
    const-string v0, "R$%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lmrl;->j:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    const-string v0, ""

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lmrl;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmrl;->k:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "dd/MM/yyyy HH:mm:ss"

    .line 131
    invoke-static {v0, v1}, Lgpl;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lmrl;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmrl;->l:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    :try_start_0
    iget-object v0, p0, Lmrl;->m:Ljava/lang/String;

    invoke-static {v0}, Lnai;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    const-string v0, ""

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lmrl;->n:Z

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lmrl;->o:Z

    return v0
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lmrl;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tef"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lmrl;->p:Ljava/lang/String;

    return-object v0
.end method
