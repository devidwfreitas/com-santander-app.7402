.class final Landroid/support/v7/widget/GridLayout$8;
.super Landroid/support/v7/widget/GridLayout$Alignment;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2893
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignmentValue(Landroid/view/View;II)I
    .locals 1

    .prologue
    .line 2901
    const/high16 v0, -0x80000000

    return v0
.end method

.method getDebugString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2911
    const-string v0, "FILL"

    return-object v0
.end method

.method getGravityOffset(Landroid/view/View;I)I
    .locals 1

    .prologue
    .line 2896
    const/4 v0, 0x0

    return v0
.end method

.method public getSizeInCell(Landroid/view/View;II)I
    .locals 0

    .prologue
    .line 2906
    return p3
.end method
