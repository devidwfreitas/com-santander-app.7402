.class Labh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Labb;


# direct methods
.method constructor <init>(Labb;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Labh;->a:Labb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .prologue
    .line 323
    iget-object v0, p0, Labh;->a:Labb;

    invoke-static {v0}, Labb;->i(Labb;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0, p0}, Labl;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 325
    iget-object v0, p0, Labh;->a:Labb;

    invoke-static {v0}, Labb;->i(Labb;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Labh;->a:Labb;

    invoke-static {v1}, Labb;->j(Labb;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 326
    iget-object v0, p0, Labh;->a:Labb;

    invoke-static {v0}, Labb;->k(Labb;)Landroid/graphics/PointF;

    move-result-object v0

    .line 327
    iget-object v1, p0, Labh;->a:Labb;

    invoke-static {v1}, Labb;->d(Labb;)Landroid/widget/PopupWindow;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 328
    iget-object v1, p0, Labh;->a:Labb;

    invoke-static {v1}, Labb;->d(Labb;)Landroid/widget/PopupWindow;

    move-result-object v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iget-object v3, p0, Labh;->a:Labb;

    invoke-static {v3}, Labb;->d(Labb;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    iget-object v4, p0, Labh;->a:Labb;

    invoke-static {v4}, Labb;->d(Labb;)Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 329
    return-void
.end method
