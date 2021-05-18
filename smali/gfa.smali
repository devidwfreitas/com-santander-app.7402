.class public Lgfa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "value"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "percentOfTreasure"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "percentOfTotal"
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "R$ 0,00"

    iput-object v0, p0, Lgfa;->d:Ljava/lang/String;

    .line 53
    const-string v0, "R$ "

    iput-object v0, p0, Lgfa;->e:Ljava/lang/String;

    .line 55
    const-string v0, "TOTAL"

    iput-object v0, p0, Lgfa;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lgev;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgfa;",
            ">;)",
            "Lgev;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v1, Lgev;

    invoke-direct {v1}, Lgev;-><init>()V

    .line 59
    sget-object v0, Lgfg;->CONTA_CORRENTE:Lgfg;

    invoke-virtual {v1, v0}, Lgev;->a(Lgfg;)V

    .line 60
    sget-object v0, Lgfg;->CONTA_CORRENTE:Lgfg;

    invoke-virtual {v0}, Lgfg;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgev;->a(Ljava/lang/String;)V

    .line 61
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "R$ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, 0x0

    .line 62
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgfa;

    invoke-virtual {v0}, Lgfa;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    :goto_0
    invoke-virtual {v1, v0}, Lgev;->b(Ljava/lang/String;)V

    .line 63
    return-object v1

    .line 62
    :cond_0
    const-string v0, "R$ 0,00"

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lgfa;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lgfa;->a:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lgfa;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lgfa;->b:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lgfa;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lgfa;->c:Ljava/lang/String;

    .line 48
    return-void
.end method
