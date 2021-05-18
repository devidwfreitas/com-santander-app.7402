.class public Lciy;
.super Lciz;
.source "SourceFile"


# static fields
.field private static a:Lclc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lclc",
            "<",
            "Lciy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 18
    const/4 v6, 0x2

    new-instance v0, Lciy;

    move v3, v2

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lciy;-><init>(Lclh;FFLcle;Landroid/view/View;)V

    invoke-static {v6, v0}, Lclc;->a(ILcld;)Lclc;

    move-result-object v0

    sput-object v0, Lciy;->a:Lclc;

    .line 19
    sget-object v0, Lciy;->a:Lclc;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lclc;->a(F)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lclh;FFLcle;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p5}, Lciz;-><init>(Lclh;FFLcle;Landroid/view/View;)V

    .line 38
    return-void
.end method

.method public static a(Lclh;FFLcle;Landroid/view/View;)Lciy;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lciy;->a:Lclc;

    invoke-virtual {v0}, Lclc;->c()Lcld;

    move-result-object v0

    check-cast v0, Lciy;

    .line 24
    iput-object p0, v0, Lciy;->m:Lclh;

    .line 25
    iput p1, v0, Lciy;->n:F

    .line 26
    iput p2, v0, Lciy;->o:F

    .line 27
    iput-object p3, v0, Lciy;->p:Lcle;

    .line 28
    iput-object p4, v0, Lciy;->q:Landroid/view/View;

    .line 29
    return-object v0
.end method

.method public static a(Lciy;)V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lciy;->a:Lclc;

    invoke-virtual {v0, p0}, Lclc;->a(Lcld;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected b()Lcld;
    .locals 6

    .prologue
    .line 54
    new-instance v0, Lciy;

    iget-object v1, p0, Lciy;->m:Lclh;

    iget v2, p0, Lciy;->n:F

    iget v3, p0, Lciy;->o:F

    iget-object v4, p0, Lciy;->p:Lcle;

    iget-object v5, p0, Lciy;->q:Landroid/view/View;

    invoke-direct/range {v0 .. v5}, Lciy;-><init>(Lclh;FFLcle;Landroid/view/View;)V

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lciy;->l:[F

    const/4 v1, 0x0

    iget v2, p0, Lciy;->n:F

    aput v2, v0, v1

    .line 44
    iget-object v0, p0, Lciy;->l:[F

    const/4 v1, 0x1

    iget v2, p0, Lciy;->o:F

    aput v2, v0, v1

    .line 46
    iget-object v0, p0, Lciy;->p:Lcle;

    iget-object v1, p0, Lciy;->l:[F

    invoke-virtual {v0, v1}, Lcle;->a([F)V

    .line 47
    iget-object v0, p0, Lciy;->m:Lclh;

    iget-object v1, p0, Lciy;->l:[F

    iget-object v2, p0, Lciy;->q:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lclh;->a([FLandroid/view/View;)V

    .line 49
    invoke-static {p0}, Lciy;->a(Lciy;)V

    .line 50
    return-void
.end method
