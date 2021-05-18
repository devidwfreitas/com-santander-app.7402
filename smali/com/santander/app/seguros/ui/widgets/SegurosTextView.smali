.class public Lcom/santander/app/seguros/ui/widgets/SegurosTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 28
    const v0, 0x7f0b00d2

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->a:I

    .line 22
    const/4 v0, 0x2

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->b:I

    .line 23
    const/4 v0, 0x3

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->c:I

    .line 24
    const/4 v0, 0x4

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->d:I

    .line 29
    invoke-direct {p0, p2}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->a(Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method private a(I)Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 58
    packed-switch p1, :pswitch_data_0

    .line 72
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/opensans_light.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    return-object v0

    .line 60
    :pswitch_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/opensans_bold.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 63
    :pswitch_1
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/opensans_italic.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 66
    :pswitch_2
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/opensans_semibold.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 69
    :pswitch_3
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/opensans_regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lflv;->SegurosTextView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 45
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 46
    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->a(I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    return-void

    .line 49
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method
