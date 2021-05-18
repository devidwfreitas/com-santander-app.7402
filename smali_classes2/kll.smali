.class public Lkll;
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

    iput-object v0, p0, Lkll;->a:Lgky;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkll;->b:Ljava/util/ArrayList;

    .line 30
    iput-object p1, p0, Lkll;->c:Lklb;

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
    .line 37
    iget-object v0, p0, Lkll;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lkll;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkll;->d(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lkll;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lkll;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkll;->e(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lkll;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lkll;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkll;->f(Ljava/lang/String;)V

    .line 41
    const-string v0, "COMPROVANTE DE PAGAMENTO TELEFONE PR\u00c9-PAGO\n(2\u00aa VIA)"

    invoke-virtual {p0, v0}, Lkll;->b(Ljava/lang/String;)V

    .line 42
    const-string v0, "Pagamento efetuado com base nas informa\u00e7\u00f5es do c\u00f3digo de barras."

    invoke-virtual {p0, v0}, Lkll;->a(Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Comprovante de Pagamento Telefone Pr\u00e9-Pago (2\u00aa VIA)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lkll;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lkll;->c:Lklb;

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

    invoke-virtual {p0, v0}, Lkll;->c(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lkll;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lkll;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v1, Lgky;

    const-string v2, "Operadora:"

    iget-object v0, p0, Lkll;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lkll;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->q()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lkll;->a:Lgky;

    .line 48
    iget-object v0, p0, Lkll;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lkll;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    iget-object v0, p0, Lkll;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lkll;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    new-instance v1, Lgky;

    const-string v2, "N\u00famero do Telefone:"

    iget-object v0, p0, Lkll;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lkll;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lkll;->a:Lgky;

    .line 53
    iget-object v0, p0, Lkll;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lkll;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_1
    iget-object v0, p0, Lkll;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lkll;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->s()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 57
    new-instance v1, Lgky;

    const-string v2, "Valor:"

    iget-object v0, p0, Lkll;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lkll;->c:Lklb;

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

    iput-object v1, p0, Lkll;->a:Lgky;

    .line 58
    iget-object v0, p0, Lkll;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lkll;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_2
    iget-object v0, p0, Lkll;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lkll;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 62
    new-instance v1, Lgky;

    const-string v2, "N\u00famero da Transa\u00e7\u00e3o:"

    iget-object v0, p0, Lkll;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lkll;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lkll;->a:Lgky;

    .line 63
    iget-object v0, p0, Lkll;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lkll;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_3
    iget-object v0, p0, Lkll;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lkll;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 67
    new-instance v1, Lgky;

    const-string v2, "Protocolo Autorizado:"

    iget-object v0, p0, Lkll;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lkll;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lkll;->a:Lgky;

    .line 68
    iget-object v0, p0, Lkll;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lkll;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_4
    iget-object v0, p0, Lkll;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lkll;->d:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lkll;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lkll;->e:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lkll;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lkll;->f:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lkll;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lkll;->g:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lkll;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lkll;->h:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lkll;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lkll;->i:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lkll;->i:Ljava/lang/String;

    return-object v0
.end method
