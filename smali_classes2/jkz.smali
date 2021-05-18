.class public Ljkz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljky;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/santander/app/contacorrente/domain/Conta;)Ljde;
    .locals 3

    .prologue
    .line 26
    new-instance v0, Ljde;

    invoke-direct {v0}, Ljde;-><init>()V

    .line 27
    new-instance v1, Lftx;

    invoke-direct {v1}, Lftx;-><init>()V

    invoke-virtual {v0, v1}, Ljde;->a(Lftx;)V

    .line 28
    new-instance v1, Lfst;

    invoke-direct {v1}, Lfst;-><init>()V

    invoke-virtual {v0, v1}, Ljde;->a(Lfst;)V

    .line 29
    const-string v1, "CDB / LCI"

    invoke-virtual {v0, v1}, Ljde;->a(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Ljde;->b()Lftx;

    move-result-object v1

    const-string v2, "BRL"

    invoke-virtual {v1, v2}, Lftx;->b(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Ljde;->b()Lftx;

    move-result-object v1

    invoke-virtual {p1}, Lcom/santander/app/contacorrente/domain/Conta;->getSaldoTotalRendaFixa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lftx;->a(Ljava/lang/String;)V

    .line 32
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljde;->a(I)V

    .line 33
    invoke-virtual {v0}, Ljde;->a()Lfst;

    move-result-object v1

    const-string v2, "00009"

    invoke-virtual {v1, v2}, Lfst;->b(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Ljde;->a()Lfst;

    move-result-object v1

    const-string v2, "00009"

    invoke-virtual {v1, v2}, Lfst;->a(Ljava/lang/String;)V

    .line 36
    return-object v0
.end method

.method private e()Ljde;
    .locals 6

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Long;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Ljkz;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    .line 42
    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getFundos()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getFundos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 43
    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getFundos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdd;

    .line 46
    invoke-virtual {v0}, Ljdd;->e()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 47
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    .line 49
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Ljdd;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    move-object v1, v0

    .line 52
    goto :goto_0

    .line 54
    :cond_2
    new-instance v0, Ljde;

    invoke-direct {v0}, Ljde;-><init>()V

    .line 55
    new-instance v2, Lftx;

    invoke-direct {v2}, Lftx;-><init>()V

    invoke-virtual {v0, v2}, Ljde;->a(Lftx;)V

    .line 56
    new-instance v2, Lfst;

    invoke-direct {v2}, Lfst;-><init>()V

    invoke-virtual {v0, v2}, Ljde;->a(Lfst;)V

    .line 57
    const-string v2, "Fundos"

    invoke-virtual {v0, v2}, Ljde;->a(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljde;->b()Lftx;

    move-result-object v2

    const-string v3, "BRL"

    invoke-virtual {v2, v3}, Lftx;->b(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljde;->b()Lftx;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lftx;->a(Ljava/lang/String;)V

    .line 60
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljde;->a(I)V

    .line 61
    invoke-virtual {v0}, Ljde;->a()Lfst;

    move-result-object v1

    const-string v2, "00009"

    invoke-virtual {v1, v2}, Lfst;->b(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Ljde;->a()Lfst;

    move-result-object v1

    const-string v2, "00009"

    invoke-virtual {v1, v2}, Lfst;->a(Ljava/lang/String;)V

    .line 64
    return-object v0
.end method

.method private f()Ljde;
    .locals 3

    .prologue
    .line 69
    new-instance v0, Ljde;

    invoke-direct {v0}, Ljde;-><init>()V

    .line 70
    new-instance v1, Lftx;

    invoke-direct {v1}, Lftx;-><init>()V

    invoke-virtual {v0, v1}, Ljde;->a(Lftx;)V

    .line 71
    const-string v1, "Previd\u00eancia"

    invoke-virtual {v0, v1}, Ljde;->a(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljde;->b()Lftx;

    move-result-object v1

    const-string v2, "BRL"

    invoke-virtual {v1, v2}, Lftx;->b(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Ljkz;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {v0}, Ljde;->b()Lftx;

    move-result-object v1

    iget-object v2, p0, Ljkz;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lftx;->a(Ljava/lang/String;)V

    .line 75
    new-instance v1, Lfst;

    invoke-direct {v1}, Lfst;-><init>()V

    invoke-virtual {v0, v1}, Ljde;->a(Lfst;)V

    .line 76
    invoke-virtual {v0}, Ljde;->a()Lfst;

    move-result-object v1

    const-string v2, "00009"

    invoke-virtual {v1, v2}, Lfst;->b(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Ljde;->a()Lfst;

    move-result-object v1

    const-string v2, "00009"

    invoke-virtual {v1, v2}, Lfst;->a(Ljava/lang/String;)V

    .line 79
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljde;->a(I)V

    .line 81
    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljde;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    iget-object v0, p0, Ljkz;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Ljkz;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-direct {p0, v0}, Ljkz;->a(Lcom/santander/app/contacorrente/domain/Conta;)Ljde;

    move-result-object v0

    .line 101
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-direct {p0}, Ljkz;->e()Ljde;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    invoke-direct {p0}, Ljkz;->f()Ljde;

    move-result-object v0

    .line 108
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_1
    return-object v1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Ljkz;->b:Ljava/lang/String;

    .line 86
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
    .line 90
    iput-object p1, p0, Ljkz;->a:Ljava/util/List;

    .line 91
    return-void
.end method

.method public b()Ljde;
    .locals 4

    .prologue
    .line 117
    new-instance v1, Ljde;

    invoke-direct {v1}, Ljde;-><init>()V

    .line 118
    new-instance v0, Lftx;

    invoke-direct {v0}, Lftx;-><init>()V

    invoke-virtual {v1, v0}, Ljde;->a(Lftx;)V

    .line 119
    new-instance v0, Lfst;

    invoke-direct {v0}, Lfst;-><init>()V

    invoke-virtual {v1, v0}, Ljde;->a(Lfst;)V

    .line 120
    const-string v0, "Poupan\u00e7a"

    invoke-virtual {v1, v0}, Ljde;->a(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1}, Ljde;->b()Lftx;

    move-result-object v0

    const-string v2, "BRL"

    invoke-virtual {v0, v2}, Lftx;->b(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Ljde;->b()Lftx;

    move-result-object v2

    iget-object v0, p0, Ljkz;->a:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getSaldoTotalPoupanca()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lftx;->a(Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljde;->a(I)V

    .line 124
    invoke-virtual {v1}, Ljde;->a()Lfst;

    move-result-object v0

    const-string v2, "00009"

    invoke-virtual {v0, v2}, Lfst;->b(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v1}, Ljde;->a()Lfst;

    move-result-object v0

    const-string v2, "00009"

    invoke-virtual {v0, v2}, Lfst;->a(Ljava/lang/String;)V

    .line 127
    return-object v1
.end method

.method public c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljdd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    iget-object v0, p0, Ljkz;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    .line 134
    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getFundos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 137
    :cond_0
    return-object v1
.end method

.method public d()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljdc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    iget-object v0, p0, Ljkz;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    .line 144
    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getFamilias()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getFamilias()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 148
    :cond_1
    return-object v1
.end method
