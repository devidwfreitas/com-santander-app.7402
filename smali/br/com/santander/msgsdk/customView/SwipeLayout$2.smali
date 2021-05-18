.class Lbr/com/santander/msgsdk/customView/SwipeLayout$2;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/customView/SwipeLayout;)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method private getSlideOffset()F
    .locals 2

    .prologue
    .line 823
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$700(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 837
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 825
    :pswitch_1
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$500(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$800(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$900(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    .line 828
    :pswitch_2
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$800(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$500(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$900(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    .line 831
    :pswitch_3
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$500(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$800(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$900(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    .line 834
    :pswitch_4
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$800(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$500(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$900(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto/16 :goto_0

    .line 823
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 3

    .prologue
    .line 683
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$700(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 697
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    :goto_0
    return v0

    .line 685
    :pswitch_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    .line 686
    invoke-static {v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$800(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    .line 687
    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$800(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v2}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$900(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 685
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 691
    :pswitch_1
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    .line 692
    invoke-static {v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$800(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$900(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    .line 693
    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$800(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 691
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 683
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 3

    .prologue
    .line 663
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$700(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 677
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_0
    return v0

    .line 665
    :sswitch_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    .line 666
    invoke-static {v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$800(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$900(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    .line 667
    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$800(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 665
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 671
    :sswitch_1
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    .line 672
    invoke-static {v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$800(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    .line 673
    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$800(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v2}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$900(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 671
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 663
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public onEdgeDragStarted(II)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 772
    invoke-super {p0, p1, p2}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    .line 774
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$400(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 793
    :cond_0
    :goto_0
    return-void

    .line 778
    :cond_1
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$700(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I

    move-result v0

    if-ne v0, v4, :cond_3

    if-ne p1, v1, :cond_3

    move v0, v1

    .line 781
    :goto_1
    iget-object v3, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v3}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$700(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I

    move-result v3

    if-ne v3, v1, :cond_4

    if-ne p1, v4, :cond_4

    move v3, v1

    .line 784
    :goto_2
    iget-object v4, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v4}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$700(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I

    move-result v4

    if-ne v4, v7, :cond_5

    if-ne p1, v6, :cond_5

    move v4, v1

    .line 787
    :goto_3
    iget-object v5, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v5}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$700(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I

    move-result v5

    if-ne v5, v6, :cond_6

    if-ne p1, v7, :cond_6

    .line 790
    :goto_4
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    if-eqz v1, :cond_0

    .line 791
    :cond_2
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$600(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$500(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 778
    goto :goto_1

    :cond_4
    move v3, v2

    .line 781
    goto :goto_2

    :cond_5
    move v4, v2

    .line 784
    goto :goto_3

    :cond_6
    move v1, v2

    .line 787
    goto :goto_4
.end method

.method public onViewDragStateChanged(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 843
    invoke-super {p0, p1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    .line 844
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$1900(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I

    move-result v0

    .line 846
    packed-switch p1, :pswitch_data_0

    .line 873
    :goto_0
    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$2000(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Lbr/com/santander/msgsdk/customView/SwipeLayout$DragStateChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$300(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$1900(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 874
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$2000(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Lbr/com/santander/msgsdk/customView/SwipeLayout$DragStateChangeListener;

    move-result-object v0

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$1900(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I

    move-result v1

    invoke-interface {v0, v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout$DragStateChangeListener;->onDragStateChanged(I)V

    .line 876
    :cond_0
    return-void

    .line 848
    :pswitch_0
    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$1902(Lbr/com/santander/msgsdk/customView/SwipeLayout;I)I

    goto :goto_0

    .line 854
    :pswitch_1
    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$700(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$700(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 855
    :cond_1
    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$500(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v2}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$800(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-ne v1, v2, :cond_2

    .line 856
    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1, v4}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$1902(Lbr/com/santander/msgsdk/customView/SwipeLayout;I)I

    goto :goto_0

    .line 858
    :cond_2
    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1, v3}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$1902(Lbr/com/santander/msgsdk/customView/SwipeLayout;I)I

    goto :goto_0

    .line 864
    :cond_3
    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$500(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v2}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$800(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-ne v1, v2, :cond_4

    .line 865
    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1, v4}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$1902(Lbr/com/santander/msgsdk/customView/SwipeLayout;I)I

    goto :goto_0

    .line 867
    :cond_4
    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1, v3}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$1902(Lbr/com/santander/msgsdk/customView/SwipeLayout;I)I

    goto :goto_0

    .line 846
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 797
    invoke-super/range {p0 .. p5}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 798
    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$1400(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 799
    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$700(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$700(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 800
    :cond_0
    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$900(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 806
    :cond_1
    :goto_0
    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$500(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v2}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$1500(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$500(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v2}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$1600(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 807
    :cond_2
    :goto_1
    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$1700(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Lbr/com/santander/msgsdk/customView/SwipeLayout$SwipeListener;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 808
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$500(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$800(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$500(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$800(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_6

    .line 809
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$1700(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Lbr/com/santander/msgsdk/customView/SwipeLayout$SwipeListener;

    move-result-object v0

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-interface {v0, v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout$SwipeListener;->onClosed(Lbr/com/santander/msgsdk/customView/SwipeLayout;)V

    .line 817
    :cond_3
    :goto_2
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$500(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-static {v0, v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$1502(Lbr/com/santander/msgsdk/customView/SwipeLayout;I)I

    .line 818
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$500(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v0, v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$1602(Lbr/com/santander/msgsdk/customView/SwipeLayout;I)I

    .line 819
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 820
    return-void

    .line 802
    :cond_4
    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$900(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_0

    .line 806
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 810
    :cond_6
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$500(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$1800(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$500(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$1800(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_7

    .line 811
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$1700(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Lbr/com/santander/msgsdk/customView/SwipeLayout$SwipeListener;

    move-result-object v0

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-interface {v0, v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout$SwipeListener;->onOpened(Lbr/com/santander/msgsdk/customView/SwipeLayout;)V

    goto :goto_2

    .line 813
    :cond_7
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$1700(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Lbr/com/santander/msgsdk/customView/SwipeLayout$SwipeListener;

    move-result-object v0

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-direct {p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->getSlideOffset()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lbr/com/santander/msgsdk/customView/SwipeLayout$SwipeListener;->onSlide(Lbr/com/santander/msgsdk/customView/SwipeLayout;F)V

    goto :goto_2
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 703
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    float-to-int v3, p2

    invoke-static {v0, v3}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$1000(Lbr/com/santander/msgsdk/customView/SwipeLayout;I)I

    move-result v0

    iget-object v3, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v3}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$1100(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I

    move-result v3

    if-lt v0, v3, :cond_1

    move v0, v1

    .line 704
    :goto_0
    iget-object v3, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    float-to-int v4, p2

    invoke-static {v3, v4}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$1000(Lbr/com/santander/msgsdk/customView/SwipeLayout;I)I

    move-result v3

    iget-object v4, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v4}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$1100(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I

    move-result v4

    neg-int v4, v4

    if-gt v3, v4, :cond_2

    move v3, v1

    .line 705
    :goto_1
    iget-object v4, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    float-to-int v5, p3

    invoke-static {v4, v5}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$1000(Lbr/com/santander/msgsdk/customView/SwipeLayout;I)I

    move-result v4

    iget-object v5, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v5}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$1100(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I

    move-result v5

    neg-int v5, v5

    if-gt v4, v5, :cond_3

    move v4, v1

    .line 706
    :goto_2
    iget-object v5, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    float-to-int v6, p3

    invoke-static {v5, v6}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$1000(Lbr/com/santander/msgsdk/customView/SwipeLayout;I)I

    move-result v5

    iget-object v6, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v6}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$1100(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I

    move-result v6

    if-lt v5, v6, :cond_0

    move v2, v1

    .line 708
    :cond_0
    iget-object v5, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v5}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$1200(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I

    move-result v5

    .line 709
    iget-object v6, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v6}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$1300(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I

    move-result v6

    .line 711
    iget-object v7, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v7}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$700(Lbr/com/santander/msgsdk/customView/SwipeLayout;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 768
    :goto_3
    :pswitch_0
    return-void

    :cond_1
    move v0, v2

    .line 703
    goto :goto_0

    :cond_2
    move v3, v2

    .line 704
    goto :goto_1

    :cond_3
    move v4, v2

    .line 705
    goto :goto_2

    .line 713
    :pswitch_1
    if-eqz v0, :cond_4

    .line 714
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-virtual {v0, v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->close(Z)V

    goto :goto_3

    .line 715
    :cond_4
    if-eqz v3, :cond_5

    .line 716
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-virtual {v0, v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->open(Z)V

    goto :goto_3

    .line 718
    :cond_5
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$500(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    if-ge v0, v5, :cond_6

    .line 719
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-virtual {v0, v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->open(Z)V

    goto :goto_3

    .line 721
    :cond_6
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-virtual {v0, v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->close(Z)V

    goto :goto_3

    .line 727
    :pswitch_2
    if-eqz v0, :cond_7

    .line 728
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-virtual {v0, v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->open(Z)V

    goto :goto_3

    .line 729
    :cond_7
    if-eqz v3, :cond_8

    .line 730
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-virtual {v0, v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->close(Z)V

    goto :goto_3

    .line 732
    :cond_8
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$500(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-ge v0, v5, :cond_9

    .line 733
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-virtual {v0, v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->close(Z)V

    goto :goto_3

    .line 735
    :cond_9
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-virtual {v0, v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->open(Z)V

    goto :goto_3

    .line 741
    :pswitch_3
    if-eqz v4, :cond_a

    .line 742
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-virtual {v0, v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->close(Z)V

    goto :goto_3

    .line 743
    :cond_a
    if-eqz v2, :cond_b

    .line 744
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-virtual {v0, v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->open(Z)V

    goto :goto_3

    .line 746
    :cond_b
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$500(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-ge v0, v6, :cond_c

    .line 747
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-virtual {v0, v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->close(Z)V

    goto :goto_3

    .line 749
    :cond_c
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-virtual {v0, v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->open(Z)V

    goto :goto_3

    .line 755
    :pswitch_4
    if-eqz v4, :cond_d

    .line 756
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-virtual {v0, v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->open(Z)V

    goto/16 :goto_3

    .line 757
    :cond_d
    if-eqz v2, :cond_e

    .line 758
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-virtual {v0, v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->close(Z)V

    goto/16 :goto_3

    .line 760
    :cond_e
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$500(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    if-ge v0, v6, :cond_f

    .line 761
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-virtual {v0, v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->open(Z)V

    goto/16 :goto_3

    .line 763
    :cond_f
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-virtual {v0, v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->close(Z)V

    goto/16 :goto_3

    .line 711
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 652
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v0, v2}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$302(Lbr/com/santander/msgsdk/customView/SwipeLayout;Z)Z

    .line 654
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$400(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    :goto_0
    return v2

    .line 657
    :cond_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$600(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    iget-object v1, p0, Lbr/com/santander/msgsdk/customView/SwipeLayout$2;->this$0:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-static {v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->access$500(Lbr/com/santander/msgsdk/customView/SwipeLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    goto :goto_0
.end method
