.class public Lgbq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgbo;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lgbp;

.field private c:Lmip;

.field private d:Lgdt;

.field private e:Lgaw;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lgbp;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lgbq;->a:Landroid/app/Activity;

    .line 31
    iput-object p2, p0, Lgbq;->b:Lgbp;

    .line 32
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lgbq;->c:Lmip;

    .line 33
    new-instance v0, Lgdt;

    invoke-direct {v0, p1}, Lgdt;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lgbq;->d:Lgdt;

    .line 34
    return-void
.end method

.method static synthetic a(Lgbq;)Lgaw;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lgbq;->e:Lgaw;

    return-object v0
.end method

.method static synthetic a(Lgbq;Lgaw;)Lgaw;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lgbq;->e:Lgaw;

    return-object p1
.end method

.method static synthetic b(Lgbq;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lgbq;->d()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lgbq;->e:Lgaw;

    invoke-virtual {v0}, Lgaw;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 67
    iget-object v0, p0, Lgbq;->e:Lgaw;

    invoke-virtual {v0}, Lgaw;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbb;

    invoke-virtual {v0}, Lgbb;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbq;->e:Lgaw;

    .line 68
    invoke-virtual {v0}, Lgaw;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbb;

    invoke-virtual {v0}, Lgbb;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lgbq;->e:Lgaw;

    invoke-virtual {v0}, Lgaw;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbb;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lgbb;->a(Z)V

    .line 66
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 72
    :cond_1
    return-void
.end method

.method static synthetic c(Lgbq;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lgbq;->c()V

    return-void
.end method

.method static synthetic d(Lgbq;)Lgbp;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lgbq;->b:Lgbp;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 75
    new-instance v0, Lgav;

    invoke-direct {v0}, Lgav;-><init>()V

    .line 76
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgav;->a(Z)V

    .line 77
    iget-object v1, p0, Lgbq;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgav;->a(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lgbq;->e:Lgaw;

    invoke-virtual {v1}, Lgaw;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method private e()Lgau;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lgau;

    invoke-direct {v0}, Lgau;-><init>()V

    .line 83
    iget-object v1, p0, Lgbq;->c:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgau;->setConnUuid(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lgbq;->c:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgau;->setTokenSessao(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lgbq;->c:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgau;->setTokenTransacao(Ljava/lang/String;)V

    .line 87
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lgbq;->d:Lgdt;

    new-instance v1, Lgbr;

    invoke-direct {v1, p0}, Lgbr;-><init>(Lgbq;)V

    .line 62
    invoke-direct {p0}, Lgbq;->e()Lgau;

    move-result-object v2

    .line 38
    invoke-virtual {v0, v1, v2}, Lgdt;->a(Lgkw;Lgau;)V

    .line 63
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method
