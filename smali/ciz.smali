.class public abstract Lciz;
.super Lcld;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected l:[F

.field protected m:Lclh;

.field protected n:F

.field protected o:F

.field protected p:Lcle;

.field protected q:Landroid/view/View;


# direct methods
.method public constructor <init>(Lclh;FFLcle;Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Lcld;-><init>()V

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lciz;->l:[F

    .line 24
    iput v1, p0, Lciz;->n:F

    .line 25
    iput v1, p0, Lciz;->o:F

    .line 32
    iput-object p1, p0, Lciz;->m:Lclh;

    .line 33
    iput p2, p0, Lciz;->n:F

    .line 34
    iput p3, p0, Lciz;->o:F

    .line 35
    iput-object p4, p0, Lciz;->p:Lcle;

    .line 36
    iput-object p5, p0, Lciz;->q:Landroid/view/View;

    .line 38
    return-void
.end method


# virtual methods
.method public g()F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lciz;->n:F

    return v0
.end method

.method public h()F
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lciz;->o:F

    return v0
.end method
