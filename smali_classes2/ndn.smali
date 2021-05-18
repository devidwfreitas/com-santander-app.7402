.class public Lndn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lndm;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lnbz;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgyv;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lnde;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnbz;)V
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lndn;->e:Landroid/os/Handler;

    .line 31
    iput-object p1, p0, Lndn;->a:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lndn;->b:Lnbz;

    .line 34
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lndz;

    invoke-direct {v0}, Lndz;-><init>()V

    invoke-virtual {v0, p1}, Lndz;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lndn;->c:Ljava/util/List;

    .line 42
    :goto_0
    new-instance v0, Lnde;

    iget-object v1, p0, Lndn;->c:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lnde;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lndn;->d:Lnde;

    .line 43
    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lndn;->c:Ljava/util/List;

    .line 38
    iget-object v0, p0, Lndn;->c:Ljava/util/List;

    new-instance v1, Lndz;

    invoke-direct {v1}, Lndz;-><init>()V

    .line 39
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v2

    invoke-virtual {v2}, Lmiq;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lndz;->a(Landroid/content/Context;Ljava/lang/String;)Lgyv;

    move-result-object v1

    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lndn;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lndn;->b(Landroid/view/View;I)V

    return-void
.end method

.method private b(Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 71
    iget-object v0, p0, Lndn;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgyv;

    .line 73
    new-instance v1, Lndz;

    invoke-direct {v1}, Lndz;-><init>()V

    .line 74
    invoke-virtual {v1, v0}, Lndz;->a(Lgyv;)Ljava/lang/String;

    move-result-object v3

    .line 76
    new-instance v1, Lndz;

    invoke-direct {v1}, Lndz;-><init>()V

    .line 77
    invoke-virtual {v1, v0}, Lndz;->b(Lgyv;)J

    move-result-wide v4

    .line 79
    iget-object v0, p0, Lndn;->b:Lnbz;

    move-object v1, p1

    move v2, p2

    invoke-interface/range {v0 .. v5}, Lnbz;->a(Landroid/view/View;ILjava/lang/String;J)V

    .line 81
    iget-object v0, p0, Lndn;->e:Landroid/os/Handler;

    new-instance v1, Lndo;

    invoke-direct {v1, p0, p1, p2}, Lndo;-><init>(Lndn;Landroid/view/View;I)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    return-void
.end method


# virtual methods
.method public a()Lnde;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lndn;->d:Lnde;

    return-object v0
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 52
    const v0, 0x7f100481

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lndn;->b:Lnbz;

    invoke-interface {v0, p1}, Lnbz;->hideTokenContainer(Landroid/view/View;)V

    .line 62
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lndn;->b:Lnbz;

    invoke-interface {v0}, Lnbz;->a()V

    .line 59
    iget-object v0, p0, Lndn;->b:Lnbz;

    invoke-interface {v0, p1}, Lnbz;->showTokenContainer(Landroid/view/View;)V

    .line 61
    invoke-direct {p0, p1, p2}, Lndn;->b(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lndn;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lndn;->b:Lnbz;

    invoke-interface {v0}, Lnbz;->b()V

    .line 68
    :cond_0
    return-void
.end method
