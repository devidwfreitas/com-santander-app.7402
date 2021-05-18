.class public Layu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Layp;
.implements Layz;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Ljava/lang/String;

.field private final c:Lawu;

.field private final d:Layy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layy",
            "<*",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Layw;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lawu;Lbdy;Lbdl;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Layu;->a:Landroid/graphics/Path;

    .line 26
    invoke-virtual {p3}, Lbdl;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Layu;->b:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Layu;->c:Lawu;

    .line 28
    invoke-virtual {p3}, Lbdl;->b()Lbbi;

    move-result-object v0

    invoke-virtual {v0}, Lbbi;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Layu;->d:Layy;

    .line 29
    iget-object v0, p0, Layu;->d:Layy;

    invoke-virtual {p2, v0}, Lbdy;->a(Layy;)V

    .line 30
    iget-object v0, p0, Layu;->d:Layy;

    invoke-virtual {v0, p0}, Layy;->a(Layz;)V

    .line 31
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Layu;->e:Z

    .line 39
    iget-object v0, p0, Layu;->c:Lawu;

    invoke-virtual {v0}, Lawu;->invalidateSelf()V

    .line 40
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Layu;->c()V

    .line 35
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laye;",
            ">;",
            "Ljava/util/List",
            "<",
            "Laye;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 44
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laye;

    .line 45
    instance-of v1, v0, Layw;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Layw;

    .line 46
    invoke-virtual {v1}, Layw;->c()Lbdw;

    move-result-object v1

    sget-object v3, Lbdw;->Simultaneously:Lbdw;

    if-ne v1, v3, :cond_0

    .line 48
    check-cast v0, Layw;

    iput-object v0, p0, Layu;->f:Layw;

    .line 49
    iget-object v0, p0, Layu;->f:Layw;

    invoke-virtual {v0, p0}, Layw;->a(Layz;)V

    .line 43
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 52
    :cond_1
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Layu;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Landroid/graphics/Path;
    .locals 2

    .prologue
    .line 55
    iget-boolean v0, p0, Layu;->e:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Layu;->a:Landroid/graphics/Path;

    .line 67
    :goto_0
    return-object v0

    .line 59
    :cond_0
    iget-object v0, p0, Layu;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 61
    iget-object v1, p0, Layu;->a:Landroid/graphics/Path;

    iget-object v0, p0, Layu;->d:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 62
    iget-object v0, p0, Layu;->a:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 64
    iget-object v0, p0, Layu;->a:Landroid/graphics/Path;

    iget-object v1, p0, Layu;->f:Layw;

    invoke-static {v0, v1}, Lbey;->a(Landroid/graphics/Path;Layw;)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Layu;->e:Z

    .line 67
    iget-object v0, p0, Layu;->a:Landroid/graphics/Path;

    goto :goto_0
.end method
