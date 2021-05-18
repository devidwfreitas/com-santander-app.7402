.class public Lklk;
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

    iput-object v0, p0, Lklk;->a:Lgky;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lklk;->b:Ljava/util/ArrayList;

    .line 31
    iput-object p1, p0, Lklk;->c:Lklb;

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
    const-string v0, "COMPROVANTE DE TRANSFER\u00caNCIA TED\n(2\u00aa VIA)"

    invoke-virtual {p0, v0}, Lklk;->b(Ljava/lang/String;)V

    .line 39
    const-string v0, "Transa\u00e7\u00e3o exclusiva para Transfer\u00eancia Eletr\u00f4nica Dispon\u00edvel \u2013 TED."

    invoke-virtual {p0, v0}, Lklk;->a(Ljava/lang/String;)V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Comprovante de Transfer\u00eancia TED (2\u00aa VIA)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lklk;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lklk;->c:Lklb;

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

    invoke-virtual {p0, v0}, Lklk;->c(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lklk;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklk;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lklk;->d(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lklk;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklk;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lklk;->e(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lklk;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklk;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lklk;->f(Ljava/lang/String;)V

    .line 46
    new-instance v0, Lgky;

    const-string v1, "DADOS DO DESTINAT\u00c1RIO:"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lklk;->a:Lgky;

    .line 47
    iget-object v0, p0, Lklk;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lklk;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lklk;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklk;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->G()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v1, Lgky;

    const-string v2, "Titularidade:"

    iget-object v0, p0, Lklk;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lklk;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->G()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lklk;->a:Lgky;

    .line 51
    iget-object v0, p0, Lklk;->a:Lgky;

    invoke-virtual {v0, v4}, Lgky;->a(Z)V

    .line 52
    iget-object v0, p0, Lklk;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lklk;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    iget-object v0, p0, Lklk;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklk;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->D()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    new-instance v1, Lgky;

    const-string v2, "Finalidade:"

    iget-object v0, p0, Lklk;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lklk;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->D()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lklk;->a:Lgky;

    .line 57
    iget-object v0, p0, Lklk;->a:Lgky;

    invoke-virtual {v0, v4}, Lgky;->a(Z)V

    .line 58
    iget-object v0, p0, Lklk;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lklk;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_1
    iget-object v0, p0, Lklk;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklk;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->v()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 62
    new-instance v1, Lgky;

    const-string v2, "Banco:"

    iget-object v0, p0, Lklk;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lklk;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->v()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lklk;->a:Lgky;

    .line 63
    iget-object v0, p0, Lklk;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lklk;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_2
    iget-object v0, p0, Lklk;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklk;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 67
    new-instance v1, Lgky;

    const-string v2, "ISPB:"

    iget-object v0, p0, Lklk;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lklk;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lklk;->a:Lgky;

    .line 68
    iget-object v0, p0, Lklk;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lklk;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_3
    iget-object v0, p0, Lklk;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklk;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 72
    new-instance v1, Lgky;

    const-string v2, "Ag\u00eancia:"

    iget-object v0, p0, Lklk;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lklk;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->t()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lklk;->a:Lgky;

    .line 73
    iget-object v0, p0, Lklk;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lklk;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_4
    iget-object v0, p0, Lklk;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklk;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 77
    new-instance v1, Lgky;

    const-string v2, "Conta:"

    iget-object v0, p0, Lklk;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lklk;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->w()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lklk;->a:Lgky;

    .line 78
    iget-object v0, p0, Lklk;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lklk;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_5
    iget-object v0, p0, Lklk;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklk;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->z()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 82
    new-instance v1, Lgky;

    const-string v2, "Favorecido:"

    iget-object v0, p0, Lklk;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lklk;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->z()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lklk;->a:Lgky;

    .line 83
    iget-object v0, p0, Lklk;->a:Lgky;

    invoke-virtual {v0, v4}, Lgky;->a(Z)V

    .line 84
    iget-object v0, p0, Lklk;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lklk;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_6
    iget-object v0, p0, Lklk;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklk;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->C()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 89
    new-instance v1, Lgky;

    const-string v2, "CPF/CNPJ:"

    iget-object v0, p0, Lklk;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lklk;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lklk;->a:Lgky;

    .line 90
    iget-object v0, p0, Lklk;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lklk;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_7
    iget-object v0, p0, Lklk;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklk;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->s()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 94
    new-instance v1, Lgky;

    const-string v2, "Valor:"

    iget-object v0, p0, Lklk;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lklk;->c:Lklb;

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

    iput-object v1, p0, Lklk;->a:Lgky;

    .line 95
    iget-object v0, p0, Lklk;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lklk;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_8
    iget-object v0, p0, Lklk;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lklk;->d:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lklk;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lklk;->e:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lklk;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lklk;->f:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lklk;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lklk;->g:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lklk;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lklk;->h:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lklk;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lklk;->i:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lklk;->i:Ljava/lang/String;

    return-object v0
.end method
