.class public Llae;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ImageButton;

.field private c:Landroid/support/v4/view/ViewPager;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkps;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lkps;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 37
    iput-object p1, p0, Llae;->a:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Llae;->d:Ljava/util/List;

    .line 39
    return-void
.end method

.method static synthetic a(Llae;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Llae;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const v0, 0x7f020396

    const/4 v1, -0x1

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 141
    :goto_1
    :pswitch_0
    if-eq v0, v1, :cond_1

    .line 142
    iget-object v1, p0, Llae;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 143
    iget-object v1, p0, Llae;->a:Landroid/content/Context;

    const v2, 0x7f0e0079

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 147
    :goto_2
    return-object v0

    .line 86
    :sswitch_0
    const-string v2, "306"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "495"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "305"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "502"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "315"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "524"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "991"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "902"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    :sswitch_8
    const-string v2, "350"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :sswitch_9
    const-string v2, "900"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "901"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "903"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "905"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v2, "906"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v2, "907"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v2, "908"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v2, "912"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v2, "909"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x11

    goto/16 :goto_0

    .line 88
    :pswitch_1
    const v0, 0x7f0203a6

    .line 89
    goto/16 :goto_1

    .line 91
    :pswitch_2
    const v0, 0x7f0203ed

    .line 92
    goto/16 :goto_1

    .line 94
    :pswitch_3
    const v0, 0x7f0203fe

    .line 95
    goto/16 :goto_1

    .line 97
    :pswitch_4
    const v0, 0x7f020376

    .line 98
    goto/16 :goto_1

    .line 100
    :pswitch_5
    const v0, 0x7f0203e6

    .line 101
    goto/16 :goto_1

    .line 103
    :pswitch_6
    const v0, 0x7f020401

    .line 104
    goto/16 :goto_1

    .line 106
    :pswitch_7
    const v0, 0x7f0203e4

    .line 107
    goto/16 :goto_1

    .line 109
    :pswitch_8
    const v0, 0x7f020442

    .line 110
    goto/16 :goto_1

    .line 112
    :pswitch_9
    const v0, 0x7f020498

    .line 113
    goto/16 :goto_1

    .line 116
    :pswitch_a
    const v0, 0x7f0203eb

    .line 117
    goto/16 :goto_1

    .line 122
    :pswitch_b
    const v0, 0x7f0203f7

    .line 123
    goto/16 :goto_1

    .line 134
    :pswitch_c
    const v0, 0x7f02039b

    .line 135
    goto/16 :goto_1

    .line 146
    :cond_1
    iget-object v0, p0, Llae;->a:Landroid/content/Context;

    const v1, 0x7f020339

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_2

    .line 86
    nop

    :sswitch_data_0
    .sparse-switch
        0xc578 -> :sswitch_2
        0xc579 -> :sswitch_0
        0xc597 -> :sswitch_4
        0xc60e -> :sswitch_8
        0xca50 -> :sswitch_1
        0xccf7 -> :sswitch_3
        0xcd37 -> :sswitch_5
        0xdbf9 -> :sswitch_9
        0xdbfa -> :sswitch_a
        0xdbfb -> :sswitch_7
        0xdbfc -> :sswitch_b
        0xdbfe -> :sswitch_c
        0xdbff -> :sswitch_d
        0xdc00 -> :sswitch_e
        0xdc01 -> :sswitch_f
        0xdc02 -> :sswitch_11
        0xdc1a -> :sswitch_10
        0xdd11 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/support/v4/view/ViewPager;)V
    .locals 1

    .prologue
    .line 152
    iput-object p1, p0, Llae;->c:Landroid/support/v4/view/ViewPager;

    .line 154
    new-instance v0, Llaf;

    invoke-direct {v0, p0, p1}, Llaf;-><init>(Llae;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 187
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 54
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Llae;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .prologue
    const v3, 0x7f0e006b

    .line 58
    iget-object v0, p0, Llae;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 59
    const v1, 0x7f040102

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 61
    iget-object v0, p0, Llae;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkps;

    .line 63
    const v1, 0x7f100575

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Llae;->b:Landroid/widget/ImageButton;

    .line 65
    invoke-virtual {v0}, Lkps;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Llae;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    iget-object v1, p0, Llae;->c:Landroid/support/v4/view/ViewPager;

    if-nez v1, :cond_2

    .line 68
    if-nez p2, :cond_0

    .line 69
    iget-object v1, p0, Llae;->a:Landroid/content/Context;

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 74
    :cond_0
    :goto_0
    iget-object v1, p0, Llae;->b:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    :cond_1
    iget-object v0, p0, Llae;->b:Landroid/widget/ImageButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "view"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 78
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    return-object v2

    .line 71
    :cond_2
    iget-object v1, p0, Llae;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 72
    iget-object v1, p0, Llae;->a:Landroid/content/Context;

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 48
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
