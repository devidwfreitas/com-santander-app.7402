.class final Landroid/support/v7/widget/GridLayout$6;
.super Landroid/support/v7/widget/GridLayout$Alignment;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2808
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignmentValue(Landroid/view/View;II)I
    .locals 1

    .prologue
    .line 2816
    shr-int/lit8 v0, p2, 0x1

    return v0
.end method

.method getDebugString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2821
    const-string v0, "CENTER"

    return-object v0
.end method

.method getGravityOffset(Landroid/view/View;I)I
    .locals 1

    .prologue
    .line 2811
    shr-int/lit8 v0, p2, 0x1

    return v0
.end method
