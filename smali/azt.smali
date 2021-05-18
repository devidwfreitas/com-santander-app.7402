.class public Lazt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbah",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lbah",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/res/AssetManager;

.field private e:Lawk;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Lawk;)V
    .locals 2
    .param p2    # Lawk;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lbah;

    invoke-direct {v0}, Lbah;-><init>()V

    iput-object v0, p0, Lazt;->a:Lbah;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lazt;->b:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lazt;->c:Ljava/util/Map;

    .line 26
    const-string v0, ".ttf"

    iput-object v0, p0, Lazt;->f:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lazt;->e:Lawk;

    .line 30
    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_0

    .line 31
    const-string v0, "LOTTIE"

    const-string v1, "LottieDrawable must be inside of a view for images to work."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lazt;->d:Landroid/content/res/AssetManager;

    .line 37
    :goto_0
    return-void

    .line 36
    :cond_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lazt;->d:Landroid/content/res/AssetManager;

    goto :goto_0
.end method

.method private a(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    const-string v1, "Italic"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 96
    const-string v2, "Bold"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 97
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 98
    const/4 v0, 0x3

    .line 105
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 109
    :goto_1
    return-object p1

    .line 99
    :cond_1
    if-eqz v1, :cond_2

    .line 100
    const/4 v0, 0x2

    goto :goto_0

    .line 101
    :cond_2
    if-eqz v2, :cond_0

    .line 102
    const/4 v0, 0x1

    goto :goto_0

    .line 109
    :cond_3
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lazt;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 68
    if-eqz v0, :cond_0

    .line 90
    :goto_0
    return-object v0

    .line 72
    :cond_0
    const/4 v0, 0x0

    .line 73
    iget-object v1, p0, Lazt;->e:Lawk;

    if-eqz v1, :cond_1

    .line 74
    iget-object v0, p0, Lazt;->e:Lawk;

    invoke-virtual {v0, p1}, Lawk;->a(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 77
    :cond_1
    iget-object v1, p0, Lazt;->e:Lawk;

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 78
    iget-object v1, p0, Lazt;->e:Lawk;

    invoke-virtual {v1, p1}, Lawk;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_2

    .line 80
    iget-object v0, p0, Lazt;->d:Landroid/content/res/AssetManager;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 84
    :cond_2
    if-nez v0, :cond_3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fonts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lazt;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lazt;->d:Landroid/content/res/AssetManager;

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 89
    :cond_3
    iget-object v1, p0, Lazt;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lazt;->a:Lbah;

    invoke-virtual {v0, p1, p2}, Lbah;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lazt;->b:Ljava/util/Map;

    iget-object v1, p0, Lazt;->a:Lbah;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 57
    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return-object v0

    .line 60
    :cond_0
    invoke-direct {p0, p1}, Lazt;->b(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 61
    invoke-direct {p0, v0, p2}, Lazt;->a(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lazt;->b:Ljava/util/Map;

    iget-object v2, p0, Lazt;->a:Lbah;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Lawk;)V
    .locals 0
    .param p1    # Lawk;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 40
    iput-object p1, p0, Lazt;->e:Lawk;

    .line 41
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lazt;->f:Ljava/lang/String;

    .line 52
    return-void
.end method
