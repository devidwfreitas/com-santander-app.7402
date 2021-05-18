.class public Lhsm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhsl;


# instance fields
.field private a:Lhrj;

.field private b:Lhxq;


# direct methods
.method public constructor <init>(Lhrj;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lhsm;->a:Lhrj;

    .line 25
    invoke-static {}, Lhpp;->n()Lhpl;

    move-result-object v0

    invoke-interface {v0}, Lhpl;->h()Lhxq;

    move-result-object v0

    iput-object v0, p0, Lhsm;->b:Lhxq;

    .line 26
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 30
    iget-object v0, p0, Lhsm;->a:Lhrj;

    iget-object v1, p0, Lhsm;->b:Lhxq;

    invoke-interface {v0, v1}, Lhrj;->a(Lhxq;)V

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    iget-object v0, p0, Lhsm;->b:Lhxq;

    invoke-interface {v0}, Lhxq;->getContratosCalculate()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lhsm;->b:Lhxq;

    invoke-interface {v0}, Lhxq;->getContratosCalculate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateContract;

    .line 34
    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateContract;->isBlockedFlag()Z

    move-result v3

    if-nez v3, :cond_0

    .line 35
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lhsm;->a:Lhrj;

    invoke-interface {v0, v1}, Lhrj;->a(Ljava/util/List;)V

    .line 41
    return-void
.end method
