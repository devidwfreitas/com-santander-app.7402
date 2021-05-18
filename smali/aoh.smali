.class Laoh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Laoa;


# direct methods
.method constructor <init>(Laoa;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Laoh;->a:Laoa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 448
    iget-object v0, p0, Laoh;->a:Laoa;

    invoke-static {v0}, Laoa;->l(Laoa;)V

    .line 449
    iget-object v0, p0, Laoh;->a:Laoa;

    invoke-static {v0}, Laoa;->m(Laoa;)Landroid/graphics/PointF;

    move-result-object v2

    .line 450
    iget-object v0, p0, Laoh;->a:Laoa;

    invoke-static {v0}, Laoa;->f(Laoa;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 451
    iget-object v0, p0, Laoh;->a:Laoa;

    invoke-static {v0}, Laoa;->f(Laoa;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget v1, v2, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    iget-object v3, p0, Laoh;->a:Laoa;

    .line 453
    invoke-static {v3}, Laoa;->f(Laoa;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    iget-object v4, p0, Laoh;->a:Laoa;

    invoke-static {v4}, Laoa;->f(Laoa;)Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    .line 451
    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 454
    iget-object v0, p0, Laoh;->a:Laoa;

    invoke-static {v0}, Laoa;->n(Laoa;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Laoh;->a:Laoa;

    invoke-static {v0}, Laoa;->a(Laoa;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 459
    :goto_0
    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Laoh;->a:Laoa;

    invoke-static {v0}, Laoa;->a(Laoa;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
