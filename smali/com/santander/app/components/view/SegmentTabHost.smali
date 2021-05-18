.class public Lcom/santander/app/components/view/SegmentTabHost;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-static {}, Lmzr;->d()I

    move-result v0

    .line 29
    packed-switch v0, :pswitch_data_0

    .line 40
    :goto_0
    return-void

    .line 31
    :pswitch_0
    const v0, 0x7f020655

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/SegmentTabHost;->setBackgroundResource(I)V

    goto :goto_0

    .line 36
    :pswitch_1
    const v0, 0x7f020656

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/SegmentTabHost;->setBackgroundResource(I)V

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
