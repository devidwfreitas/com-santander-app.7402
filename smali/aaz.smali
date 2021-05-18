.class public Laaz;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/high16 v2, 0x42200000    # 40.0f

    .line 18
    new-instance v0, Labk;

    invoke-direct {v0, p1}, Labk;-><init>(Landroid/view/View;)V

    .line 19
    invoke-virtual {v0, p0}, Labk;->a(Ljava/lang/CharSequence;)Labk;

    move-result-object v0

    .line 20
    invoke-virtual {v0, v1}, Labk;->b(Z)Labk;

    move-result-object v0

    .line 21
    invoke-virtual {v0, v1}, Labk;->a(Z)Labk;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    .line 22
    invoke-virtual {v0, v1}, Labk;->a(F)Labk;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v2}, Labk;->e(F)Labk;

    move-result-object v0

    const/16 v1, 0x30

    .line 24
    invoke-virtual {v0, v1}, Labk;->i(I)Labk;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v2}, Labk;->c(F)Labk;

    move-result-object v0

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkx;->inv_red_two:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Labk;->a(I)Labk;

    move-result-object v0

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkx;->inv_white_three:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Labk;->l(I)Labk;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    .line 28
    invoke-virtual {v0, v1}, Labk;->f(F)Labk;

    move-result-object v0

    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 29
    invoke-virtual {v0, v1, v2}, Labk;->a(FF)Labk;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Labk;->b()Labb;

    .line 31
    return-void
.end method
