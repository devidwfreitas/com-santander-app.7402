.class public Lcom/santander/app/components/view/SegmentLineView;
.super Landroid/view/View;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0}, Lcom/santander/app/components/view/SegmentLineView;->a()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0}, Lcom/santander/app/components/view/SegmentLineView;->a()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0}, Lcom/santander/app/components/view/SegmentLineView;->a()V

    .line 32
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lmzr;->d()I

    move-result v0

    .line 37
    packed-switch v0, :pswitch_data_0

    .line 48
    :goto_0
    return-void

    .line 39
    :pswitch_0
    const v0, -0xb7bec3

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/SegmentLineView;->setBackgroundColor(I)V

    goto :goto_0

    .line 44
    :pswitch_1
    const v0, -0x49d0d1

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/SegmentLineView;->setBackgroundColor(I)V

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
