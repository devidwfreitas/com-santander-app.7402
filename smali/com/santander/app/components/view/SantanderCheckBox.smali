.class public Lcom/santander/app/components/view/SantanderCheckBox;
.super Landroid/widget/CheckBox;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0, p2}, Lcom/santander/app/components/view/SantanderCheckBox;->a(Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-direct {p0, p2}, Lcom/santander/app/components/view/SantanderCheckBox;->a(Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/santander/app/components/view/SantanderCheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lflv;->SantanderTextView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 39
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/santander/app/components/view/SantanderCheckBox;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fonts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 43
    invoke-virtual {p0, v1}, Lcom/santander/app/components/view/SantanderCheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 46
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    invoke-static {}, Lmzr;->d()I

    move-result v0

    .line 50
    packed-switch v0, :pswitch_data_0

    .line 61
    invoke-virtual {p0}, Lcom/santander/app/components/view/SantanderCheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020296

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/SantanderCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    :goto_0
    return-void

    .line 52
    :pswitch_0
    invoke-virtual {p0}, Lcom/santander/app/components/view/SantanderCheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020297

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/SantanderCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 57
    :pswitch_1
    invoke-virtual {p0}, Lcom/santander/app/components/view/SantanderCheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020298

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/SantanderCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
