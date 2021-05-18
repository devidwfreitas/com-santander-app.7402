.class public Lmbe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/widgets/CircleChartView;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/widgets/CircleChartView;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lmbe;->a:Lcom/santander/app/seguros/ui/widgets/CircleChartView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lmbe;->a:Lcom/santander/app/seguros/ui/widgets/CircleChartView;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->invalidate()V

    .line 111
    return-void
.end method
