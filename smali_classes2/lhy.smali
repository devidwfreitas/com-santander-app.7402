.class public Llhy;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/ImageView;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkue;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lgrs;


# direct methods
.method public constructor <init>(Ljava/util/List;Lgrs;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkue;",
            ">;",
            "Lgrs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 36
    iput-object p1, p0, Llhy;->c:Ljava/util/List;

    .line 37
    iput-object p2, p0, Llhy;->d:Lgrs;

    .line 38
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 74
    const v0, 0x7f10038e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Llhy;->a:Landroid/widget/RelativeLayout;

    .line 75
    const v0, 0x7f100576

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llhy;->b:Landroid/widget/ImageView;

    .line 76
    return-void
.end method


# virtual methods
.method public a(I)Lkud;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Llhy;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkue;

    invoke-virtual {v0}, Lkue;->a()Lkud;

    move-result-object v0

    return-object v0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 70
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 71
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Llhy;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 56
    iget-object v0, p0, Llhy;->d:Lgrs;

    invoke-virtual {v0}, Lgrs;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040103

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 57
    invoke-direct {p0, v0}, Llhy;->a(Landroid/view/View;)V

    .line 58
    invoke-virtual {p0, p2}, Llhy;->a(I)Lkud;

    move-result-object v1

    .line 59
    iget-object v2, p0, Llhy;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lkud;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    invoke-virtual {v1}, Lkud;->d()Lktr;

    move-result-object v1

    invoke-virtual {v1}, Lktr;->g()Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    iget-object v1, p0, Llhy;->b:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Llhy;->d:Lgrs;

    const v4, 0x7f0e0078

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 64
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 65
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 51
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
