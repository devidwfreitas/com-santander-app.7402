.class public Lkln;
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
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lkln;->a:Lgky;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkln;->b:Ljava/util/ArrayList;

    .line 31
    iput-object p1, p0, Lkln;->c:Lklb;

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lklb;->a(I)V

    .line 33
    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 5
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
    const/4 v4, 0x1

    .line 38
    const-string v0, "COMPROVANTE DE TRANSFER\u00caNCIA\n(2\u00aa VIA)"

    invoke-virtual {p0, v0}, Lkln;->b(Ljava/lang/String;)V

    .line 39
    const-string v0, "Transa\u00e7\u00e3o exclusiva para Transfer\u00eancia de Valores entre contas Santander."

    invoke-virtual {p0, v0}, Lkln;->a(Ljava/lang/String;)V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Comprovante de Transfer\u00eancia (2\u00aa VIA)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lkln;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lkln;->c:Lklb;

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

    invoke-virtual {p0, v0}, Lkln;->c(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lkln;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lkln;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkln;->d(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lkln;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lkln;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkln;->e(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lkln;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lkln;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkln;->f(Ljava/lang/String;)V

    .line 46
    new-instance v0, Lgky;

    const-string v1, "CONTA CORRENTE DE ORIGEM:"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lkln;->a:Lgky;

    .line 47
    iget-object v0, p0, Lkln;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lkln;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lkln;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lkln;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->u()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v1, Lgky;

    const-string v2, "Ag\u00eancia:"

    iget-object v0, p0, Lkln;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lkln;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->u()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lkln;->a:Lgky;

    .line 51
    iget-object v0, p0, Lkln;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lkln;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    iget-object v0, p0, Lkln;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lkln;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->x()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    new-instance v1, Lgky;

    const-string v2, "Conta:"

    iget-object v0, p0, Lkln;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lkln;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaq;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lkln;->a:Lgky;

    .line 56
    iget-object v0, p0, Lkln;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lkln;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_1
    new-instance v0, Lgky;

    const-string v1, "CONTA CORRENTE DE DESTINO:"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lkln;->a:Lgky;

    .line 66
    iget-object v0, p0, Lkln;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lkln;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lkln;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lkln;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 69
    new-instance v1, Lgky;

    const-string v2, "Ag\u00eancia:"

    iget-object v0, p0, Lkln;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lkln;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->t()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lkln;->a:Lgky;

    .line 70
    iget-object v0, p0, Lkln;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lkln;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_2
    iget-object v0, p0, Lkln;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lkln;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 74
    new-instance v1, Lgky;

    const-string v2, "Conta:"

    iget-object v0, p0, Lkln;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lkln;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaq;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lkln;->a:Lgky;

    .line 75
    iget-object v0, p0, Lkln;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lkln;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_3
    iget-object v0, p0, Lkln;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lkln;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->z()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 79
    new-instance v1, Lgky;

    const-string v2, "Favorecido:"

    iget-object v0, p0, Lkln;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lkln;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->z()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lkln;->a:Lgky;

    .line 80
    iget-object v0, p0, Lkln;->a:Lgky;

    invoke-virtual {v0, v4}, Lgky;->a(Z)V

    .line 81
    iget-object v0, p0, Lkln;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lkln;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_4
    iget-object v0, p0, Lkln;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lkln;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->s()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 85
    new-instance v1, Lgky;

    const-string v2, "Valor:"

    iget-object v0, p0, Lkln;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lkln;->c:Lklb;

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

    iput-object v1, p0, Lkln;->a:Lgky;

    .line 86
    iget-object v0, p0, Lkln;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lkln;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_5
    iget-object v0, p0, Lkln;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lkln;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->A()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 90
    new-instance v1, Lgky;

    const-string v2, "Tipo de Transfer\u00eancia:"

    iget-object v0, p0, Lkln;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lkln;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->A()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lkln;->a:Lgky;

    .line 91
    iget-object v0, p0, Lkln;->a:Lgky;

    invoke-virtual {v0, v4}, Lgky;->a(Z)V

    .line 92
    iget-object v0, p0, Lkln;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lkln;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_6
    iget-object v0, p0, Lkln;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lkln;->d:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lkln;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lkln;->e:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lkln;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lkln;->f:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lkln;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lkln;->g:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lkln;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lkln;->h:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lkln;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lkln;->i:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lkln;->i:Ljava/lang/String;

    return-object v0
.end method
