.class public Lfpz;
.super Lfom;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lfss;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lnez;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Lfss;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lfom;-><init>()V

    .line 29
    iput-object v0, p0, Lfpz;->a:Ljava/util/List;

    .line 30
    iput-object v0, p0, Lfpz;->b:Landroid/content/Context;

    .line 31
    iput-object v0, p0, Lfpz;->c:Lnez;

    .line 35
    iput-object p1, p0, Lfpz;->b:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lfpz;->a:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lfpz;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lfpz;->d:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    :cond_0
    return-void
.end method

.method public a(Lnez;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lfpz;->c:Lnez;

    .line 46
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lfpz;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lfpz;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    :cond_0
    return-void
.end method

.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 42
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lfpz;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 113
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 55
    .line 56
    iget-object v0, p0, Lfpz;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040133

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 58
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v1, p0, Lfpz;->b:Landroid/content/Context;

    const-string v2, "PoupancaPreferences"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 64
    const v1, 0x7f100646

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 65
    iget-object v2, p0, Lfpz;->a:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfss;

    invoke-virtual {v2}, Lfss;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v1, 0x7f100649

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lfpz;->d:Landroid/widget/TextView;

    .line 68
    iget-object v2, p0, Lfpz;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lfpz;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfss;

    invoke-virtual {v1}, Lfss;->b()Lftx;

    move-result-object v1

    invoke-virtual {v1}, Lftx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, p0, Lfpz;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0, v4}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 74
    const-string v1, "posicao_poupanca_state"

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 75
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 77
    invoke-virtual {p0}, Lfpz;->a()V

    .line 83
    :goto_0
    return-object v0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lfpz;->b()V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 102
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lfpz;->c:Lnez;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lfpz;->c:Lnez;

    iget-object v1, p0, Lfpz;->a:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Lnez;->a(I)V

    .line 110
    :cond_0
    return-void
.end method
