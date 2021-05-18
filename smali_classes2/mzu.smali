.class public Lmzu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field public static final f:I = 0x6

.field public static final g:I = 0x7

.field public static final h:I = 0x8

.field public static final i:Ljava/lang/String; = "sans-serif"

.field public static final j:Ljava/lang/String; = "sans-serif-light"

.field public static final k:Ljava/lang/String; = "sans-serif-condensed"

.field public static final l:Ljava/lang/String; = "sans-serif-thin"

.field public static final m:Ljava/lang/String; = "sans-serif-medium"

.field public static final n:Ljava/lang/String; = "ID_NAO_HABILITADO"

.field public static final o:Ljava/lang/String; = "SANS_SERIF"

.field public static final p:Ljava/lang/String; = "SERIF"

.field public static final q:Ljava/lang/String; = "DEFAULT_BOLD"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILandroid/content/Context;)Landroid/graphics/Typeface;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 111
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    const-string v3, "my"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    .line 113
    :goto_0
    if-eqz v0, :cond_1

    const-string v4, "si"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 114
    :goto_1
    if-eqz v3, :cond_2

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/zawgyi.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 136
    :goto_2
    return-object v0

    :cond_0
    move v3, v2

    .line 112
    goto :goto_0

    :cond_1
    move v0, v2

    .line 113
    goto :goto_1

    .line 116
    :cond_2
    if-eqz v0, :cond_3

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/malithi.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    .line 119
    :cond_3
    packed-switch p0, :pswitch_data_0

    .line 136
    const-string v0, "sans-serif"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    .line 121
    :pswitch_0
    const-string v0, "sans-serif"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    .line 123
    :pswitch_1
    const-string v0, "sans-serif"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    .line 125
    :pswitch_2
    const-string v0, "sans-serif"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    .line 127
    :pswitch_3
    const-string v0, "sans-serif-light"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    .line 129
    :pswitch_4
    const-string v0, "sans-serif-condensed"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    .line 131
    :pswitch_5
    const-string v0, "sans-serif-medium"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    .line 133
    :pswitch_6
    const-string v0, "sans-serif-thin"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;I)Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 170
    packed-switch p1, :pswitch_data_0

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/opensans_regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    return-object v0

    .line 172
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/opensans_bold.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 175
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/opensans_italic.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 178
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/opensans_bolditalic.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 48
    invoke-static {v7, p0}, Lmzu;->a(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 49
    invoke-static {v7, p0}, Lmzu;->a(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 50
    const/4 v2, 0x6

    invoke-static {v2, p0}, Lmzu;->a(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 51
    const/4 v3, 0x7

    invoke-static {v3, p0}, Lmzu;->a(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 52
    const/16 v4, 0x8

    invoke-static {v4, p0}, Lmzu;->a(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 53
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_0

    .line 54
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 55
    const-string v6, "sans-serif"

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v0, "sans-serif-light"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v0, "sans-serif-condensed"

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v0, "sans-serif-thin"

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v0, "sans-serif-medium"

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {v5}, Lmzu;->a(Ljava/util/Map;)V

    .line 65
    :goto_0
    const-string v0, "ID_NAO_HABILITADO"

    invoke-static {v7, p0}, Lmzu;->a(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0, v1}, Lmzu;->a(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 66
    const-string v0, "DEFAULT_BOLD"

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lmzu;->a(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0, v1}, Lmzu;->a(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 67
    return-void

    .line 62
    :cond_0
    const-string v0, "SANS_SERIF"

    invoke-static {v7, p0}, Lmzu;->a(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0, v1}, Lmzu;->a(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 63
    const-string v0, "SERIF"

    invoke-static {v7, p0}, Lmzu;->a(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0, v1}, Lmzu;->a(Ljava/lang/String;Landroid/graphics/Typeface;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 3

    .prologue
    .line 99
    :try_start_0
    const-class v0, Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 100
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 101
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 105
    const-string v0, "TypefaceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not set custom font "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instead of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    :try_start_0
    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "sSystemFontMap"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 79
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 80
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 81
    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 86
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    :goto_1
    return-void

    :cond_0
    move-object v0, p0

    .line 84
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 90
    const-string v0, "TypefaceUtil"

    const-string v1, "Can not set custom fonts, NoSuchFieldException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 91
    :catch_1
    move-exception v0

    .line 93
    const-string v0, "TypefaceUtil"

    const-string v1, "Can not set custom fonts, IllegalAccessException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lmzu;->a(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x5

    invoke-static {v0, p0}, Lmzu;->a(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lmzu;->a(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x3

    invoke-static {v0, p0}, Lmzu;->a(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x4

    invoke-static {v0, p0}, Lmzu;->a(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x6

    invoke-static {v0, p0}, Lmzu;->a(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method
