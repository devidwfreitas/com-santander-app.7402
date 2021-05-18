.class public Lcom/santander/app/components/view/SegmentEditText;
.super Landroid/widget/EditText;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/santander/app/components/view/SegmentEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/santander/app/components/view/SegmentEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/santander/app/components/view/SegmentEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-static {}, Lmzr;->d()I

    move-result v0

    .line 38
    packed-switch v0, :pswitch_data_0

    .line 49
    const v0, 0x7f0202fb

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/SegmentEditText;->setBackgroundResource(I)V

    .line 53
    :goto_0
    return-void

    .line 40
    :pswitch_0
    const v0, 0x7f0202fc

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/SegmentEditText;->setBackgroundResource(I)V

    goto :goto_0

    .line 45
    :pswitch_1
    const v0, 0x7f0202fd

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/SegmentEditText;->setBackgroundResource(I)V

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/content/Context;I)Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 67
    packed-switch p2, :pswitch_data_0

    .line 79
    invoke-virtual {p0}, Lcom/santander/app/components/view/SegmentEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/opensans_regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    return-object v0

    .line 69
    :pswitch_0
    invoke-virtual {p0}, Lcom/santander/app/components/view/SegmentEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/opensans_bold.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 72
    :pswitch_1
    invoke-virtual {p0}, Lcom/santander/app/components/view/SegmentEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/opensans_italic.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 75
    :pswitch_2
    invoke-virtual {p0}, Lcom/santander/app/components/view/SegmentEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/opensans_bolditalic.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 56
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "textStyle"

    const/4 v2, 0x0

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/santander/app/components/view/SegmentEditText;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/SegmentEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 60
    return-void
.end method
