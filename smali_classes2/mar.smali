.class public Lmar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/widgets/ArcChartView;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/widgets/ArcChartView;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lmar;->a:Lcom/santander/app/seguros/ui/widgets/ArcChartView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lmar;->a:Lcom/santander/app/seguros/ui/widgets/ArcChartView;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->invalidate()V

    .line 60
    return-void
.end method
