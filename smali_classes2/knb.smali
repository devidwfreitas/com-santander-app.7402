.class public Lknb;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lklx;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lklx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    iput-object p1, p0, Lknb;->a:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lknb;->b:Ljava/util/List;

    .line 36
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lknb;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lknb;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 50
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 58
    if-nez p2, :cond_0

    .line 59
    iget-object v0, p0, Lknb;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lknb;->c:Landroid/view/LayoutInflater;

    .line 60
    iget-object v0, p0, Lknb;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f040389

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 61
    new-instance v1, Lknc;

    invoke-direct {v1, p0}, Lknc;-><init>(Lknb;)V

    .line 63
    const v0, 0x7f10117e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lknc;->a(Lknc;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 64
    const v0, 0x7f101180

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lknc;->b(Lknc;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 65
    const v0, 0x7f10117f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lknc;->c(Lknc;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 66
    const v0, 0x7f101181

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lknc;->a(Lknc;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 68
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 75
    :goto_0
    iget-object v0, p0, Lknb;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklx;

    .line 77
    invoke-virtual {v0}, Lklx;->a()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lklx;->a()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    invoke-static {v1}, Lknc;->a(Lknc;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 79
    const/4 v3, -0x1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 80
    const/4 v3, -0x2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 82
    invoke-static {v1}, Lknc;->b(Lknc;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    invoke-static {v1}, Lknc;->b(Lknc;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    invoke-static {v1}, Lknc;->c(Lknc;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    invoke-static {v1}, Lknc;->a(Lknc;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    invoke-static {v1}, Lknc;->a(Lknc;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 88
    invoke-static {v1}, Lknc;->a(Lknc;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lklx;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-static {v1}, Lknc;->d(Lknc;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    :goto_1
    return-object p2

    .line 72
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lknc;

    move-object v1, v0

    goto :goto_0

    .line 93
    :cond_1
    invoke-static {v1}, Lknc;->b(Lknc;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    invoke-static {v1}, Lknc;->c(Lknc;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    invoke-static {v1}, Lknc;->a(Lknc;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    invoke-static {v1}, Lknc;->d(Lknc;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    invoke-static {v1}, Lknc;->a(Lknc;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    invoke-static {v1}, Lknc;->a(Lknc;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lklx;->f()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u02c6\\s+"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-static {v1}, Lknc;->b(Lknc;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lklx;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-static {v1}, Lknc;->c(Lknc;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lklx;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
