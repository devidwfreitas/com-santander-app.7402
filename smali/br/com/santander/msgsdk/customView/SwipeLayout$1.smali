.class Lbr/com/santander/msgsdk/customView/SwipeLayout$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field hasDisallowed:Z

.field final synthetic this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/customView/SwipeLayout;)V
    .locals 1

    .prologue
    .line 554
    iput-object p1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$1;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 555
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$1;->hasDisallowed:Z

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 559
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$1;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v0, v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$002(Lbr/com/santander/msgsdk/customView/SwipeLayout;Z)Z

    .line 560
    iput-boolean v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$1;->hasDisallowed:Z

    .line 561
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$1;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$002(Lbr/com/santander/msgsdk/customView/SwipeLayout;Z)Z

    .line 567
    const/4 v0, 0x0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 572
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$1;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v0, v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$002(Lbr/com/santander/msgsdk/customView/SwipeLayout;Z)Z

    .line 574
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$1;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 577
    iget-boolean v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$1;->hasDisallowed:Z

    if-nez v0, :cond_3

    .line 578
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$1;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$100(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I

    move-result v0

    iget-object v3, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$1;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v3}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$200(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I

    move-result v3

    if-lt v0, v3, :cond_2

    move v0, v1

    .line 579
    :goto_0
    if-eqz v0, :cond_0

    .line 580
    iput-boolean v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$1;->hasDisallowed:Z

    .line 588
    :cond_0
    :goto_1
    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$1;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-virtual {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 591
    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 578
    goto :goto_0

    :cond_3
    move v0, v1

    .line 583
    goto :goto_1
.end method
