.class public Lmvu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmvt;


# instance fields
.field private a:Lmup;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private b:Lmsc;

.field private c:Lgvb;


# direct methods
.method public constructor <init>(Lmup;)V
    .locals 1
    .param p1    # Lmup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lmvu;->a:Lmup;

    .line 38
    invoke-static {}, Lmse;->l()Lmsc;

    move-result-object v0

    iput-object v0, p0, Lmvu;->b:Lmsc;

    .line 39
    return-void
.end method

.method private a(Lmrk;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmrk;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    new-instance v1, Lgky;

    const-string v2, "Conta Origem: "

    invoke-interface {p1}, Lmrk;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v1, Lgky;

    const-string v2, "Nome Origem: "

    invoke-interface {p1}, Lmrk;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v1, Lgky;

    const-string v2, "Conta Destino: "

    invoke-interface {p1}, Lmrk;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v1, Lgky;

    const-string v2, "Nome Destino: "

    invoke-interface {p1}, Lmrk;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v1, Lgky;

    const-string v2, "Banco Destino: "

    invoke-interface {p1}, Lmrk;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v1, Lgky;

    const-string v2, "Tipo Conta: "

    invoke-interface {p1}, Lmrk;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-interface {p1}, Lmrk;->n()Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    new-instance v1, Lgky;

    const-string v2, "CPF/CNPJ:"

    invoke-interface {p1}, Lmrk;->k()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    invoke-interface {p1}, Lmrk;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    new-instance v1, Lgky;

    const-string v2, "Tipo Transfer\u00eancia: "

    const-string v3, "Transfer\u00eancia entre contas"

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :goto_0
    new-instance v1, Lgky;

    const-string v2, "Valor: "

    invoke-interface {p1}, Lmrk;->h()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    return-object v0

    .line 113
    :cond_1
    new-instance v1, Lgky;

    const-string v2, "Tipo Transfer\u00eancia: "

    invoke-interface {p1}, Lmrk;->g()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private c()Lgvb;
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lmvu;->a:Lmup;

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 95
    :goto_0
    return-object v0

    .line 71
    :cond_0
    new-instance v1, Lgvb;

    invoke-direct {v1}, Lgvb;-><init>()V

    .line 72
    iget-object v0, p0, Lmvu;->b:Lmsc;

    invoke-interface {v0}, Lmsc;->k()Lmrk;

    move-result-object v2

    .line 74
    invoke-direct {p0, v2}, Lmvu;->a(Lmrk;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 76
    const-string v0, "Transfer\u00eancia"

    invoke-virtual {v1, v0}, Lgvb;->c(Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lgvb;->d(Z)V

    .line 79
    invoke-interface {v2}, Lmrk;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->f(Ljava/lang/String;)V

    .line 80
    invoke-interface {v2}, Lmrk;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->e(Ljava/lang/String;)V

    .line 82
    invoke-interface {v2}, Lmrk;->g()Ljava/lang/String;

    move-result-object v0

    const-string v3, "tef"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Transfer\u00eancia entre contas"

    .line 86
    :goto_1
    invoke-interface {v2}, Lmrk;->l()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lmvu;->a:Lmup;

    check-cast v0, Lmum;

    const v3, 0x7f090b09

    invoke-virtual {v0, v3}, Lmum;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->d(Ljava/lang/String;)V

    .line 93
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Comprovante - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lgvb;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->g(Ljava/lang/String;)V

    move-object v0, v1

    .line 95
    goto :goto_0

    .line 84
    :cond_1
    invoke-interface {v2}, Lmrk;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 88
    :cond_2
    invoke-interface {v2}, Lmrk;->m()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lmvu;->a:Lmup;

    check-cast v0, Lmum;

    const v3, 0x7f090b0a

    invoke-virtual {v0, v3}, Lmum;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 91
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lmvu;->a:Lmup;

    check-cast v0, Lmum;

    const v3, 0x7f090b0b

    invoke-virtual {v0, v3}, Lmum;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->d(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private d()Lgvb;
    .locals 4

    .prologue
    .line 121
    new-instance v0, Lgvb;

    invoke-direct {v0}, Lgvb;-><init>()V

    .line 122
    iget-object v1, p0, Lmvu;->b:Lmsc;

    invoke-interface {v1}, Lmsc;->k()Lmrk;

    move-result-object v1

    .line 124
    const-string v2, "Transfer\u00eancia"

    invoke-virtual {v0, v2}, Lgvb;->c(Ljava/lang/String;)V

    .line 126
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const-string v3, "dd/MM/yyyy HH:mm:ss"

    invoke-static {v2, v3}, Lgpl;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgvb;->f(Ljava/lang/String;)V

    .line 127
    const-string v2, ""

    invoke-virtual {v0, v2}, Lgvb;->e(Ljava/lang/String;)V

    .line 128
    const-string v2, ""

    invoke-virtual {v0, v2}, Lgvb;->i(Ljava/lang/String;)V

    .line 129
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lgvb;->e(Z)V

    .line 130
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lgvb;->d(Z)V

    .line 131
    invoke-interface {v1}, Lmrk;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->b(Ljava/lang/String;)V

    .line 133
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lmvu;->a:Lmup;

    .line 57
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lmvu;->a:Lmup;

    if-nez v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 45
    :cond_0
    const-string v0, "EXTRA_TRANSFER_STEP"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 46
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 47
    iget-object v0, p0, Lmvu;->a:Lmup;

    const v1, 0x7f090b5b

    invoke-interface {v0, v1}, Lmup;->c(I)V

    .line 51
    :cond_1
    :goto_1
    invoke-direct {p0}, Lmvu;->c()Lgvb;

    move-result-object v0

    iput-object v0, p0, Lmvu;->c:Lgvb;

    goto :goto_0

    .line 48
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 49
    iget-object v0, p0, Lmvu;->a:Lmup;

    const v1, 0x7f090b5c

    invoke-interface {v0, v1}, Lmup;->c(I)V

    goto :goto_1
.end method

.method public b()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lmvu;->a:Lmup;

    if-nez v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lmvu;->c:Lgvb;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lmvu;->a:Lmup;

    iget-object v1, p0, Lmvu;->c:Lgvb;

    invoke-interface {v0, v1}, Lmup;->a(Lgvb;)V

    goto :goto_0
.end method
