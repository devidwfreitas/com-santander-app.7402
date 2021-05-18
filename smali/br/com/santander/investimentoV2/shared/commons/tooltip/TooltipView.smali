.class public Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/view/MenuItem;

.field private d:Landroid/view/MenuItem$OnMenuItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 33
    const v0, 0x10102d8

    invoke-direct {p0, p1, p2, v0}, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-virtual {p0, v4}, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;->setClickable(Z)V

    .line 39
    invoke-virtual {p0, v4}, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;->setLongClickable(Z)V

    .line 41
    invoke-virtual {p0}, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lky;->action_button_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 42
    invoke-virtual {p0}, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lky;->action_button_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 43
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    sub-int/2addr v0, v1

    const/4 v1, -0x2

    const/16 v3, 0x11

    invoke-direct {v2, v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 45
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;->a:Landroid/widget/TextView;

    .line 46
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;->b:Landroid/widget/ImageView;

    .line 48
    iget-object v0, p0, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 49
    iget-object v0, p0, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    .line 51
    iget-object v0, p0, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    iget-object v0, p0, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    return-void
.end method


# virtual methods
.method public a()Landroid/view/MenuItem;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;->c:Landroid/view/MenuItem;

    return-object v0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;->d:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;->d:Landroid/view/MenuItem$OnMenuItemClickListener;

    iget-object v1, p0, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;->c:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    .line 60
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 65
    iget-object v0, p0, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;->c:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;->c:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 67
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 68
    invoke-virtual {p0, v0}, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;->getLocationOnScreen([I)V

    .line 69
    invoke-virtual {p0, v1}, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 70
    invoke-virtual {p0}, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 71
    invoke-virtual {p0}, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;->getWidth()I

    move-result v3

    .line 72
    invoke-virtual {p0}, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;->getHeight()I

    move-result v4

    .line 73
    const/4 v5, 0x1

    aget v5, v0, v5

    div-int/lit8 v6, v4, 0x2

    add-int/2addr v5, v6

    .line 74
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 75
    iget-object v7, p0, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;->c:Landroid/view/MenuItem;

    invoke-interface {v7}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v2, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 76
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge v5, v1, :cond_1

    .line 77
    const v1, 0x800035

    aget v0, v0, v8

    sub-int v0, v6, v0

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    invoke-virtual {v2, v1, v0, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 81
    :goto_0
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 83
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->performLongClick()Z

    move-result v0

    return v0

    .line 79
    :cond_1
    const/16 v0, 0x51

    invoke-virtual {v2, v0, v8, v4}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0
.end method

.method public setMenuItem(Landroid/view/MenuItem;)V
    .locals 2
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 92
    iget-object v0, p0, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;->c:Landroid/view/MenuItem;

    if-eq v0, p1, :cond_0

    .line 93
    iput-object p1, p0, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;->c:Landroid/view/MenuItem;

    .line 95
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;->b:Landroid/widget/ImageView;

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;->a:Landroid/widget/TextView;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setOnMenuItemClick(Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lbr/com/santander/investimentoV2/shared/commons/tooltip/TooltipView;->d:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 108
    return-void
.end method
