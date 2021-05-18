.class public Lcom/santander/app/components/view/SegmentSpinner;
.super Landroid/support/v7/widget/AppCompatSpinner;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/santander/app/components/view/SegmentSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-static {}, Lmzr;->d()I

    move-result v0

    .line 34
    packed-switch v0, :pswitch_data_0

    .line 45
    :goto_0
    return-void

    .line 36
    :pswitch_0
    const v0, 0x7f020638

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/SegmentSpinner;->setBackgroundResource(I)V

    goto :goto_0

    .line 41
    :pswitch_1
    const v0, 0x7f020639

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/SegmentSpinner;->setBackgroundResource(I)V

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
