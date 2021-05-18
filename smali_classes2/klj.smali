.class public Lklj;
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

    iput-object v0, p0, Lklj;->a:Lgky;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lklj;->b:Ljava/util/ArrayList;

    .line 30
    iput-object p1, p0, Lklj;->c:Lklb;

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lklb;->a(I)V

    .line 32
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

    .line 37
    const-string v0, "COMPROVANTE DE TRANSFER\u00caNCIA DOC\n(2\u00aa VIA)"

    invoke-virtual {p0, v0}, Lklj;->b(Ljava/lang/String;)V

    .line 38
    const-string v0, "Transa\u00e7\u00e3o exclusiva para Transfer\u00eancia \u2013 DOC Sujeito \u00e0 confirma\u00e7\u00e3o de saldo na data agendada."

    invoke-virtual {p0, v0}, Lklj;->a(Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Comprovante de Transfer\u00eancia DOC (2\u00aa VIA)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lklj;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lklj;->c:Lklb;

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

    invoke-virtual {p0, v0}, Lklj;->c(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lklj;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklj;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lklj;->d(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lklj;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklj;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lklj;->e(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lklj;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklj;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lklj;->f(Ljava/lang/String;)V

    .line 45
    new-instance v0, Lgky;

    const-string v1, "DADOS DO DESTINAT\u00c1RIO:"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lklj;->a:Lgky;

    .line 46
    iget-object v0, p0, Lklj;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lklj;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lklj;->c:Lklb;

    invoke-virtual {v0}, Lklb;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Lgky;

    const-string v1, "TIPO DE DOC:"

    iget-object v2, p0, Lklj;->c:Lklb;

    invoke-virtual {v2}, Lklb;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lklj;->a:Lgky;

    .line 50
    iget-object v0, p0, Lklj;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lklj;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    iget-object v0, p0, Lklj;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklj;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->D()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    new-instance v1, Lgky;

    const-string v2, "Finalidade:"

    iget-object v0, p0, Lklj;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lklj;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->D()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lklj;->a:Lgky;

    .line 55
    iget-object v0, p0, Lklj;->a:Lgky;

    invoke-virtual {v0, v4}, Lgky;->a(Z)V

    .line 56
    iget-object v0, p0, Lklj;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lklj;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_1
    iget-object v0, p0, Lklj;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklj;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->v()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 60
    new-instance v1, Lgky;

    const-string v2, "Banco:"

    iget-object v0, p0, Lklj;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lklj;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->v()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lklj;->a:Lgky;

    .line 61
    iget-object v0, p0, Lklj;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lklj;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_2
    iget-object v0, p0, Lklj;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklj;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 65
    new-instance v1, Lgky;

    const-string v2, "ISPB:"

    iget-object v0, p0, Lklj;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lklj;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lklj;->a:Lgky;

    .line 66
    iget-object v0, p0, Lklj;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lklj;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_3
    iget-object v0, p0, Lklj;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklj;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 70
    new-instance v1, Lgky;

    const-string v2, "Ag\u00eancia:"

    iget-object v0, p0, Lklj;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lklj;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->t()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lklj;->a:Lgky;

    .line 71
    iget-object v0, p0, Lklj;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lklj;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_4
    iget-object v0, p0, Lklj;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklj;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 75
    new-instance v1, Lgky;

    const-string v2, "Conta:"

    iget-object v0, p0, Lklj;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lklj;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->w()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lklj;->a:Lgky;

    .line 76
    iget-object v0, p0, Lklj;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lklj;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_5
    iget-object v0, p0, Lklj;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklj;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->F()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 80
    new-instance v1, Lgky;

    const-string v2, "Tipo de conta:"

    iget-object v0, p0, Lklj;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lklj;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->F()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lklj;->a:Lgky;

    .line 81
    iget-object v0, p0, Lklj;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lklj;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_6
    iget-object v0, p0, Lklj;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklj;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->z()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 85
    new-instance v1, Lgky;

    const-string v2, "Favorecido:"

    iget-object v0, p0, Lklj;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lklj;->c:Lklb;

    invoke-virtual {v3}, Lklb;->b()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->z()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lklj;->a:Lgky;

    .line 86
    iget-object v0, p0, Lklj;->a:Lgky;

    invoke-virtual {v0, v4}, Lgky;->a(Z)V

    .line 87
    iget-object v0, p0, Lklj;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lklj;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_7
    iget-object v0, p0, Lklj;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklj;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->C()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 91
    new-instance v1, Lgky;

    const-string v2, "CPF/CNPJ:"

    iget-object v0, p0, Lklj;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lklj;->c:Lklb;

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

    iput-object v1, p0, Lklj;->a:Lgky;

    .line 92
    iget-object v0, p0, Lklj;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lklj;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_8
    iget-object v0, p0, Lklj;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lklj;->c:Lklb;

    invoke-virtual {v1}, Lklb;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklv;

    invoke-virtual {v0}, Lklv;->s()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 96
    new-instance v1, Lgky;

    const-string v2, "Valor:"

    iget-object v0, p0, Lklj;->c:Lklb;

    invoke-virtual {v0}, Lklb;->d()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lklj;->c:Lklb;

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

    iput-object v1, p0, Lklj;->a:Lgky;

    .line 97
    iget-object v0, p0, Lklj;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lklj;->a:Lgky;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_9
    iget-object v0, p0, Lklj;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lklj;->d:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lklj;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lklj;->e:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lklj;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lklj;->f:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lklj;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lklj;->g:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lklj;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lklj;->h:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lklj;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lklj;->i:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lklj;->i:Ljava/lang/String;

    return-object v0
.end method
