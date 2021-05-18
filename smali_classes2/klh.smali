.class public Lklh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lklo;


# instance fields
.field private a:Lgky;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lklb;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lklb;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lklh;->a:Lgky;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lklh;->b:Ljava/util/ArrayList;

    .line 30
    iput-object p1, p0, Lklh;->c:Lklb;

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lklb;->a(I)V

    .line 32
    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    const-string v0, "COMPROVANTE DE PAGAMENTO CART\u00c3O DE CR\u00c9DITO\n(2\u00aa VIA)"

    invoke-virtual {p0, v0}, Lklh;->b(Ljava/lang/String;)V

    .line 37
    const-string v0, ""

    invoke-virtual {p0, v0}, Lklh;->a(Ljava/lang/String;)V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Comprovante de Pagamento Cart\u00e3o de Cr\u00e9dito (2\u00aa VIA)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lklh;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lklh;->c:Lklb;

    invoke-virtual {v2}, Lklb;->b()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lklh;->c(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lklh;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklh;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lklh;->d(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lklh;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklh;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lklh;->e(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lklh;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklh;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lklh;->f(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lklh;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklh;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->z()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v1, Lgky;

    const-string v2, "Favorecido:"

    iget-object v0, p0, Lklh;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lklh;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->z()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lklh;->a:Lgky;

    .line 45
    iget-object v0, p0, Lklh;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lklh;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    iget-object v0, p0, Lklh;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklh;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    new-instance v1, Lgky;

    const-string v2, "N\u00famero do Cart\u00e3o:"

    iget-object v0, p0, Lklh;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lklh;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lklh;->a:Lgky;

    .line 50
    iget-object v0, p0, Lklh;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lklh;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_1
    iget-object v0, p0, Lklh;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklh;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->H()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 54
    new-instance v1, Lgky;

    const-string v2, "Data do vencimento:"

    iget-object v0, p0, Lklh;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lklh;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->H()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lklh;->a:Lgky;

    .line 55
    iget-object v0, p0, Lklh;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lklh;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_2
    iget-object v0, p0, Lklh;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklh;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 59
    new-instance v1, Lgky;

    const-string v2, "Valor da fatura:"

    iget-object v0, p0, Lklh;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lklh;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lklh;->a:Lgky;

    .line 60
    iget-object v0, p0, Lklh;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lklh;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_3
    iget-object v0, p0, Lklh;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklh;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->s()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 64
    new-instance v1, Lgky;

    const-string v2, "Valo pagamento:"

    iget-object v0, p0, Lklh;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lklh;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lklh;->a:Lgky;

    .line 65
    iget-object v0, p0, Lklh;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lklh;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_4
    iget-object v0, p0, Lklh;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklh;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 69
    new-instance v1, Lgky;

    const-string v2, "Data do pagamento:"

    iget-object v0, p0, Lklh;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lklh;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->o()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lklh;->a:Lgky;

    .line 70
    iget-object v0, p0, Lklh;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lklh;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_5
    iget-object v0, p0, Lklh;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklh;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 74
    new-instance v1, Lgky;

    const-string v2, "C\u00f3digo de barras:"

    iget-object v0, p0, Lklh;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lklh;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->m()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lklh;->a:Lgky;

    .line 75
    iget-object v0, p0, Lklh;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lklh;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_6
    iget-object v0, p0, Lklh;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklh;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->I()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 79
    new-instance v1, Lgky;

    const-string v2, "Cliente/Pagador:"

    iget-object v0, p0, Lklh;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lklh;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->I()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lklh;->a:Lgky;

    .line 80
    iget-object v0, p0, Lklh;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lklh;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_7
    iget-object v0, p0, Lklh;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lklh;->d:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lklh;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lklh;->e:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lklh;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lklh;->f:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lklh;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lklh;->g:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lklh;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lklh;->h:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lklh;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lklh;->i:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lklh;->i:Ljava/lang/String;

    return-object v0
.end method
