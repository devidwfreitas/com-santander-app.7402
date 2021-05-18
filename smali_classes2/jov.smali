.class public Ljov;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljow;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljow;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljow;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljow;",
            ">;>;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 37
    iput-object p1, p0, Ljov;->a:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Ljov;->b:Ljava/util/List;

    .line 39
    iput-object p3, p0, Ljov;->c:Ljava/util/HashMap;

    .line 40
    iput-object p4, p0, Ljov;->d:Ljava/lang/Boolean;

    .line 41
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Ljov;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    .prologue
    .line 50
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const v0, 0x3e99999a    # 0.3f

    const/4 v7, 0x1

    .line 57
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 58
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 59
    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 60
    invoke-virtual {v3, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 61
    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 62
    invoke-virtual {v2, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 64
    invoke-virtual {p0, p1, p2}, Ljov;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    .line 65
    invoke-virtual {v0}, Ljow;->d()Ljava/lang/String;

    move-result-object v4

    .line 67
    if-nez p4, :cond_0

    .line 68
    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v5, 0x7f0401b2

    const/4 v6, 0x0

    .line 69
    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 72
    :cond_0
    const v1, 0x7f100854

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 73
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {v0}, Ljow;->e()I

    move-result v0

    if-nez v0, :cond_1

    .line 76
    invoke-virtual {p4, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 77
    invoke-virtual {p4, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 78
    invoke-virtual {p4, v7}, Landroid/view/View;->setClickable(Z)V

    .line 85
    :goto_0
    return-object p4

    .line 80
    :cond_1
    invoke-virtual {p4, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 81
    invoke-virtual {p4, v8}, Landroid/view/View;->setClickable(Z)V

    .line 82
    invoke-virtual {p4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Ljov;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljov;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Ljov;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Ljov;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    .prologue
    .line 109
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const v9, 0x7f100851

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 115
    invoke-virtual {p0, p1}, Ljov;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    .line 117
    invoke-virtual {v0}, Ljow;->d()Ljava/lang/String;

    move-result-object v4

    .line 118
    invoke-virtual {v0}, Ljow;->k()I

    move-result v5

    .line 121
    if-nez p3, :cond_0

    .line 122
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0401b1

    const/4 v3, 0x0

    .line 123
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 126
    :cond_0
    const v1, 0x7f10084f

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 127
    const v2, 0x7f100853

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 128
    const v3, 0x7f100850

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 130
    invoke-virtual {v0}, Ljow;->c()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 131
    invoke-virtual {v0}, Ljow;->c()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 135
    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    invoke-virtual {v0}, Ljow;->e()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 141
    invoke-virtual {p3, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 142
    invoke-virtual {p3, v10}, Landroid/view/View;->setClickable(Z)V

    .line 143
    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {p3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 156
    :goto_1
    invoke-virtual {p0, p1}, Ljov;->getChildrenCount(I)I

    move-result v1

    if-eqz v1, :cond_3

    .line 158
    invoke-virtual {v0, p2}, Ljow;->b(Z)V

    .line 160
    if-eqz p2, :cond_2

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 162
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 177
    :goto_3
    return-object p3

    .line 133
    :cond_1
    invoke-virtual {v0}, Ljow;->b()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 146
    :pswitch_0
    invoke-virtual {p3, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 147
    invoke-virtual {p3, v7}, Landroid/view/View;->setClickable(Z)V

    .line 148
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p3, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 160
    :cond_2
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_2

    .line 166
    :cond_3
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    invoke-virtual {v0}, Ljow;->g()Ljox;

    move-result-object v1

    sget-object v2, Ljox;->MENU_ITEM_PROPOSTAS_ABERTO:Ljox;

    invoke-virtual {v1, v2}, Ljox;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 168
    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 169
    const v1, 0x7f100852

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljow;->j()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 174
    :cond_4
    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 138
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method
