.class public Lmqb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmng;
.implements Lmqa;


# instance fields
.field private a:Lmpe;

.field private b:Landroid/app/Activity;

.field private c:Lmnf;


# direct methods
.method public constructor <init>(Lmpe;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lmqb;->a:Lmpe;

    .line 34
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lmqb;->b:Landroid/app/Activity;

    .line 36
    new-instance v0, Lmnh;

    iget-object v1, p0, Lmqb;->b:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lmnh;-><init>(Landroid/app/Activity;Lmng;)V

    iput-object v0, p0, Lmqb;->c:Lmnf;

    .line 37
    iget-object v0, p0, Lmqb;->c:Lmnf;

    invoke-interface {v0}, Lmnf;->a()V

    .line 38
    return-void
.end method


# virtual methods
.method public a(Lcom/santander/app/contacorrente/domain/Conta;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lmqb;->c:Lmnf;

    invoke-interface {v0, p1}, Lmnf;->a(Lcom/santander/app/contacorrente/domain/Conta;)V

    .line 43
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
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
    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-static {p1}, Lgmy;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 59
    iget-object v1, p0, Lmqb;->a:Lmpe;

    invoke-interface {v1, v0}, Lmpe;->a(Ljava/util/List;)V

    .line 60
    return-void
.end method

.method public a(Lmlk;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lmqb;->a:Lmpe;

    invoke-interface {v0, p1}, Lmpe;->a(Lmlk;)V

    .line 48
    return-void
.end method

.method public a(Lmlo;)V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p1}, Lmlo;->b()Lmld;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lmlo;->c()Lmkw;

    move-result-object v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lmqb;->a:Lmpe;

    const-string v1, "Por favor, informe um favorecido."

    invoke-interface {v0, v1}, Lmpe;->a(Ljava/lang/String;)V

    .line 75
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p1}, Lmlo;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lmlo;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_2

    .line 71
    :cond_1
    iget-object v0, p0, Lmqb;->a:Lmpe;

    const-string v1, "Por favor, informe um valor para transf\u00earencia"

    invoke-interface {v0, v1}, Lmpe;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_2
    iget-object v0, p0, Lmqb;->a:Lmpe;

    invoke-interface {v0}, Lmpe;->b()V

    goto :goto_0
.end method

.method public b(Lmlk;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lmqb;->a:Lmpe;

    invoke-interface {v0, p1}, Lmpe;->a(Lmlk;)V

    .line 53
    return-void
.end method
