.class public Lgbl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgbj;


# instance fields
.field private a:Lgdk;

.field private b:Lgbk;

.field private c:Lgds;

.field private d:Lmiq;


# direct methods
.method public constructor <init>(Lgdk;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lgbl;->a:Lgdk;

    .line 39
    check-cast p1, Lgbk;

    iput-object p1, p0, Lgbl;->b:Lgbk;

    .line 40
    new-instance v0, Lgdt;

    invoke-direct {v0, p2}, Lgdt;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lgbl;->c:Lgds;

    .line 41
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lgbl;->d:Lmiq;

    .line 43
    invoke-virtual {p0}, Lgbl;->a()V

    .line 44
    return-void
.end method

.method static synthetic a(Lgbl;)Lgbk;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lgbl;->b:Lgbk;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lgbl;->a:Lgdk;

    if-nez v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    iget-object v1, p0, Lgbl;->d:Lmiq;

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->q()Lgvx;

    move-result-object v1

    invoke-interface {v1}, Lgvx;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 52
    iget-object v1, p0, Lgbl;->d:Lmiq;

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->q()Lgvx;

    move-result-object v1

    invoke-interface {v1}, Lgvx;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 54
    :cond_1
    iget-object v1, p0, Lgbl;->a:Lgdk;

    invoke-interface {v1, v0}, Lgdk;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method public a(Lgaz;Lgaz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 99
    new-instance v0, Lgao;

    invoke-direct {v0}, Lgao;-><init>()V

    .line 101
    iget-object v1, p0, Lgbl;->d:Lmiq;

    invoke-virtual {v1}, Lmiq;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgao;->setConnUuid(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lgbl;->d:Lmiq;

    invoke-virtual {v1}, Lmiq;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgao;->setTokenSessao(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lgbl;->d:Lmiq;

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgao;->setTokenTransacao(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Lgaz;->b()Lgba;

    move-result-object v1

    sget-object v2, Lgba;->real:Lgba;

    invoke-virtual {v1, v2}, Lgba;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {p1}, Lgaz;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgao;->e(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Lgaz;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgao;->b(Ljava/lang/String;)V

    .line 114
    :goto_0
    invoke-virtual {v0, p4}, Lgao;->a(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, p5}, Lgao;->c(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, p3}, Lgao;->d(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lgbl;->c:Lgds;

    new-instance v2, Lgbn;

    invoke-direct {v2, p0}, Lgbn;-><init>(Lgbl;)V

    invoke-interface {v1, v2, v0}, Lgds;->a(Lgkw;Lgao;)V

    .line 135
    return-void

    .line 110
    :cond_0
    invoke-virtual {p1}, Lgaz;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgao;->b(Ljava/lang/String;)V

    .line 111
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgao;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lgat;

    invoke-direct {v0}, Lgat;-><init>()V

    .line 62
    iget-object v1, p0, Lgbl;->d:Lmiq;

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgat;->setTokenTransacao(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lgbl;->d:Lmiq;

    invoke-virtual {v1}, Lmiq;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgat;->setTokenSessao(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lgbl;->d:Lmiq;

    invoke-virtual {v1}, Lmiq;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgat;->setConnUuid(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lgbl;->c:Lgds;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lgbl;->c:Lgds;

    new-instance v2, Lgbm;

    invoke-direct {v2, p0}, Lgbm;-><init>(Lgbl;)V

    invoke-interface {v1, v2, v0}, Lgds;->a(Lgkw;Lgat;)V

    .line 92
    :cond_0
    return-void
.end method
