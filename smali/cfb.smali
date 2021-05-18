.class public Lcfb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:Lcom/github/mikephil/charting/charts/BarLineChartBase;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/BarLineChartBase;FFFF)V
    .locals 0

    .prologue
    .line 968
    iput-object p1, p0, Lcfb;->e:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iput p2, p0, Lcfb;->a:F

    iput p3, p0, Lcfb;->b:F

    iput p4, p0, Lcfb;->c:F

    iput p5, p0, Lcfb;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 973
    iget-object v0, p0, Lcfb;->e:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    iget v1, p0, Lcfb;->a:F

    iget v2, p0, Lcfb;->b:F

    iget v3, p0, Lcfb;->c:F

    iget v4, p0, Lcfb;->d:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lclh;->a(FFFF)V

    .line 974
    iget-object v0, p0, Lcfb;->e:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->i()V

    .line 975
    iget-object v0, p0, Lcfb;->e:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->h()V

    .line 976
    return-void
.end method
