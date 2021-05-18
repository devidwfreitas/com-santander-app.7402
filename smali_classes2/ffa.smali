.class Lffa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4


# instance fields
.field A:I

.field B:Ljava/lang/String;

.field private C:I

.field f:Ljava/util/Date;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Lffb;

.field k:Ljava/lang/String;

.field l:Z

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Lffc;

.field s:Ljava/lang/String;

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;

.field v:Ljava/lang/String;

.field w:Ljava/lang/String;

.field x:Ljava/lang/String;

.field y:Ljava/lang/String;

.field z:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v1, p0, Lffa;->f:Ljava/util/Date;

    .line 71
    iput-object v1, p0, Lffa;->g:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lffa;->h:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lffa;->i:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lffa;->j:Lffb;

    .line 94
    iput-object v1, p0, Lffa;->k:Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lffa;->l:Z

    .line 104
    iput-object v1, p0, Lffa;->m:Ljava/lang/String;

    .line 109
    iput-object v1, p0, Lffa;->n:Ljava/lang/String;

    .line 114
    iput-object v1, p0, Lffa;->o:Ljava/lang/String;

    .line 119
    iput-object v1, p0, Lffa;->p:Ljava/lang/String;

    .line 125
    iput-object v1, p0, Lffa;->q:Ljava/lang/String;

    .line 131
    iput-object v1, p0, Lffa;->r:Lffc;

    .line 138
    iput-object v1, p0, Lffa;->s:Ljava/lang/String;

    .line 143
    iput-object v1, p0, Lffa;->t:Ljava/lang/String;

    .line 148
    iput-object v1, p0, Lffa;->u:Ljava/lang/String;

    .line 156
    iput-object v1, p0, Lffa;->v:Ljava/lang/String;

    .line 162
    iput-object v1, p0, Lffa;->w:Ljava/lang/String;

    .line 167
    iput-object v1, p0, Lffa;->x:Ljava/lang/String;

    .line 172
    iput-object v1, p0, Lffa;->y:Ljava/lang/String;

    .line 195
    iput-object v1, p0, Lffa;->B:Ljava/lang/String;

    .line 199
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 200
    new-instance v0, Lffb;

    invoke-direct {v0, p0}, Lffb;-><init>(Lffa;)V

    iput-object v0, p0, Lffa;->j:Lffb;

    .line 201
    new-instance v0, Lffc;

    invoke-direct {v0, p0}, Lffc;-><init>(Lffa;)V

    iput-object v0, p0, Lffa;->r:Lffc;

    .line 203
    :cond_0
    iput p1, p0, Lffa;->C:I

    .line 204
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 398
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-object p1

    .line 402
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 404
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 406
    const/16 v3, 0x22

    if-eq v2, v3, :cond_2

    const/16 v3, 0x26

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_2

    const/16 v3, 0x27

    if-eq v2, v3, :cond_2

    .line 411
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 403
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 415
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public a(ZLjava/util/HashMap;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    .line 421
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 422
    if-eqz p1, :cond_0

    .line 424
    iget-object v0, p0, Lffa;->f:Ljava/util/Date;

    invoke-static {v0}, Lfgf;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 425
    const-string v1, "TIMESTAMP"

    invoke-direct {p0, v0}, Lffa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    :cond_0
    iget-object v0, p0, Lffa;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 428
    const-string v0, "HardwareID"

    iget-object v1, p0, Lffa;->g:Ljava/lang/String;

    invoke-direct {p0, v1}, Lffa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 430
    :cond_1
    iget-object v0, p0, Lffa;->h:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 431
    const-string v0, "SIM_ID"

    iget-object v1, p0, Lffa;->h:Ljava/lang/String;

    invoke-direct {p0, v1}, Lffa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 433
    :cond_2
    iget-object v0, p0, Lffa;->i:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 434
    const-string v0, "PhoneNumber"

    iget-object v1, p0, Lffa;->i:Ljava/lang/String;

    invoke-direct {p0, v1}, Lffa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 438
    :cond_3
    iget-object v0, p0, Lffa;->j:Lffb;

    if-eqz v0, :cond_c

    .line 440
    iget-object v0, p0, Lffa;->j:Lffb;

    iget v0, v0, Lffb;->p:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lffa;->j:Lffb;

    iget-boolean v0, v0, Lffb;->b:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lffa;->j:Lffb;

    iget-boolean v0, v0, Lffb;->d:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lffa;->j:Lffb;

    iget-boolean v0, v0, Lffb;->m:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lffa;->j:Lffb;

    iget-boolean v0, v0, Lffb;->o:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lffa;->j:Lffb;

    iget-boolean v0, v0, Lffb;->f:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lffa;->j:Lffb;

    iget-boolean v0, v0, Lffb;->h:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lffa;->j:Lffb;

    iget-boolean v0, v0, Lffb;->j:Z

    if-nez v0, :cond_4

    .line 448
    iget-object v0, p0, Lffa;->j:Lffb;

    const/4 v1, 0x2

    iput v1, v0, Lffb;->p:I

    .line 450
    :cond_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 451
    iget-object v1, p0, Lffa;->j:Lffb;

    iget-boolean v1, v1, Lffb;->b:Z

    if-eqz v1, :cond_5

    .line 452
    const-string v1, "Longitude"

    iget-object v3, p0, Lffa;->j:Lffb;

    iget-wide v4, v3, Lffb;->a:D

    invoke-static {v4, v5}, Lfgf;->a(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 454
    :cond_5
    iget-object v1, p0, Lffa;->j:Lffb;

    iget-boolean v1, v1, Lffb;->d:Z

    if-eqz v1, :cond_6

    .line 455
    const-string v1, "Latitude"

    iget-object v3, p0, Lffa;->j:Lffb;

    iget-wide v4, v3, Lffb;->c:D

    invoke-static {v4, v5}, Lfgf;->a(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 457
    :cond_6
    iget-object v1, p0, Lffa;->j:Lffb;

    iget-boolean v1, v1, Lffb;->f:Z

    if-eqz v1, :cond_7

    .line 458
    iget-object v1, p0, Lffa;->j:Lffb;

    iget-wide v4, v1, Lffb;->e:D

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    .line 459
    const-string v3, "HorizontalAccuracy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 461
    :cond_7
    iget-object v1, p0, Lffa;->j:Lffb;

    iget-boolean v1, v1, Lffb;->h:Z

    if-eqz v1, :cond_8

    .line 462
    iget-object v1, p0, Lffa;->j:Lffb;

    iget-wide v4, v1, Lffb;->g:D

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    .line 463
    const-string v3, "Altitude"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 465
    :cond_8
    iget-object v1, p0, Lffa;->j:Lffb;

    iget-boolean v1, v1, Lffb;->j:Z

    if-eqz v1, :cond_9

    .line 466
    iget-object v1, p0, Lffa;->j:Lffb;

    iget-wide v4, v1, Lffb;->i:D

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    .line 467
    const-string v3, "AltitudeAccuracy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 470
    :cond_9
    iget-object v1, p0, Lffa;->j:Lffb;

    iget-wide v4, v1, Lffb;->k:J

    .line 471
    const-string v1, "Timestamp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lffa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 472
    iget-object v1, p0, Lffa;->j:Lffb;

    iget-boolean v1, v1, Lffb;->m:Z

    if-eqz v1, :cond_a

    .line 473
    const-string v1, "Heading"

    iget-object v3, p0, Lffa;->j:Lffb;

    iget-wide v4, v3, Lffb;->l:D

    invoke-static {v4, v5}, Lfgf;->a(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 475
    :cond_a
    iget-object v1, p0, Lffa;->j:Lffb;

    iget-boolean v1, v1, Lffb;->o:Z

    if-eqz v1, :cond_b

    .line 476
    iget-object v1, p0, Lffa;->j:Lffb;

    iget-wide v4, v1, Lffb;->n:D

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    .line 477
    const-string v3, "Speed"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 479
    :cond_b
    const-string v1, "Status"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lffa;->j:Lffb;

    iget v4, v4, Lffb;->p:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 480
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 481
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 482
    const-string v0, "GeoLocationInfo"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 485
    :cond_c
    iget-object v0, p0, Lffa;->k:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 486
    const-string v0, "DeviceModel"

    iget-object v1, p0, Lffa;->k:Ljava/lang/String;

    invoke-direct {p0, v1}, Lffa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 488
    :cond_d
    iget v0, p0, Lffa;->C:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    iget v0, p0, Lffa;->C:I

    if-ne v0, v7, :cond_f

    .line 490
    :cond_e
    const-string v0, "MultitaskingSupported"

    iget-boolean v1, p0, Lffa;->l:Z

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 492
    :cond_f
    iget-object v0, p0, Lffa;->m:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 493
    const-string v0, "DeviceName"

    iget-object v1, p0, Lffa;->m:Ljava/lang/String;

    invoke-direct {p0, v1}, Lffa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 495
    :cond_10
    iget-object v0, p0, Lffa;->n:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 496
    const-string v0, "DeviceSystemName"

    iget-object v1, p0, Lffa;->n:Ljava/lang/String;

    invoke-direct {p0, v1}, Lffa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 498
    :cond_11
    iget-object v0, p0, Lffa;->o:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 499
    const-string v0, "DeviceSystemVersion"

    iget-object v1, p0, Lffa;->o:Ljava/lang/String;

    invoke-direct {p0, v1}, Lffa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 501
    :cond_12
    iget-object v0, p0, Lffa;->p:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 502
    const-string v0, "Languages"

    iget-object v1, p0, Lffa;->p:Ljava/lang/String;

    invoke-direct {p0, v1}, Lffa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 504
    :cond_13
    iget-object v0, p0, Lffa;->q:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 505
    const-string v0, "WiFiMacAddress"

    iget-object v1, p0, Lffa;->q:Ljava/lang/String;

    invoke-direct {p0, v1}, Lffa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 509
    :cond_14
    iget-object v0, p0, Lffa;->r:Lffc;

    if-eqz v0, :cond_18

    .line 510
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 511
    iget-object v1, p0, Lffa;->r:Lffc;

    iget-object v1, v1, Lffc;->a:Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 512
    const-string v1, "StationName"

    iget-object v3, p0, Lffa;->r:Lffc;

    iget-object v3, v3, Lffc;->a:Ljava/lang/String;

    invoke-direct {p0, v3}, Lffa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 514
    :cond_15
    iget-object v1, p0, Lffa;->r:Lffc;

    iget-object v1, v1, Lffc;->b:Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 515
    const-string v1, "BBSID"

    iget-object v3, p0, Lffa;->r:Lffc;

    iget-object v3, v3, Lffc;->b:Ljava/lang/String;

    invoke-direct {p0, v3}, Lffa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 517
    :cond_16
    const-string v1, "SignalStrength"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lffa;->r:Lffc;

    iget v4, v4, Lffc;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    const-string v1, "Channel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lffa;->r:Lffc;

    iget-object v4, v4, Lffc;->d:Ljava/lang/String;

    invoke-direct {p0, v4}, Lffa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 519
    iget-object v1, p0, Lffa;->r:Lffc;

    iget-object v1, v1, Lffc;->e:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 520
    const-string v1, "SSID"

    iget-object v3, p0, Lffa;->r:Lffc;

    iget-object v3, v3, Lffc;->e:Ljava/lang/String;

    invoke-direct {p0, v3}, Lffa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 522
    :cond_17
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_18

    .line 523
    const-string v1, "WiFiNetworksData"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 527
    :cond_18
    iget-object v0, p0, Lffa;->s:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 528
    const-string v0, "CellTowerId"

    iget-object v1, p0, Lffa;->s:Ljava/lang/String;

    invoke-direct {p0, v1}, Lffa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 530
    :cond_19
    iget-object v0, p0, Lffa;->t:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 531
    const-string v0, "LocationAreaCode"

    iget-object v1, p0, Lffa;->t:Ljava/lang/String;

    invoke-direct {p0, v1}, Lffa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 533
    :cond_1a
    iget-object v0, p0, Lffa;->u:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 534
    const-string v0, "ScreenSize"

    iget-object v1, p0, Lffa;->u:Ljava/lang/String;

    invoke-direct {p0, v1}, Lffa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 536
    :cond_1b
    iget-object v0, p0, Lffa;->v:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 537
    const-string v0, "RSA_ApplicationKey"

    iget-object v1, p0, Lffa;->v:Ljava/lang/String;

    invoke-direct {p0, v1}, Lffa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 539
    :cond_1c
    iget-object v0, p0, Lffa;->x:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 540
    const-string v0, "MCC"

    iget-object v1, p0, Lffa;->x:Ljava/lang/String;

    invoke-direct {p0, v1}, Lffa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 542
    :cond_1d
    iget-object v0, p0, Lffa;->y:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 543
    const-string v0, "MNC"

    iget-object v1, p0, Lffa;->y:Ljava/lang/String;

    invoke-direct {p0, v1}, Lffa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 545
    :cond_1e
    iget-object v0, p0, Lffa;->B:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 546
    const-string v0, "OS_ID"

    iget-object v1, p0, Lffa;->B:Ljava/lang/String;

    invoke-direct {p0, v1}, Lffa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 548
    :cond_1f
    const-string v0, "SDK_VERSION"

    const-string v1, "3.6.0"

    invoke-direct {p0, v1}, Lffa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 549
    const-string v0, "Compromised"

    iget v1, p0, Lffa;->z:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 550
    const-string v0, "Emulator"

    iget v1, p0, Lffa;->A:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 552
    if-eqz p2, :cond_21

    .line 553
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 554
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 555
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lffa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 563
    :catch_0
    move-exception v0

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONStringFailure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 557
    :cond_20
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 562
    :cond_21
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lffa;->j:Lffb;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lffa;->j:Lffb;

    invoke-virtual {v0}, Lffb;->a()V

    .line 210
    :cond_0
    iget-object v0, p0, Lffa;->r:Lffc;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lffa;->r:Lffc;

    invoke-virtual {v0}, Lffc;->b()V

    .line 213
    :cond_1
    return-void
.end method
