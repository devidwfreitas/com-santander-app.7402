.class public Lcom/santander/app/seguros/ui/widgets/AssistanceAvailabilityView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/santander/app/seguros/ui/widgets/AssistanceAvailabilityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/santander/app/seguros/ui/widgets/AssistanceAvailabilityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/AssistanceAvailabilityView;->setOrientation(I)V

    .line 36
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/AssistanceAvailabilityView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v3, v0

    .line 40
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/AssistanceAvailabilityView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a011c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v4, v0

    .line 44
    if-nez p1, :cond_0

    .line 45
    const v0, 0x7f0200b4

    .line 50
    :goto_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/AssistanceAvailabilityView;->removeAllViews()V

    move v1, v2

    .line 52
    :goto_1
    if-ge v1, p2, :cond_1

    .line 53
    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/AssistanceAvailabilityView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 55
    const v6, 0x7f02033b

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 57
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 58
    invoke-virtual {v6, v2, v2, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 59
    invoke-virtual {p0, v5, v6}, Lcom/santander/app/seguros/ui/widgets/AssistanceAvailabilityView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 47
    :cond_0
    const v0, 0x7f0200b2

    goto :goto_0

    .line 61
    :cond_1
    return-void
.end method
