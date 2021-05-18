.class public Lavo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field A:Ljava/lang/String;

.field B:Ljava/lang/String;

.field C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private D:Z

.field public a:Ljava/lang/String;

.field b:Ljava/lang/Boolean;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:Ljava/lang/String;

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;

.field v:Ljava/lang/String;

.field w:Ljava/lang/String;

.field x:Ljava/lang/String;

.field y:Ljava/lang/String;

.field z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lavo;->D:Z

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 67
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/adjust/sdk/Util;->getLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v2

    .line 69
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 72
    invoke-virtual {p0, p1}, Lavo;->a(Landroid/content/Context;)V

    .line 74
    invoke-direct {p0, p1}, Lavo;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lavo;->h:Ljava/lang/String;

    .line 75
    invoke-direct {p0, p1}, Lavo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lavo;->i:Ljava/lang/String;

    .line 76
    invoke-direct {p0, v0}, Lavo;->a(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lavo;->j:Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Lavo;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lavo;->k:Ljava/lang/String;

    .line 78
    invoke-direct {p0}, Lavo;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lavo;->l:Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Lavo;->c()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lavo;->m:Ljava/lang/String;

    .line 80
    invoke-direct {p0}, Lavo;->d()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lavo;->n:Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Lavo;->e()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lavo;->o:Ljava/lang/String;

    .line 82
    invoke-direct {p0, v2}, Lavo;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lavo;->p:Ljava/lang/String;

    .line 83
    invoke-direct {p0, v2}, Lavo;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lavo;->q:Ljava/lang/String;

    .line 84
    invoke-direct {p0, v0}, Lavo;->b(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lavo;->r:Ljava/lang/String;

    .line 85
    invoke-direct {p0, v0}, Lavo;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lavo;->s:Ljava/lang/String;

    .line 86
    invoke-direct {p0, v1}, Lavo;->a(Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lavo;->t:Ljava/lang/String;

    .line 87
    invoke-direct {p0, v1}, Lavo;->b(Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lavo;->u:Ljava/lang/String;

    .line 88
    invoke-direct {p0, v1}, Lavo;->c(Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lavo;->v:Ljava/lang/String;

    .line 89
    invoke-direct {p0, p2}, Lavo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lavo;->g:Ljava/lang/String;

    .line 90
    invoke-direct {p0, p1}, Lavo;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lavo;->f:Ljava/lang/String;

    .line 91
    invoke-static {p1}, Lcom/adjust/sdk/Util;->getPluginKeys(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lavo;->C:Ljava/util/Map;

    .line 92
    invoke-direct {p0}, Lavo;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lavo;->w:Ljava/lang/String;

    .line 93
    invoke-direct {p0}, Lavo;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lavo;->x:Ljava/lang/String;

    .line 94
    invoke-direct {p0}, Lavo;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lavo;->y:Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Lavo;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lavo;->z:Ljava/lang/String;

    .line 96
    invoke-direct {p0, p1}, Lavo;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lavo;->A:Ljava/lang/String;

    .line 97
    invoke-direct {p0, p1}, Lavo;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lavo;->B:Ljava/lang/String;

    .line 98
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    and-int/lit8 v0, p1, 0xf

    .line 147
    packed-switch v0, :pswitch_data_0

    .line 155
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 150
    :pswitch_0
    const-string v0, "phone"

    goto :goto_0

    .line 153
    :pswitch_1
    const-string v0, "tablet"

    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 119
    if-nez p2, :cond_1

    .line 120
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p1, v0}, Lcom/adjust/sdk/Util;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const-string v1, "Missing permission: ACCESS_WIFI_STATE"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    :cond_0
    invoke-static {p1}, Lcom/adjust/sdk/Util;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 226
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 227
    const/16 v1, 0x8c

    .line 228
    const/16 v2, 0xc8

    .line 230
    if-nez v0, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 237
    :goto_0
    return-object v0

    .line 232
    :cond_0
    if-ge v0, v1, :cond_1

    .line 233
    const-string v0, "low"

    goto :goto_0

    .line 234
    :cond_1
    if-le v0, v2, :cond_2

    .line 235
    const-string v0, "high"

    goto :goto_0

    .line 237
    :cond_2
    const-string v0, "medium"

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 249
    if-nez p1, :cond_0

    .line 250
    const-string v0, "android4.12.0"

    .line 252
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s@%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string v4, "android4.12.0"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method private b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    and-int/lit8 v0, p1, 0xf

    .line 198
    packed-switch v0, :pswitch_data_0

    .line 208
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 200
    :pswitch_0
    const-string v0, "small"

    goto :goto_0

    .line 202
    :pswitch_1
    const-string v0, "normal"

    goto :goto_0

    .line 204
    :pswitch_2
    const-string v0, "large"

    goto :goto_0

    .line 206
    :pswitch_3
    const-string v0, "xlarge"

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    if-nez p1, :cond_0

    .line 258
    const/4 v0, 0x0

    .line 262
    :goto_0
    return-object v0

    .line 260
    :cond_0
    invoke-static {p1}, Lcom/adjust/sdk/Util;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const-string v0, "android"

    return-object v0
.end method

.method private c(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    and-int/lit8 v0, p1, 0x30

    .line 215
    sparse-switch v0, :sswitch_data_0

    .line 221
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 217
    :sswitch_0
    const-string v0, "long"

    goto :goto_0

    .line 219
    :sswitch_1
    const-string v0, "normal"

    goto :goto_0

    .line 215
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 135
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 137
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 138
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-object v0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    if-nez p1, :cond_0

    .line 267
    const/4 v0, 0x0

    .line 272
    :goto_0
    return-object v0

    .line 269
    :cond_0
    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-static {v0}, Lcom/adjust/sdk/Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method private d(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 277
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 278
    const-string v1, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 279
    const-string v2, "aid"

    .line 280
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "aid"

    aput-object v4, v2, v3

    .line 281
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 283
    if-nez v1, :cond_0

    move-object v0, v6

    .line 295
    :goto_0
    return-object v0

    .line 286
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    .line 288
    goto :goto_0

    .line 291
    :cond_1
    const-string v0, "aid"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 295
    goto :goto_0
.end method

.method private e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 318
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 319
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 321
    sget-object v1, Lcom/adjust/sdk/Util;->dateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 325
    :goto_0
    return-object v0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    return-object v0
.end method

.method private f(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 331
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 332
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 334
    sget-object v1, Lcom/adjust/sdk/Util;->dateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 338
    :goto_0
    return-object v0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 300
    invoke-static {}, Lcom/adjust/sdk/Util;->getSupportedAbis()[Ljava/lang/String;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 305
    :cond_0
    invoke-static {}, Lcom/adjust/sdk/Util;->getCpuAbi()Ljava/lang/String;

    move-result-object v0

    .line 308
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    invoke-static {}, Lcom/adjust/sdk/Util;->getVmInstructionSet()Ljava/lang/String;

    move-result-object v0

    .line 313
    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 101
    invoke-static {p1}, Lcom/adjust/sdk/Util;->isPlayTrackingEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lavo;->b:Ljava/lang/Boolean;

    .line 102
    invoke-static {p1}, Lcom/adjust/sdk/Util;->getPlayAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lavo;->a:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lavo;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lavo;->D:Z

    if-nez v0, :cond_1

    .line 105
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p1, v0}, Lcom/adjust/sdk/Util;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const-string v1, "Missing permission: ACCESS_WIFI_STATE"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    :cond_0
    invoke-static {p1}, Lcom/adjust/sdk/Util;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-direct {p0, v0}, Lavo;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lavo;->c:Ljava/lang/String;

    .line 110
    invoke-direct {p0, v0}, Lavo;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lavo;->d:Ljava/lang/String;

    .line 112
    invoke-static {p1}, Lcom/adjust/sdk/Util;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lavo;->e:Ljava/lang/String;

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lavo;->D:Z

    .line 116
    :cond_1
    return-void
.end method
