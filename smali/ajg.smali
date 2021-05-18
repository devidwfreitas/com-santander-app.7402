.class public Lajg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Laji;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "consolidated"
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lajh;",
            ">;"
        }
    .end annotation

    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "category"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lajt;)Lajh;
    .locals 4

    iget-object v0, p0, Lajg;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajh;

    invoke-virtual {v0}, Lajh;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lajt;->getCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Laji;
    .locals 1

    iget-object v0, p0, Lajg;->a:Laji;

    return-object v0
.end method

.method public a(Laji;)V
    .locals 0

    iput-object p1, p0, Lajg;->a:Laji;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lajh;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lajg;->b:Ljava/util/List;

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lajh;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lajg;->b:Ljava/util/List;

    return-object v0
.end method

.method public c()I
    .locals 4

    iget-object v0, p0, Lajg;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajh;

    invoke-virtual {v0}, Lajh;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lajt;->RENEGOCIACAO:Lajt;

    invoke-virtual {v3}, Lajt;->getCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lajh;->c()Lajo;

    move-result-object v0

    invoke-virtual {v0}, Lajo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    sget-object v0, Lajt;->CARTAO:Lajt;

    invoke-direct {p0, v0}, Lajg;->a(Lajt;)Lajh;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lajh;->c()Lajo;

    move-result-object v0

    invoke-virtual {v0}, Lajo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public e()I
    .locals 1

    sget-object v0, Lajt;->USO_DE_LIMITE_DE_CONTA:Lajt;

    invoke-direct {p0, v0}, Lajg;->a(Lajt;)Lajh;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lajh;->c()Lajo;

    move-result-object v0

    invoke-virtual {v0}, Lajo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    sget-object v0, Lajt;->EMPRESTIMO:Lajt;

    invoke-direct {p0, v0}, Lajg;->a(Lajt;)Lajh;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lajh;->c()Lajo;

    move-result-object v0

    invoke-virtual {v0}, Lajo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public g()I
    .locals 1

    sget-object v0, Lajt;->FINANCIAMENTO:Lajt;

    invoke-direct {p0, v0}, Lajg;->a(Lajt;)Lajh;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lajh;->c()Lajo;

    move-result-object v0

    invoke-virtual {v0}, Lajo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lajt;->USO_DE_LIMITE_DE_CONTA:Lajt;

    invoke-direct {p0, v0}, Lajg;->a(Lajt;)Lajh;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lajh;->c()Lajo;

    move-result-object v0

    invoke-virtual {v0}, Lajo;->b()Lajp;

    move-result-object v0

    invoke-virtual {v0}, Lajp;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lajt;->CARTAO:Lajt;

    invoke-direct {p0, v0}, Lajg;->a(Lajt;)Lajh;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lajh;->c()Lajo;

    move-result-object v0

    invoke-virtual {v0}, Lajo;->b()Lajp;

    move-result-object v0

    invoke-virtual {v0}, Lajp;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lajt;->EMPRESTIMO:Lajt;

    invoke-direct {p0, v0}, Lajg;->a(Lajt;)Lajh;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lajh;->c()Lajo;

    move-result-object v0

    invoke-virtual {v0}, Lajo;->b()Lajp;

    move-result-object v0

    invoke-virtual {v0}, Lajp;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    sget-object v0, Lajt;->FINANCIAMENTO:Lajt;

    invoke-direct {p0, v0}, Lajg;->a(Lajt;)Lajh;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lajh;->c()Lajo;

    move-result-object v0

    invoke-virtual {v0}, Lajo;->b()Lajp;

    move-result-object v0

    invoke-virtual {v0}, Lajp;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lajt;->RENEGOCIACAO:Lajt;

    invoke-direct {p0, v0}, Lajg;->a(Lajt;)Lajh;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lajh;->c()Lajo;

    move-result-object v0

    invoke-virtual {v0}, Lajo;->b()Lajp;

    move-result-object v0

    invoke-virtual {v0}, Lajp;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    sget-object v0, Lajt;->USO_DE_LIMITE_DE_CONTA:Lajt;

    invoke-direct {p0, v0}, Lajg;->a(Lajt;)Lajh;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lajh;->c()Lajo;

    move-result-object v0

    invoke-virtual {v0}, Lajo;->b()Lajp;

    move-result-object v0

    invoke-virtual {v0}, Lajp;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    sget-object v0, Lajt;->CARTAO:Lajt;

    invoke-direct {p0, v0}, Lajg;->a(Lajt;)Lajh;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lajh;->c()Lajo;

    move-result-object v0

    invoke-virtual {v0}, Lajo;->b()Lajp;

    move-result-object v0

    invoke-virtual {v0}, Lajp;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    sget-object v0, Lajt;->EMPRESTIMO:Lajt;

    invoke-direct {p0, v0}, Lajg;->a(Lajt;)Lajh;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lajh;->c()Lajo;

    move-result-object v0

    invoke-virtual {v0}, Lajo;->b()Lajp;

    move-result-object v0

    invoke-virtual {v0}, Lajp;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    sget-object v0, Lajt;->FINANCIAMENTO:Lajt;

    invoke-direct {p0, v0}, Lajg;->a(Lajt;)Lajh;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lajh;->c()Lajo;

    move-result-object v0

    invoke-virtual {v0}, Lajo;->b()Lajp;

    move-result-object v0

    invoke-virtual {v0}, Lajp;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    sget-object v0, Lajt;->RENEGOCIACAO:Lajt;

    invoke-direct {p0, v0}, Lajg;->a(Lajt;)Lajh;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lajh;->c()Lajo;

    move-result-object v0

    invoke-virtual {v0}, Lajo;->b()Lajp;

    move-result-object v0

    invoke-virtual {v0}, Lajp;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public r()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lajn;",
            ">;"
        }
    .end annotation

    sget-object v0, Lajt;->EMPRESTIMO:Lajt;

    invoke-direct {p0, v0}, Lajg;->a(Lajt;)Lajh;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lajh;->c()Lajo;

    move-result-object v0

    invoke-virtual {v0}, Lajo;->c()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lajn;",
            ">;"
        }
    .end annotation

    sget-object v0, Lajt;->FINANCIAMENTO:Lajt;

    invoke-direct {p0, v0}, Lajg;->a(Lajt;)Lajh;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lajh;->c()Lajo;

    move-result-object v0

    invoke-virtual {v0}, Lajo;->c()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lajn;",
            ">;"
        }
    .end annotation

    sget-object v0, Lajt;->RENEGOCIACAO:Lajt;

    invoke-direct {p0, v0}, Lajg;->a(Lajt;)Lajh;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lajh;->c()Lajo;

    move-result-object v0

    invoke-virtual {v0}, Lajo;->c()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public u()Z
    .locals 2

    sget-object v0, Lajt;->EMPRESTIMO:Lajt;

    invoke-direct {p0, v0}, Lajg;->a(Lajt;)Lajh;

    move-result-object v0

    invoke-virtual {v0}, Lajh;->c()Lajo;

    move-result-object v1

    invoke-virtual {v1}, Lajo;->b()Lajp;

    move-result-object v1

    invoke-virtual {v1}, Lajp;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lajh;->c()Lajo;

    move-result-object v0

    invoke-virtual {v0}, Lajo;->b()Lajp;

    move-result-object v0

    invoke-virtual {v0}, Lajp;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v()Z
    .locals 2

    sget-object v0, Lajt;->FINANCIAMENTO:Lajt;

    invoke-direct {p0, v0}, Lajg;->a(Lajt;)Lajh;

    move-result-object v0

    invoke-virtual {v0}, Lajh;->c()Lajo;

    move-result-object v1

    invoke-virtual {v1}, Lajo;->b()Lajp;

    move-result-object v1

    invoke-virtual {v1}, Lajp;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lajh;->c()Lajo;

    move-result-object v0

    invoke-virtual {v0}, Lajo;->b()Lajp;

    move-result-object v0

    invoke-virtual {v0}, Lajp;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public w()Z
    .locals 2

    sget-object v0, Lajt;->RENEGOCIACAO:Lajt;

    invoke-direct {p0, v0}, Lajg;->a(Lajt;)Lajh;

    move-result-object v0

    invoke-virtual {v0}, Lajh;->c()Lajo;

    move-result-object v1

    invoke-virtual {v1}, Lajo;->b()Lajp;

    move-result-object v1

    invoke-virtual {v1}, Lajp;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lajh;->c()Lajo;

    move-result-object v0

    invoke-virtual {v0}, Lajo;->b()Lajp;

    move-result-object v0

    invoke-virtual {v0}, Lajp;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
