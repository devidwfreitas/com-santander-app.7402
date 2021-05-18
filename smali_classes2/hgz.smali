.class public Lhgz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhgy;


# instance fields
.field private a:Lhgs;

.field private b:Lhgc;

.field private c:Lhfy;

.field private d:Lhhq;

.field private e:Z


# direct methods
.method public constructor <init>(Lhgs;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lhgz;->a:Lhgs;

    .line 36
    invoke-static {}, Lhgh;->g()Lhgh;

    move-result-object v0

    iput-object v0, p0, Lhgz;->b:Lhgc;

    .line 37
    invoke-static {}, Lhhq;->h()Lhhq;

    move-result-object v0

    iput-object v0, p0, Lhgz;->d:Lhhq;

    .line 38
    return-void
.end method

.method static synthetic a(Lhgz;)Lhgs;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lhgz;->a:Lhgs;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lhgz;->c:Lhfy;

    invoke-interface {v0}, Lhfy;->e()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lhgz;->a:Lhgs;

    invoke-interface {v0}, Lhgs;->d()V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lhgz;->a:Lhgs;

    invoke-interface {v0}, Lhgs;->c()V

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lhgz;->c:Lhfy;

    invoke-interface {v0}, Lhfy;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 102
    iget-object v0, p0, Lhgz;->a:Lhgs;

    iget-object v1, p0, Lhgz;->c:Lhfy;

    invoke-interface {v1}, Lhfy;->N()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lhgs;->a(Ljava/lang/String;)V

    .line 104
    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    new-instance v1, Lhfv;

    iget-object v2, p0, Lhgz;->c:Lhfy;

    invoke-direct {v1, v2}, Lhfv;-><init>(Lhfy;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v1, Lhfw;

    iget-object v2, p0, Lhgz;->c:Lhfy;

    invoke-direct {v1, v2}, Lhfw;-><init>(Lhfy;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v1, Lhfu;

    iget-object v2, p0, Lhgz;->c:Lhfy;

    invoke-direct {v1, v2}, Lhfu;-><init>(Lhfy;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v1, p0, Lhgz;->a:Lhgs;

    invoke-interface {v1, v0}, Lhgs;->a(Ljava/util/List;)V

    .line 112
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lhgz;->b:Lhgc;

    invoke-interface {v0}, Lhgc;->b()Lhfy;

    move-result-object v0

    iput-object v0, p0, Lhgz;->c:Lhfy;

    .line 43
    iget-object v0, p0, Lhgz;->c:Lhfy;

    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lhgz;->a:Lhgs;

    iget-object v1, p0, Lhgz;->c:Lhfy;

    invoke-interface {v0, v1}, Lhgs;->a(Lhfy;)V

    .line 46
    invoke-direct {p0}, Lhgz;->e()V

    .line 47
    invoke-direct {p0}, Lhgz;->f()V

    .line 48
    invoke-direct {p0}, Lhgz;->g()V

    .line 49
    iget-object v0, p0, Lhgz;->d:Lhhq;

    invoke-virtual {v0}, Lhhq;->b()V

    .line 50
    iget-object v0, p0, Lhgz;->a:Lhgs;

    invoke-interface {v0}, Lhgs;->a()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lhgz;->e:Z

    .line 61
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lhgz;->a:Lhgs;

    invoke-interface {v0}, Lhgs;->e()V

    .line 75
    iget-object v0, p0, Lhgz;->b:Lhgc;

    iget-object v1, p0, Lhgz;->c:Lhfy;

    new-instance v2, Lhha;

    invoke-direct {v2, p0}, Lhha;-><init>(Lhgz;)V

    invoke-interface {v0, v1, v2}, Lhgc;->a(Lhfy;Lhge;)V

    .line 89
    iget-object v0, p0, Lhgz;->d:Lhhq;

    invoke-virtual {v0}, Lhhq;->a()V

    .line 90
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lhgz;->e:Z

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lhgz;->a:Lhgs;

    invoke-interface {v0}, Lhgs;->h()V

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lhgz;->a:Lhgs;

    invoke-interface {v0}, Lhgs;->g()V

    goto :goto_0
.end method
