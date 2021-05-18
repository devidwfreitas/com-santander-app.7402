.class Laof;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Laoa;


# direct methods
.method constructor <init>(Laoa;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Laof;->a:Laoa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 424
    iget-object v1, p0, Laof;->a:Laoa;

    invoke-static {v1}, Laoa;->i(Laoa;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Laof;->a:Laoa;

    .line 425
    invoke-static {v1}, Laoa;->j(Laoa;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 426
    :cond_1
    iget-object v1, p0, Laof;->a:Laoa;

    invoke-virtual {v1}, Laoa;->c()V

    .line 429
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
