.class public Lfpk;
.super Lfom;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lfpb;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lnez;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Vector",
            "<",
            "Lfpb;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lfom;-><init>()V

    .line 27
    iput-object v0, p0, Lfpk;->a:Ljava/util/Vector;

    .line 28
    iput-object v0, p0, Lfpk;->b:Landroid/content/Context;

    .line 29
    iput-object v0, p0, Lfpk;->c:Lnez;

    .line 33
    iput-object p1, p0, Lfpk;->b:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lfpk;->a:Ljava/util/Vector;

    .line 35
    return-void
.end method

.method static synthetic a(Lfpk;)Lnez;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lfpk;->c:Lnez;

    return-object v0
.end method


# virtual methods
.method public a(Lnez;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lfpk;->c:Lnez;

    .line 45
    return-void
.end method

.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 40
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lfpk;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    .line 56
    iget-object v0, p0, Lfpk;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpb;

    invoke-virtual {v0}, Lfpb;->c()I

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lfpk;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0402a5

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 58
    new-instance v1, Lfpl;

    invoke-direct {v1, p0, p2}, Lfpl;-><init>(Lfpk;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v1, 0x7f1005b8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 72
    iget-object v2, p0, Lfpk;->a:Ljava/util/Vector;

    invoke-virtual {v2, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfpb;

    invoke-virtual {v2}, Lfpb;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :goto_0
    check-cast p1, Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 78
    return-object v0

    .line 74
    :cond_0
    iget-object v0, p0, Lfpk;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0402a4

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 83
    check-cast p2, Landroid/widget/LinearLayout;

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
