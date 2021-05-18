.class public Llut;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkvu;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

.field private f:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkvu;",
            ">;",
            "Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 44
    iput-object p1, p0, Llut;->d:Ljava/util/List;

    .line 45
    iput-object p2, p0, Llut;->e:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    .line 46
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 138
    const v0, 0x7f100577

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llut;->b:Landroid/widget/ImageView;

    .line 139
    const v0, 0x7f100578

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llut;->c:Landroid/widget/ImageView;

    .line 140
    return-void
.end method

.method private b(I)Lkvu;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Llut;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvu;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Llut;->f:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Llut;->f:I

    .line 39
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 61
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 62
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Llut;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7

    .prologue
    const v6, 0x7f02036d

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 66
    iget-object v0, p0, Llut;->e:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040104

    invoke-virtual {v0, v1, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 67
    invoke-direct {p0, v0}, Llut;->a(Landroid/view/View;)V

    .line 69
    invoke-direct {p0, p2}, Llut;->b(I)Lkvu;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lkvu;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkvx;->fromString(Ljava/lang/String;)Lkvx;

    move-result-object v2

    .line 73
    if-eqz v2, :cond_0

    .line 75
    sget-object v3, Lluu;->a:[I

    invoke-virtual {v2}, Lkvx;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 97
    iget-object v2, p0, Llut;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lkvu;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 103
    iget-object v2, p0, Llut;->c:Landroid/widget/ImageView;

    const v3, 0x7f020370

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    :goto_1
    invoke-virtual {v1}, Lkvu;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 110
    iget-object v1, p0, Llut;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    :goto_2
    invoke-virtual {p0}, Llut;->a()I

    move-result v1

    if-le p2, v1, :cond_1

    .line 117
    iget-object v1, p0, Llut;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 118
    iget-object v2, p0, Llut;->e:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e008e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 119
    iget-object v2, p0, Llut;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v1, p0, Llut;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    :cond_1
    const/4 v1, 0x4

    if-eq p2, v1, :cond_2

    invoke-virtual {p0}, Llut;->a()I

    move-result v1

    if-le p2, v1, :cond_3

    .line 126
    :cond_2
    iget-object v1, p0, Llut;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 130
    return-object v0

    .line 77
    :pswitch_0
    iget-object v2, p0, Llut;->b:Landroid/widget/ImageView;

    const v3, 0x7f020324

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 81
    :pswitch_1
    iget-object v2, p0, Llut;->b:Landroid/widget/ImageView;

    const v3, 0x7f020477

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 85
    :pswitch_2
    iget-object v2, p0, Llut;->b:Landroid/widget/ImageView;

    const v3, 0x7f020398

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 89
    :pswitch_3
    iget-object v2, p0, Llut;->b:Landroid/widget/ImageView;

    const v3, 0x7f020329

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 93
    :pswitch_4
    iget-object v2, p0, Llut;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 106
    :cond_4
    iget-object v2, p0, Llut;->c:Landroid/widget/ImageView;

    const v3, 0x7f02048a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 112
    :cond_5
    iget-object v1, p0, Llut;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 56
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
