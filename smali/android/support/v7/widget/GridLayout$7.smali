.class final Landroid/support/v7/widget/GridLayout$7;
.super Landroid/support/v7/widget/GridLayout$Alignment;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2832
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignmentValue(Landroid/view/View;II)I
    .locals 2

    .prologue
    .line 2840
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 2841
    const/4 v0, 0x0

    .line 2844
    :cond_0
    :goto_0
    return v0

    .line 2843
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v0

    .line 2844
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/high16 v0, -0x80000000

    goto :goto_0
.end method

.method public getBounds()Landroid/support/v7/widget/GridLayout$Bounds;
    .locals 1

    .prologue
    .line 2849
    new-instance v0, Landroid/support/v7/widget/GridLayout$7$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/GridLayout$7$1;-><init>(Landroid/support/v7/widget/GridLayout$7;)V

    return-object v0
.end method

.method getDebugString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2884
    const-string v0, "BASELINE"

    return-object v0
.end method

.method getGravityOffset(Landroid/view/View;I)I
    .locals 1

    .prologue
    .line 2835
    const/4 v0, 0x0

    return v0
.end method
