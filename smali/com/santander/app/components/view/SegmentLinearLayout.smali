.class public Lcom/santander/app/components/view/SegmentLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0}, Lcom/santander/app/components/view/SegmentLinearLayout;->a()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lcom/santander/app/components/view/SegmentLinearLayout;->a()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0}, Lcom/santander/app/components/view/SegmentLinearLayout;->a()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    invoke-direct {p0}, Lcom/santander/app/components/view/SegmentLinearLayout;->a()V

    .line 39
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lmzr;->d()I

    move-result v0

    .line 44
    packed-switch v0, :pswitch_data_0

    .line 55
    :goto_0
    return-void

    .line 46
    :pswitch_0
    invoke-virtual {p0}, Lcom/santander/app/components/view/SegmentLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/SegmentLinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 51
    :pswitch_1
    invoke-virtual {p0}, Lcom/santander/app/components/view/SegmentLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e01b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/SegmentLinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
