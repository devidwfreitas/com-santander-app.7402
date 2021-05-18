.class public Lghi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lghd;
.implements Lghj;


# instance fields
.field private a:Lghh;

.field private b:Landroid/app/Activity;

.field private c:Lghc;


# direct methods
.method public constructor <init>(Lghh;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lghi;->a:Lghh;

    .line 33
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lghi;->b:Landroid/app/Activity;

    .line 34
    new-instance v0, Lggy;

    iget-object v1, p0, Lghi;->b:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lggy;-><init>(Landroid/app/Activity;Lghd;)V

    iput-object v0, p0, Lghi;->c:Lghc;

    .line 36
    invoke-virtual {p0}, Lghi;->a()V

    .line 37
    invoke-virtual {p0}, Lghi;->b()V

    .line 38
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lghi;->c:Lghc;

    invoke-interface {v0}, Lghc;->a()V

    .line 43
    return-void
.end method

.method public a(Lghu;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lghi;->a:Lghh;

    invoke-interface {v0, p1}, Lghh;->a(Lghu;)V

    .line 69
    return-void
.end method

.method public a(Lghu;Lggx;)V
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p2}, Lggx;->b()I

    move-result v0

    sget-object v1, Lggw;->PERDA:Lggw;

    invoke-virtual {v1}, Lggw;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 53
    const-string v0, "Cartoes_Bloqueio_OpcoesMotivo"

    const-string v1, "Perda"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :goto_0
    iget-object v0, p0, Lghi;->c:Lghc;

    invoke-interface {v0, p1, p2}, Lghc;->a(Lghu;Lggx;)V

    .line 59
    return-void

    .line 56
    :cond_0
    const-string v0, "Cartoes_Bloqueio_OpcoesMotivo"

    const-string v1, "Roubo"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lgvb;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lghi;->a:Lghh;

    invoke-interface {v0, p1}, Lghh;->a(Lgvb;)V

    .line 74
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lghi;->a:Lghh;

    invoke-interface {v0, p1}, Lghh;->b(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lghu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lghi;->a:Lghh;

    invoke-interface {v0, p1}, Lghh;->a(Ljava/util/List;)V

    .line 84
    iget-object v1, p0, Lghi;->a:Lghh;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-interface {v1, v0}, Lghh;->a(Lghu;)V

    .line 85
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lghi;->c:Lghc;

    invoke-interface {v0}, Lghc;->b()V

    .line 48
    return-void
.end method

.method public b(Lgvb;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lghi;->a:Lghh;

    invoke-interface {v0, p1}, Lghh;->a(Lgvb;)V

    .line 79
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lggx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lghi;->a:Lghh;

    invoke-interface {v0, p1}, Lghh;->b(Ljava/util/List;)V

    .line 90
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method
