.class public Lgdr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgbt;
.implements Lgdq;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lgct;

.field private c:Lgbs;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgbd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgct;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    .line 30
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lgdr;->a:Landroid/app/Activity;

    .line 31
    iput-object p1, p0, Lgdr;->b:Lgct;

    .line 32
    new-instance v0, Lgbu;

    iget-object v1, p0, Lgdr;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lgbu;-><init>(Landroid/app/Activity;Lgbt;)V

    iput-object v0, p0, Lgdr;->c:Lgbs;

    .line 33
    invoke-virtual {p0}, Lgdr;->b()V

    .line 34
    return-void
.end method

.method private a(Lgax;)Z
    .locals 7

    .prologue
    const v6, 0x7f100be0

    const v5, 0x7f100bde

    const v3, 0x7f100bdc

    const v4, 0x7f0901d0

    const/4 v0, 0x0

    .line 64
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lgax;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    :cond_0
    iget-object v1, p0, Lgdr;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgdr;->a:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lmzv;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 106
    :goto_0
    return v0

    .line 69
    :cond_1
    const-string v1, ""

    iget-object v2, p0, Lgdr;->a:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lmzv;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 71
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lgax;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    :cond_2
    iget-object v1, p0, Lgdr;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgdr;->a:Landroid/app/Activity;

    invoke-virtual {v2, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lmzv;->a(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 76
    :cond_3
    const-string v1, ""

    iget-object v2, p0, Lgdr;->a:Landroid/app/Activity;

    invoke-virtual {v2, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lmzv;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 78
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lgax;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 79
    :cond_4
    iget-object v1, p0, Lgdr;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgdr;->a:Landroid/app/Activity;

    invoke-virtual {v2, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lmzv;->a(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 83
    :cond_5
    const-string v1, ""

    iget-object v2, p0, Lgdr;->a:Landroid/app/Activity;

    invoke-virtual {v2, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lmzv;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 85
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lgax;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 86
    :cond_6
    iget-object v1, p0, Lgdr;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgdr;->a:Landroid/app/Activity;

    const v3, 0x7f100be2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lmzv;->a(Ljava/lang/String;Landroid/view/View;)V

    goto/16 :goto_0

    .line 90
    :cond_7
    const-string v1, ""

    iget-object v2, p0, Lgdr;->a:Landroid/app/Activity;

    const v3, 0x7f100be2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lmzv;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 92
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lgax;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 93
    :cond_8
    iget-object v1, p0, Lgdr;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgdr;->a:Landroid/app/Activity;

    const v3, 0x7f100be4

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lmzv;->a(Ljava/lang/String;Landroid/view/View;)V

    goto/16 :goto_0

    .line 97
    :cond_9
    const-string v1, ""

    iget-object v2, p0, Lgdr;->a:Landroid/app/Activity;

    const v3, 0x7f100be4

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lmzv;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 99
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lgax;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 100
    :cond_a
    iget-object v1, p0, Lgdr;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgdr;->a:Landroid/app/Activity;

    const v3, 0x7f100be7

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lmzv;->a(Ljava/lang/String;Landroid/view/View;)V

    goto/16 :goto_0

    .line 104
    :cond_b
    const-string v0, ""

    iget-object v1, p0, Lgdr;->a:Landroid/app/Activity;

    const v2, 0x7f100be7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lmzv;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 106
    const/4 v0, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public a(Lgax;Lgaq;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lgdr;->a(Lgax;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p1}, Lgax;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lgaq;->v(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lgax;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lgaq;->i(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lgax;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lgaq;->c(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lgax;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lgaq;->n(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lgax;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lgaq;->j(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lgax;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lgaq;->g(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lgax;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lgaq;->r(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Lgax;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lgaq;->o(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lgax;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lgaq;->x(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lgdr;->b:Lgct;

    invoke-interface {v0, p2}, Lgct;->a(Lgaq;)V

    .line 61
    :cond_0
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lgbd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    iput-object p1, p0, Lgdr;->d:Ljava/util/ArrayList;

    .line 113
    iget-object v0, p0, Lgdr;->b:Lgct;

    invoke-interface {v0, p1}, Lgct;->a(Ljava/util/ArrayList;)V

    .line 114
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lgdr;->c:Lgbs;

    invoke-interface {v0}, Lgbs;->a()V

    .line 39
    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lgbd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lgdr;->b:Lgct;

    invoke-interface {v0, p1}, Lgct;->b(Ljava/util/ArrayList;)V

    .line 124
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lgdr;->c:Lgbs;

    invoke-interface {v0}, Lgbs;->b()V

    .line 44
    return-void
.end method
