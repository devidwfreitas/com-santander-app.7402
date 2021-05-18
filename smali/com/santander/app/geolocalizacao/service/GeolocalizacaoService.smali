.class public Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static a:Landroid/app/Activity; = null

.field public static b:Ljava/lang/String; = null

.field private static final c:Ljava/lang/String; = "GeolocalizacaoService"

.field private static final f:I = 0x36ee80

.field private static final g:I = 0x64


# instance fields
.field private d:Landroid/location/LocationManager;

.field private e:Landroid/location/LocationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    sput-object v0, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->a:Landroid/app/Activity;

    .line 75
    sput-object v0, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmzl;)Lilo;
    .locals 1

    .prologue
    .line 59
    invoke-direct/range {p0 .. p7}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmzl;)Lilo;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmzl;)Lilo;
    .locals 2

    .prologue
    .line 291
    new-instance v0, Lilo;

    invoke-direct {v0}, Lilo;-><init>()V

    .line 293
    if-eqz p7, :cond_3

    .line 295
    invoke-virtual {p7}, Lmzl;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmzt;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 296
    invoke-virtual {p7}, Lmzl;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lilo;->a(Ljava/lang/String;)V

    .line 298
    :cond_0
    invoke-virtual {p7}, Lmzl;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmzt;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 299
    invoke-virtual {p7}, Lmzl;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lilo;->b(Ljava/lang/String;)V

    .line 301
    :cond_1
    invoke-virtual {p7}, Lmzl;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmzt;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 302
    invoke-virtual {p7}, Lmzl;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lilo;->e(Ljava/lang/String;)V

    .line 304
    :cond_2
    invoke-virtual {p7}, Lmzl;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmzt;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 305
    invoke-virtual {p7}, Lmzl;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lilo;->f(Ljava/lang/String;)V

    .line 308
    :cond_3
    invoke-virtual {v0, p1}, Lilo;->j(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0, p2}, Lilo;->c(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0, p3}, Lilo;->d(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v0, p4}, Lilo;->i(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0, p5}, Lilo;->h(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0, p6}, Lilo;->g(Ljava/lang/String;)V

    .line 314
    sget-object v1, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lilo;->k(Ljava/lang/String;)V

    .line 316
    return-object v0
.end method

.method private a()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SovereignBrasilProfile"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 154
    const-string v1, "l"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    :try_start_0
    invoke-static {v1}, Lnag;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 164
    :cond_0
    :try_start_1
    const-string v0, "."

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 173
    :goto_0
    return-object v0

    .line 167
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 168
    :goto_1
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 167
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_1
.end method

.method public static synthetic a(Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->d()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;Lilo;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->a(Lilo;)V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lilo;)V
    .locals 3

    .prologue
    .line 254
    invoke-virtual {p1}, Lilo;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    new-instance v0, Lilx;

    invoke-direct {v0, p0, p1}, Lilx;-><init>(Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;Lilo;)V

    .line 282
    new-instance v1, Lils;

    invoke-virtual {p0}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lils;-><init>(Landroid/content/Context;)V

    .line 283
    invoke-virtual {v1, p1, v0}, Lils;->a(Lilo;Lih;)V

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    const-string v0, "GeolocalizacaoService"

    const-string v1, "Par\u00e2metros inv\u00e1lidos."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 367
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method private b()Lfoh;
    .locals 1

    .prologue
    .line 177
    new-instance v0, Lilv;

    invoke-direct {v0, p0}, Lilv;-><init>(Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;)V

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->c()V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 359
    invoke-static {}, Lmyu;->a()Lmyu;

    move-result-object v0

    .line 360
    invoke-virtual {v0, v1}, Lmyu;->a(Z)V

    .line 361
    invoke-virtual {v0, v1}, Lmyu;->b(Z)V

    .line 362
    invoke-virtual {v0, p2, p1}, Lmyu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;)Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->d:Landroid/location/LocationManager;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->d:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->d:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->e:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 324
    const-string v1, "GeolocalizacaoService"

    const-string v2, "fail to remove location listners, ignore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 370
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 371
    invoke-virtual {p0}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 373
    new-instance v1, Landroid/support/v7/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 375
    invoke-virtual {v1, v6}, Landroid/support/v7/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, -0x1

    .line 376
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const v3, 0x7f02006c

    .line 378
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const-string v3, "Hearty365"

    .line 379
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 380
    invoke-virtual {v2, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 381
    invoke-virtual {v2, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, 0x5

    .line 382
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 383
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v2, "Info"

    .line 384
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 387
    invoke-virtual {p0}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 388
    invoke-virtual {v1}, Landroid/support/v7/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 389
    return-void
.end method

.method public static synthetic d(Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 6

    .prologue
    .line 330
    iget-object v0, p0, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->d:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 333
    :try_start_0
    invoke-virtual {p0}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "geoTest - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "N\u00e3o enviou localiza\u00e7\u00e3o (Permissao)"

    invoke-direct {p0, v0, v1}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->d:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->d:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/32 v2, 0x36ee80

    const/high16 v4, 0x42c80000    # 100.0f

    iget-object v5, p0, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->e:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    const-string v1, "GeolocalizacaoService"

    const-string v2, "fail to add location listners, ignore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 341
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "geoTest - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "N\u00e3o enviou localiza\u00e7\u00e3o (GPS Desligado)"

    invoke-direct {p0, v0, v1}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 121
    const-string v0, "GeolocalizacaoService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->d:Landroid/location/LocationManager;

    .line 124
    new-instance v0, Lily;

    invoke-direct {p0}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->b()Lfoh;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lily;-><init>(Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;Lfoh;)V

    iput-object v0, p0, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->e:Landroid/location/LocationListener;

    .line 127
    :try_start_0
    invoke-direct {p0}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->d()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 133
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    const-string v1, "GeolocalizacaoService"

    const-string v2, "fail to request location update, ignore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 130
    :catch_1
    move-exception v0

    .line 131
    const-string v1, "GeolocalizacaoService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network provider does not exist, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 145
    const-string v0, "GeolocalizacaoService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 147
    invoke-direct {p0}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->c()V

    .line 148
    invoke-virtual {p0}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->stopSelf()V

    .line 149
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 114
    const-string v0, "GeolocalizacaoService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 116
    const/4 v0, 0x2

    return v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 137
    const-string v0, "GeolocalizacaoService"

    const-string v1, "onTaskRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 139
    invoke-direct {p0}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->c()V

    .line 140
    invoke-virtual {p0}, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->stopSelf()V

    .line 141
    return-void
.end method
