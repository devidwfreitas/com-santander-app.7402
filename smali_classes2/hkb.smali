.class public Lhkb;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgkx;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lhkd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lgkx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lhkb;->a:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lhkb;->c:Ljava/util/List;

    .line 33
    return-void
.end method


# virtual methods
.method public a(I)Lgkx;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lhkb;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgkx;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lhkb;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lhkb;->a(I)Lgkx;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 47
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const v9, 0x7f100e17

    const v8, 0x7f100e16

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 52
    iget-object v0, p0, Lhkb;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgkx;

    .line 54
    iget-object v1, p0, Lhkb;->a:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lhkb;->b:Landroid/view/LayoutInflater;

    .line 55
    iget-object v1, p0, Lhkb;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f0402a9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 56
    new-instance v1, Lhkd;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lhkd;-><init>(Lhkc;)V

    iput-object v1, p0, Lhkb;->d:Lhkd;

    .line 58
    const v1, 0x7f100e1b

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 59
    const v2, 0x7f100e14

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 61
    invoke-virtual {v0}, Lgkx;->b()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 62
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 63
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 65
    iget-object v4, p0, Lhkb;->d:Lhkd;

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v4, v2}, Lhkd;->a(Lhkd;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 66
    iget-object v2, p0, Lhkb;->d:Lhkd;

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lhkd;->b(Lhkd;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 68
    iget-object v1, p0, Lhkb;->d:Lhkd;

    invoke-static {v1}, Lhkd;->a(Lhkd;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lgkx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {v0}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lhkb;->d:Lhkd;

    invoke-static {v1}, Lhkd;->b(Lhkd;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgky;

    invoke-virtual {v0}, Lgky;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :goto_0
    iget-object v0, p0, Lhkb;->d:Lhkd;

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 98
    return-object v3

    .line 72
    :cond_0
    iget-object v0, p0, Lhkb;->d:Lhkd;

    invoke-static {v0}, Lhkd;->b(Lhkd;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 78
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 80
    const v1, 0x7f100e12

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lgkx;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v4, p0, Lhkb;->d:Lhkd;

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v4, v1}, Lhkd;->a(Lhkd;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 84
    iget-object v4, p0, Lhkb;->d:Lhkd;

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v4, v1}, Lhkd;->b(Lhkd;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 85
    iget-object v4, p0, Lhkb;->d:Lhkd;

    const v1, 0x7f100e19

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v4, v1}, Lhkd;->c(Lhkd;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 86
    iget-object v4, p0, Lhkb;->d:Lhkd;

    const v1, 0x7f100e1a

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v4, v1}, Lhkd;->d(Lhkd;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 88
    iget-object v1, p0, Lhkb;->d:Lhkd;

    invoke-static {v1}, Lhkd;->a(Lhkd;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgky;

    invoke-virtual {v1}, Lgky;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lhkb;->d:Lhkd;

    invoke-static {v1}, Lhkd;->b(Lhkd;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgky;

    invoke-virtual {v1}, Lgky;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p0, Lhkb;->d:Lhkd;

    invoke-static {v1}, Lhkd;->c(Lhkd;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgky;

    invoke-virtual {v1}, Lgky;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v1, p0, Lhkb;->d:Lhkd;

    invoke-static {v1}, Lhkd;->d(Lhkd;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgky;

    invoke-virtual {v0}, Lgky;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
