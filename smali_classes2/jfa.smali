.class public Ljfa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljey;


# instance fields
.field private a:Lmiq;

.field private b:Ljiy;

.field private c:Ljez;


# direct methods
.method public constructor <init>(Ljez;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Ljfa;->c:Ljez;

    .line 39
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Ljfa;->a:Lmiq;

    .line 40
    new-instance v0, Ljiz;

    invoke-direct {v0, p2}, Ljiz;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Ljfa;->b:Ljiy;

    .line 41
    invoke-virtual {p0}, Ljfa;->a()V

    .line 42
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljdl;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljdx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdl;

    .line 108
    invoke-virtual {v0}, Ljdl;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdx;

    .line 109
    invoke-virtual {v0}, Ljdx;->y()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 110
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 114
    return-object v1
.end method

.method static synthetic a(Ljfa;Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljfa;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljek;)Ljek;
    .locals 0

    .prologue
    .line 101
    return-object p1
.end method

.method static synthetic a(Ljfa;)Ljez;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Ljfa;->c:Ljez;

    return-object v0
.end method

.method private b()Ljdn;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljdn;

    invoke-direct {v0}, Ljdn;-><init>()V

    .line 119
    iget-object v1, p0, Ljfa;->a:Lmiq;

    invoke-virtual {v1}, Lmiq;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdn;->setConnUuid(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Ljfa;->a:Lmiq;

    invoke-virtual {v1}, Lmiq;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdn;->setTokenSessao(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Ljfa;->a:Lmiq;

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdn;->setTokenTransacao(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Ljfa;->a:Lmiq;

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdn;->setAgencia(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Ljfa;->a:Lmiq;

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdn;->setConta(Ljava/lang/String;)V

    .line 125
    return-object v0
.end method

.method private b(Lmiv;)Lmiv;
    .locals 1

    .prologue
    .line 90
    const-string v0, "0033"

    invoke-virtual {p1, v0}, Lmiv;->a(Ljava/lang/String;)V

    .line 91
    const-string v0, "35"

    invoke-virtual {p1, v0}, Lmiv;->e(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Ljfa;->a:Lmiq;

    invoke-virtual {v0}, Lmiq;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiv;->setConnUuid(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Ljfa;->a:Lmiq;

    invoke-virtual {v0}, Lmiq;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiv;->setTokenSessao(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Ljfa;->a:Lmiq;

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiv;->setTokenTransacao(Ljava/lang/String;)V

    .line 96
    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    iget-object v1, p0, Ljfa;->a:Lmiq;

    if-eqz v1, :cond_0

    .line 48
    iget-object v0, p0, Ljfa;->a:Lmiq;

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    .line 50
    :cond_0
    iget-object v1, p0, Ljfa;->c:Ljez;

    invoke-interface {v1, v0}, Ljez;->a(Ljava/util/List;)V

    .line 51
    return-void
.end method

.method public a(Ljdx;)V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Ljfa;->b:Ljiy;

    new-instance v1, Ljfb;

    invoke-direct {v1, p0, p1}, Ljfb;-><init>(Ljfa;Ljdx;)V

    .line 66
    invoke-direct {p0}, Ljfa;->b()Ljdn;

    move-result-object v2

    .line 55
    invoke-interface {v0, v1, v2}, Ljiy;->c(Lgkw;Ljdn;)V

    .line 67
    return-void
.end method

.method public a(Lmiv;)V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Ljfa;->b:Ljiy;

    new-instance v1, Ljfc;

    invoke-direct {v1, p0}, Ljfc;-><init>(Ljfa;)V

    .line 86
    invoke-direct {p0, p1}, Ljfa;->b(Lmiv;)Lmiv;

    move-result-object v2

    .line 71
    invoke-interface {v0, v1, v2}, Ljiy;->a(Lgkw;Lmiv;)V

    .line 87
    return-void
.end method
