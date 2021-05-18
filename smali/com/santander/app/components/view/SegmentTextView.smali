.class public Lcom/santander/app/components/view/SegmentTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/santander/app/components/view/SegmentTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lcom/santander/app/components/view/SegmentTextView;->a()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/santander/app/components/view/SegmentTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Lcom/santander/app/components/view/SegmentTextView;->a()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/santander/app/components/view/SegmentTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0}, Lcom/santander/app/components/view/SegmentTextView;->a()V

    .line 41
    return-void
.end method

.method private a(Landroid/content/Context;I)Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 80
    packed-switch p2, :pswitch_data_0

    .line 92
    invoke-virtual {p0}, Lcom/santander/app/components/view/SegmentTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/opensans_regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    return-object v0

    .line 82
    :pswitch_0
    invoke-virtual {p0}, Lcom/santander/app/components/view/SegmentTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/opensans_bold.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 85
    :pswitch_1
    invoke-virtual {p0}, Lcom/santander/app/components/view/SegmentTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/opensans_italic.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 88
    :pswitch_2
    invoke-virtual {p0}, Lcom/santander/app/components/view/SegmentTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/opensans_bolditalic.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {}, Lmzr;->d()I

    move-result v0

    .line 47
    packed-switch v0, :pswitch_data_0

    .line 58
    :goto_0
    return-void

    .line 49
    :pswitch_0
    const v0, -0xb7bec3

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/SegmentTextView;->setTextColor(I)V

    goto :goto_0

    .line 54
    :pswitch_1
    invoke-virtual {p0}, Lcom/santander/app/components/view/SegmentTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/SegmentTextView;->setTextColor(I)V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 61
    .line 64
    if-eqz p2, :cond_0

    .line 65
    :try_start_0
    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "textStyle"

    const/4 v3, 0x0

    invoke-interface {p2, v1, v2, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 71
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/santander/app/components/view/SegmentTextView;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 72
    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/SegmentTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 73
    return-void

    .line 67
    :catch_0
    move-exception v1

    .line 68
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
