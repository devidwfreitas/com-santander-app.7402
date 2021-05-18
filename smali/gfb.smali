.class public Lgfb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "total"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "description"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "value"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "percentOfApr"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Leks;
        a = "percentOfTotals"
    .end annotation
.end field

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v0, "R$ 0,00"

    iput-object v0, p0, Lgfb;->f:Ljava/lang/String;

    .line 76
    const-string v0, "R$ "

    iput-object v0, p0, Lgfb;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lger;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgfb;",
            ">;)",
            "Lger;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v1, Lger;

    invoke-direct {v1}, Lger;-><init>()V

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 96
    if-eqz p1, :cond_0

    .line 97
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgfb;

    .line 98
    new-instance v4, Lgev;

    invoke-direct {v4}, Lgev;-><init>()V

    .line 99
    invoke-virtual {v0}, Lgfb;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgev;->a(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Lgfb;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lgev;->b(Ljava/lang/String;)V

    .line 101
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_0
    iput-object v2, v1, Lger;->a:Ljava/util/List;

    .line 105
    return-object v1
.end method

.method public a(Ljava/util/List;Ljava/util/List;)Lgev;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgfb;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lgfb;",
            ">;)",
            "Lgev;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v1, Lgev;

    invoke-direct {v1}, Lgev;-><init>()V

    .line 80
    sget-object v0, Lgfg;->CONTAS_PAGAR_RECEBER:Lgfg;

    invoke-virtual {v1, v0}, Lgev;->a(Lgfg;)V

    .line 81
    sget-object v0, Lgfg;->CONTAS_PAGAR_RECEBER:Lgfg;

    invoke-virtual {v0}, Lgfg;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgev;->a(Ljava/lang/String;)V

    .line 82
    const-string v0, "R$ 0,00"

    invoke-virtual {v1, v0}, Lgev;->b(Ljava/lang/String;)V

    .line 83
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "R$ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgfb;

    invoke-virtual {v0}, Lgfb;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgev;->b(Ljava/lang/String;)V

    .line 85
    if-eqz p2, :cond_0

    .line 86
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lgev;->c(Z)V

    .line 89
    :cond_0
    return-object v1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lgfb;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lgfb;->b:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lgfb;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lgfb;->c:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lgfb;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lgfb;->d:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lgfb;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lgfb;->e:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lgfb;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lgfb;->a:Ljava/lang/String;

    .line 71
    return-void
.end method
