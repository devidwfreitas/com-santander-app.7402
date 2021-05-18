.class public Lcom/santander/app/components/view/SantanderEditText;
.super Landroid/widget/EditText;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/components/view/SantanderEditText;->a:Z

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/SantanderEditText;->a(Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/components/view/SantanderEditText;->a:Z

    .line 30
    invoke-direct {p0, p2}, Lcom/santander/app/components/view/SantanderEditText;->a(Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/components/view/SantanderEditText;->a:Z

    .line 25
    invoke-direct {p0, p2}, Lcom/santander/app/components/view/SantanderEditText;->a(Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    .line 43
    if-eqz p1, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/santander/app/components/view/SantanderEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lflv;->SantanderTextView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 47
    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/santander/app/components/view/SantanderEditText;->getContext()Landroid/content/Context;

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

    .line 49
    invoke-virtual {p0, v1}, Lcom/santander/app/components/view/SantanderEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 52
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    :cond_1
    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 65
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 60
    :pswitch_0
    invoke-virtual {p0}, Lcom/santander/app/components/view/SantanderEditText;->clearFocus()V

    .line 61
    iget-boolean v0, p0, Lcom/santander/app/components/view/SantanderEditText;->a:Z

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public setOnKeyPreIme(Z)V
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/santander/app/components/view/SantanderEditText;->a:Z

    .line 40
    return-void
.end method
