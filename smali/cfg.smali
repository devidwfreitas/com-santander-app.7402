.class public Lcfg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/PieRadarChartBase;)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcfg;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcfg;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->postInvalidate()V

    .line 497
    return-void
.end method
