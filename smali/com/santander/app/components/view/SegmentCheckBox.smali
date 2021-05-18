.class public Lcom/santander/app/components/view/SegmentCheckBox;
.super Landroid/widget/CheckBox;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/santander/app/components/view/SegmentCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-static {}, Lmzr;->d()I

    move-result v0

    .line 33
    packed-switch v0, :pswitch_data_0

    .line 44
    invoke-virtual {p0}, Lcom/santander/app/components/view/SegmentCheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020296

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/SegmentCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    :goto_0
    return-void

    .line 35
    :pswitch_0
    invoke-virtual {p0}, Lcom/santander/app/components/view/SegmentCheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020297

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/SegmentCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 40
    :pswitch_1
    invoke-virtual {p0}, Lcom/santander/app/components/view/SegmentCheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020298

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/SegmentCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
