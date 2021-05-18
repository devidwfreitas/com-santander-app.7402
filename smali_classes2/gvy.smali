.class public Lgvy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgvx;


# static fields
.field private static final a:Ljava/lang/String; = "ContaCache"


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Liow;)V
    .locals 6

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-virtual {p1}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {v0}, Liph;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p1}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {v0}, Liph;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 39
    invoke-virtual {p1}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {v0}, Liph;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lipc;

    .line 40
    new-instance v3, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-direct {v3}, Lcom/santander/app/contacorrente/domain/Conta;-><init>()V

    .line 41
    invoke-virtual {v0}, Lipc;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/santander/app/contacorrente/domain/Conta;->setAgencia(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Lipc;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/santander/app/contacorrente/domain/Conta;->setCuenta(Ljava/lang/String;)V

    .line 43
    new-instance v4, Lfuy;

    invoke-direct {v4}, Lfuy;-><init>()V

    invoke-virtual {v3, v4}, Lcom/santander/app/contacorrente/domain/Conta;->setExtractoHome(Lfuy;)V

    .line 44
    invoke-virtual {v0}, Lipc;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/santander/app/contacorrente/domain/Conta;->setIndiceAgenciaConta(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v3}, Lcom/santander/app/contacorrente/domain/Conta;->getExtractoHome()Lfuy;

    move-result-object v4

    invoke-virtual {v0}, Lipc;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lfuy;->u(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Lipc;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lgvy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/santander/app/contacorrente/domain/Conta;->setValor(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Lipc;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/santander/app/contacorrente/domain/Conta;->setTipoConta(Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, v3, v0}, Lgvy;->a(Lcom/santander/app/contacorrente/domain/Conta;Lipc;)V

    .line 51
    invoke-virtual {p1}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {v0}, Liph;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/santander/app/contacorrente/domain/Conta;->setSaldoTotalRendaFixa(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Liow;->e()Liph;

    move-result-object v0

    invoke-virtual {v0}, Liph;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/santander/app/contacorrente/domain/Conta;->setSaldoTotalPoupanca(Ljava/lang/String;)V

    .line 53
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0, v1}, Lgvy;->a(Ljava/util/List;)V

    .line 57
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 131
    .line 132
    if-eqz p1, :cond_0

    .line 133
    const-string v0, "\\+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 134
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 139
    :cond_0
    return-object p1
.end method

.method private a(Lcom/santander/app/contacorrente/domain/Conta;Lipc;)V
    .locals 5

    .prologue
    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-virtual {p2}, Lipc;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lipc;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 147
    invoke-virtual {p2}, Lipc;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lipg;

    .line 148
    new-instance v3, Ljdd;

    invoke-direct {v3}, Ljdd;-><init>()V

    .line 149
    invoke-virtual {p1}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljdd;->f(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljdd;->g(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Lipg;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljdd;->a(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Lipg;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljdd;->b(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Lipg;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljdd;->c(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Lipg;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljdd;->d(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Lipg;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljdd;->e(Ljava/lang/String;)V

    .line 156
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_0
    new-instance v0, Ljdd;

    invoke-direct {v0}, Ljdd;-><init>()V

    .line 160
    invoke-virtual {p1}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljdd;->f(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljdd;->g(Ljava/lang/String;)V

    .line 162
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljdd;->d(Ljava/lang/String;)V

    .line 163
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljdd;->e(Ljava/lang/String;)V

    .line 164
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_1
    invoke-virtual {p1, v1}, Lcom/santander/app/contacorrente/domain/Conta;->setFundos(Ljava/util/List;)V

    .line 168
    invoke-virtual {p2}, Lipc;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lipc;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-virtual {p2}, Lipc;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lipf;

    .line 172
    new-instance v3, Ljdc;

    invoke-direct {v3}, Ljdc;-><init>()V

    .line 173
    invoke-virtual {v0}, Lipf;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljdc;->a(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Lipf;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljdc;->b(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Lipf;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljdc;->c(Ljava/lang/String;)V

    .line 176
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 178
    :cond_2
    invoke-virtual {p1, v1}, Lcom/santander/app/contacorrente/domain/Conta;->setFamilias(Ljava/util/List;)V

    .line 180
    :cond_3
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 122
    move v1, v2

    :goto_0
    iget-object v0, p0, Lgvy;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 123
    iget-object v0, p0, Lgvy;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgvy;->b:Ljava/util/List;

    .line 124
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 127
    :goto_1
    return-object v0

    .line 122
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 127
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lgvy;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(Liph;)V
    .locals 6

    .prologue
    .line 103
    invoke-virtual {p1}, Liph;->e()Ljava/util/List;

    move-result-object v3

    .line 104
    if-nez v3, :cond_1

    .line 118
    :cond_0
    return-void

    .line 106
    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lgvy;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 107
    iget-object v0, p0, Lgvy;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    .line 108
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lipc;

    .line 109
    invoke-virtual {v1}, Lipc;->i()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 110
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v4

    invoke-virtual {v4}, Lmiq;->f()Lmir;

    move-result-object v4

    invoke-virtual {v4}, Lmir;->C()Lipi;

    move-result-object v4

    const-string v5, "00000085"

    invoke-interface {v4, v5}, Lipi;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 111
    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getExtractoHome()Lfuy;

    move-result-object v4

    invoke-virtual {v1}, Lipc;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lfuy;->u(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1}, Lipc;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lgvy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/santander/app/contacorrente/domain/Conta;->setValor(Ljava/lang/String;)V

    .line 114
    :cond_2
    invoke-direct {p0, v0, v1}, Lgvy;->a(Lcom/santander/app/contacorrente/domain/Conta;Lipc;)V

    .line 115
    invoke-virtual {p1}, Liph;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/contacorrente/domain/Conta;->setSaldoTotalRendaFixa(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Liph;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/contacorrente/domain/Conta;->setSaldoTotalPoupanca(Ljava/lang/String;)V

    .line 106
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public a(Lipk;)V
    .locals 5

    .prologue
    .line 94
    iget-object v0, p0, Lgvy;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    .line 95
    invoke-virtual {p1}, Lipk;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getIndiceAgenciaConta()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Liox;

    .line 96
    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getExtractoHome()Lfuy;

    move-result-object v3

    invoke-virtual {v1}, Liox;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lfuy;->u(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1}, Liox;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/contacorrente/domain/Conta;->setValor(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    iput-object p1, p0, Lgvy;->b:Ljava/util/List;

    .line 67
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    const-string v2, "2270"

    .line 72
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iget-object v0, p0, Lgvy;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 74
    const/4 v0, 0x0

    .line 75
    iget-object v1, p0, Lgvy;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    .line 76
    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 77
    invoke-virtual {v0, v1}, Lcom/santander/app/contacorrente/domain/Conta;->setIndexConta(I)V

    .line 78
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 81
    goto :goto_0

    .line 83
    :cond_1
    return-object v3
.end method

.method public c()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lgvy;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getSaldoTotalPoupanca()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "0"

    iget-object v0, p0, Lgvy;->b:Ljava/util/List;

    .line 89
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getSaldoTotalPoupanca()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 89
    goto :goto_0
.end method
