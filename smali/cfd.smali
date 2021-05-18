.class public Lcfd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/github/mikephil/charting/charts/Chart;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/Chart;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcfd;->a:Lcom/github/mikephil/charting/charts/Chart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcfd;->a:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->postInvalidate()V

    .line 221
    return-void
.end method
