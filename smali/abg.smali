.class Labg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Labb;


# direct methods
.method constructor <init>(Labb;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Labg;->a:Labb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 312
    iget-object v1, p0, Labg;->a:Labb;

    invoke-static {v1}, Labb;->g(Labb;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Labg;->a:Labb;

    invoke-static {v1}, Labb;->h(Labb;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 313
    :cond_1
    iget-object v1, p0, Labg;->a:Labb;

    invoke-virtual {v1}, Labb;->c()V

    .line 316
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
