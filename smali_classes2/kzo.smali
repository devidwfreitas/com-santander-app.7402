.class public Lkzo;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:I


# instance fields
.field private final c:I

.field private final d:I

.field private final e:Landroid/view/View;

.field private final f:I


# direct methods
.method public constructor <init>(Landroid/view/View;III)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 25
    iput-object p1, p0, Lkzo;->e:Landroid/view/View;

    .line 26
    iput p2, p0, Lkzo;->c:I

    .line 27
    iput p3, p0, Lkzo;->d:I

    .line 28
    iput p4, p0, Lkzo;->f:I

    .line 29
    const-wide/16 v0, 0x190

    invoke-virtual {p0, v0, v1}, Lkzo;->setDuration(J)V

    .line 30
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .prologue
    .line 35
    iget v0, p0, Lkzo;->f:I

    if-nez v0, :cond_0

    .line 36
    iget v0, p0, Lkzo;->c:I

    int-to-float v0, v0

    iget v1, p0, Lkzo;->d:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 40
    :goto_0
    iget-object v1, p0, Lkzo;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 41
    iget-object v0, p0, Lkzo;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 42
    return-void

    .line 38
    :cond_0
    iget v0, p0, Lkzo;->d:I

    int-to-float v0, v0

    iget v1, p0, Lkzo;->c:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 48
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method
