.class public Lavq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static o:Lcom/adjust/sdk/ILogger;


# instance fields
.field public a:Ljava/util/Map;
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

.field public b:Lcom/adjust/sdk/AdjustAttribution;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:J

.field public h:J

.field public i:J

.field private j:Lcom/adjust/sdk/AdjustConfig;

.field private k:Lavo;

.field private l:Lavr;

.field private m:Lcom/adjust/sdk/SessionParameters;

.field private n:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    sput-object v0, Lavq;->o:Lcom/adjust/sdk/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/adjust/sdk/AdjustConfig;Lavo;Lcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/SessionParameters;J)V
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide v0, p0, Lavq;->g:J

    .line 43
    iput-wide v0, p0, Lavq;->h:J

    .line 44
    iput-wide v0, p0, Lavq;->i:J

    .line 78
    iput-object p1, p0, Lavq;->j:Lcom/adjust/sdk/AdjustConfig;

    .line 79
    iput-object p2, p0, Lavq;->k:Lavo;

    .line 80
    new-instance v0, Lavr;

    invoke-direct {v0, p0, p3}, Lavr;-><init>(Lavq;Lcom/adjust/sdk/ActivityState;)V

    iput-object v0, p0, Lavq;->l:Lavr;

    .line 81
    iput-object p4, p0, Lavq;->m:Lcom/adjust/sdk/SessionParameters;

    .line 82
    iput-wide p5, p0, Lavq;->n:J

    .line 83
    return-void
.end method

.method private a(Lcom/adjust/sdk/ActivityKind;)Lcom/adjust/sdk/ActivityPackage;
    .locals 2

    .prologue
    .line 174
    new-instance v0, Lcom/adjust/sdk/ActivityPackage;

    invoke-direct {v0, p1}, Lcom/adjust/sdk/ActivityPackage;-><init>(Lcom/adjust/sdk/ActivityKind;)V

    .line 175
    iget-object v1, p0, Lavq;->k:Lavo;

    iget-object v1, v1, Lavo;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/ActivityPackage;->setClientSdk(Ljava/lang/String;)V

    .line 176
    return-object v0
.end method

.method private a(Lcom/adjust/sdk/AdjustEvent;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 330
    iget-object v0, p1, Lcom/adjust/sdk/AdjustEvent;->revenue:Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 331
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "\'%s\'"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/adjust/sdk/AdjustEvent;->eventToken:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 333
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "(%.5f %s, \'%s\')"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/adjust/sdk/AdjustEvent;->revenue:Ljava/lang/Double;

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/adjust/sdk/AdjustEvent;->currency:Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/adjust/sdk/AdjustEvent;->eventToken:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lavq;->b(Ljava/util/Map;)V

    .line 222
    const-string v0, "fb_id"

    iget-object v1, p0, Lavq;->k:Lavo;

    iget-object v1, v1, Lavo;->f:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v0, "package_name"

    iget-object v1, p0, Lavq;->k:Lavo;

    iget-object v1, v1, Lavo;->h:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v0, "app_version"

    iget-object v1, p0, Lavq;->k:Lavo;

    iget-object v1, v1, Lavo;->i:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v0, "device_type"

    iget-object v1, p0, Lavq;->k:Lavo;

    iget-object v1, v1, Lavo;->j:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v0, "device_name"

    iget-object v1, p0, Lavq;->k:Lavo;

    iget-object v1, v1, Lavo;->k:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v0, "device_manufacturer"

    iget-object v1, p0, Lavq;->k:Lavo;

    iget-object v1, v1, Lavo;->l:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v0, "os_name"

    iget-object v1, p0, Lavq;->k:Lavo;

    iget-object v1, v1, Lavo;->m:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v0, "os_version"

    iget-object v1, p0, Lavq;->k:Lavo;

    iget-object v1, v1, Lavo;->n:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v0, "api_level"

    iget-object v1, p0, Lavq;->k:Lavo;

    iget-object v1, v1, Lavo;->o:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v0, "language"

    iget-object v1, p0, Lavq;->k:Lavo;

    iget-object v1, v1, Lavo;->p:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v0, "country"

    iget-object v1, p0, Lavq;->k:Lavo;

    iget-object v1, v1, Lavo;->q:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v0, "screen_size"

    iget-object v1, p0, Lavq;->k:Lavo;

    iget-object v1, v1, Lavo;->r:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v0, "screen_format"

    iget-object v1, p0, Lavq;->k:Lavo;

    iget-object v1, v1, Lavo;->s:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v0, "screen_density"

    iget-object v1, p0, Lavq;->k:Lavo;

    iget-object v1, v1, Lavo;->t:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v0, "display_width"

    iget-object v1, p0, Lavq;->k:Lavo;

    iget-object v1, v1, Lavo;->u:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v0, "display_height"

    iget-object v1, p0, Lavq;->k:Lavo;

    iget-object v1, v1, Lavo;->v:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v0, "hardware_name"

    iget-object v1, p0, Lavq;->k:Lavo;

    iget-object v1, v1, Lavo;->w:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v0, "cpu_type"

    iget-object v1, p0, Lavq;->k:Lavo;

    iget-object v1, v1, Lavo;->x:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v0, "os_build"

    iget-object v1, p0, Lavq;->k:Lavo;

    iget-object v1, v1, Lavo;->y:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v0, "vm_isa"

    iget-object v1, p0, Lavq;->k:Lavo;

    iget-object v1, v1, Lavo;->z:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v0, "mcc"

    iget-object v1, p0, Lavq;->j:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/adjust/sdk/Util;->getMcc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v0, "mnc"

    iget-object v1, p0, Lavq;->j:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/adjust/sdk/Util;->getMnc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v0, "connectivity_type"

    iget-object v1, p0, Lavq;->j:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/adjust/sdk/Util;->getConnectivityType(Landroid/content/Context;)I

    move-result v1

    int-to-long v2, v1

    invoke-static {p1, v0, v2, v3}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;J)V

    .line 245
    const-string v0, "network_type"

    iget-object v1, p0, Lavq;->j:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/adjust/sdk/Util;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    int-to-long v2, v1

    invoke-static {p1, v0, v2, v3}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;J)V

    .line 246
    invoke-direct {p0, p1}, Lavq;->h(Ljava/util/Map;)V

    .line 247
    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 346
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-static {p0, p1, v0}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 406
    if-nez p2, :cond_0

    .line 413
    :goto_0
    return-void

    .line 410
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 412
    :goto_1
    int-to-long v0, v0

    invoke-static {p0, p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;J)V

    goto :goto_0

    .line 410
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Double;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ")V"
        }
    .end annotation

    .prologue
    .line 416
    if-nez p2, :cond_0

    .line 421
    :goto_0
    return-void

    .line 418
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.5f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-static {p0, p1, v0}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 338
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    :goto_0
    return-void

    .line 342
    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 373
    if-nez p2, :cond_0

    .line 379
    :goto_0
    return-void

    .line 377
    :cond_0
    sget-object v0, Lcom/adjust/sdk/Util;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-static {p0, p1, v0}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 391
    if-nez p2, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 400
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-static {p0, p1, v0}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 197
    invoke-direct {p0, v0}, Lavq;->a(Ljava/util/Map;)V

    .line 198
    invoke-direct {p0, v0}, Lavq;->c(Ljava/util/Map;)V

    .line 199
    invoke-direct {p0, v0}, Lavq;->d(Ljava/util/Map;)V

    .line 200
    invoke-direct {p0, v0}, Lavq;->e(Ljava/util/Map;)V

    .line 203
    invoke-direct {p0, v0}, Lavq;->g(Ljava/util/Map;)V

    .line 205
    return-object v0
.end method

.method private b(Z)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    invoke-direct {p0}, Lavq;->b()Ljava/util/Map;

    move-result-object v0

    .line 181
    const-string v1, "last_interval"

    iget-object v2, p0, Lavq;->l:Lavr;

    iget-wide v2, v2, Lavr;->a:J

    invoke-static {v0, v1, v2, v3}, Lavq;->d(Ljava/util/Map;Ljava/lang/String;J)V

    .line 182
    const-string v1, "default_tracker"

    iget-object v2, p0, Lavq;->j:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, v2, Lcom/adjust/sdk/AdjustConfig;->defaultTracker:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v1, "installed_at"

    iget-object v2, p0, Lavq;->k:Lavo;

    iget-object v2, v2, Lavo;->A:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v1, "updated_at"

    iget-object v2, p0, Lavq;->k:Lavo;

    iget-object v2, v2, Lavo;->B:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    if-nez p1, :cond_0

    .line 187
    const-string v1, "callback_params"

    iget-object v2, p0, Lavq;->m:Lcom/adjust/sdk/SessionParameters;

    iget-object v2, v2, Lcom/adjust/sdk/SessionParameters;->callbackParameters:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 188
    const-string v1, "partner_params"

    iget-object v2, p0, Lavq;->m:Lcom/adjust/sdk/SessionParameters;

    iget-object v2, v2, Lcom/adjust/sdk/SessionParameters;->partnerParameters:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 191
    :cond_0
    return-object v0
.end method

.method private b(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lavq;->k:Lavo;

    iget-object v1, p0, Lavq;->j:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lavo;->a(Landroid/content/Context;)V

    .line 252
    const-string v0, "tracking_enabled"

    iget-object v1, p0, Lavq;->k:Lavo;

    iget-object v1, v1, Lavo;->b:Ljava/lang/Boolean;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 253
    const-string v0, "gps_adid"

    iget-object v1, p0, Lavq;->k:Lavo;

    iget-object v1, v1, Lavo;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lavq;->k:Lavo;

    iget-object v0, v0, Lavo;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 256
    const-string v0, "mac_sha1"

    iget-object v1, p0, Lavq;->k:Lavo;

    iget-object v1, v1, Lavo;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v0, "mac_md5"

    iget-object v1, p0, Lavq;->k:Lavo;

    iget-object v1, v1, Lavo;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v0, "android_id"

    iget-object v1, p0, Lavq;->k:Lavo;

    iget-object v1, v1, Lavo;->e:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_0
    return-void
.end method

.method public static b(Ljava/util/Map;Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 355
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 361
    :goto_0
    return-void

    .line 359
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 360
    invoke-static {p0, p1, v0}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Date;)V

    goto :goto_0
.end method

.method private c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 211
    invoke-direct {p0, v0}, Lavq;->b(Ljava/util/Map;)V

    .line 212
    invoke-direct {p0, v0}, Lavq;->c(Ljava/util/Map;)V

    .line 213
    invoke-direct {p0, v0}, Lavq;->e(Ljava/util/Map;)V

    .line 215
    invoke-direct {p0, v0}, Lavq;->g(Ljava/util/Map;)V

    .line 217
    return-object v0
.end method

.method private c(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 263
    const-string v0, "app_token"

    iget-object v1, p0, Lavq;->j:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->appToken:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v0, "environment"

    iget-object v1, p0, Lavq;->j:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->environment:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v0, "device_known"

    iget-object v1, p0, Lavq;->j:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->deviceKnown:Ljava/lang/Boolean;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 267
    const-string v0, "event_buffering_enabled"

    iget-object v1, p0, Lavq;->j:Lcom/adjust/sdk/AdjustConfig;

    iget-boolean v1, v1, Lcom/adjust/sdk/AdjustConfig;->eventBufferingEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 268
    const-string v0, "push_token"

    iget-object v1, p0, Lavq;->l:Lavr;

    iget-object v1, v1, Lavr;->h:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lavq;->j:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 270
    invoke-static {v0}, Lcom/adjust/sdk/Util;->getFireAdvertisingId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 271
    const-string v2, "fire_adid"

    invoke-static {p1, v2, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {v0}, Lcom/adjust/sdk/Util;->getFireTrackingEnabled(Landroid/content/ContentResolver;)Ljava/lang/Boolean;

    move-result-object v0

    .line 273
    const-string v1, "fire_tracking_enabled"

    invoke-static {p1, v1, v0}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 275
    const-string v0, "secret_id"

    iget-object v1, p0, Lavq;->j:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->secretId:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v0, "app_secret"

    iget-object v1, p0, Lavq;->j:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->appSecret:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lavq;->j:Lcom/adjust/sdk/AdjustConfig;

    iget-boolean v0, v0, Lcom/adjust/sdk/AdjustConfig;->readMobileEquipmentIdentity:Z

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lavq;->j:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 280
    const-string v1, "device_ids"

    invoke-static {v0}, Lcom/adjust/sdk/Util;->getTelephonyIds(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v1, "imeis"

    invoke-static {v0}, Lcom/adjust/sdk/Util;->getIMEIs(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v1, "meids"

    invoke-static {v0}, Lcom/adjust/sdk/Util;->getMEIDs(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_0
    return-void
.end method

.method public static c(Ljava/util/Map;Ljava/lang/String;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 364
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 368
    :cond_0
    new-instance v0, Ljava/util/Date;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 369
    invoke-static {p0, p1, v0}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Date;)V

    goto :goto_0
.end method

.method private d(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    const-string v0, "android_uuid"

    iget-object v1, p0, Lavq;->l:Lavr;

    iget-object v1, v1, Lavr;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v0, "session_count"

    iget-object v1, p0, Lavq;->l:Lavr;

    iget v1, v1, Lavr;->d:I

    int-to-long v2, v1

    invoke-static {p1, v0, v2, v3}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;J)V

    .line 289
    const-string v0, "subsession_count"

    iget-object v1, p0, Lavq;->l:Lavr;

    iget v1, v1, Lavr;->e:I

    int-to-long v2, v1

    invoke-static {p1, v0, v2, v3}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;J)V

    .line 290
    const-string v0, "session_length"

    iget-object v1, p0, Lavq;->l:Lavr;

    iget-wide v2, v1, Lavr;->f:J

    invoke-static {p1, v0, v2, v3}, Lavq;->d(Ljava/util/Map;Ljava/lang/String;J)V

    .line 291
    const-string v0, "time_spent"

    iget-object v1, p0, Lavq;->l:Lavr;

    iget-wide v2, v1, Lavr;->g:J

    invoke-static {p1, v0, v2, v3}, Lavq;->d(Ljava/util/Map;Ljava/lang/String;J)V

    .line 292
    return-void
.end method

.method public static d(Ljava/util/Map;Ljava/lang/String;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 382
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 388
    :goto_0
    return-void

    .line 386
    :cond_0
    const-wide/16 v0, 0x1f4

    add-long/2addr v0, p2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 387
    invoke-static {p0, p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private e(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 295
    const-string v0, "created_at"

    iget-wide v2, p0, Lavq;->n:J

    invoke-static {p1, v0, v2, v3}, Lavq;->b(Ljava/util/Map;Ljava/lang/String;J)V

    .line 296
    const-string v0, "attribution_deeplink"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 297
    const-string v0, "needs_response_details"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 298
    return-void
.end method

.method private f(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lavq;->b:Lcom/adjust/sdk/AdjustAttribution;

    if-nez v0, :cond_0

    .line 308
    :goto_0
    return-void

    .line 304
    :cond_0
    const-string v0, "tracker"

    iget-object v1, p0, Lavq;->b:Lcom/adjust/sdk/AdjustAttribution;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustAttribution;->trackerName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v0, "campaign"

    iget-object v1, p0, Lavq;->b:Lcom/adjust/sdk/AdjustAttribution;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustAttribution;->campaign:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v0, "adgroup"

    iget-object v1, p0, Lavq;->b:Lcom/adjust/sdk/AdjustAttribution;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustAttribution;->adgroup:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v0, "creative"

    iget-object v1, p0, Lavq;->b:Lcom/adjust/sdk/AdjustAttribution;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustAttribution;->creative:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private g(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 311
    const-string v0, "mac_sha1"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mac_md5"

    .line 312
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android_id"

    .line 313
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gps_adid"

    .line 314
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    sget-object v0, Lavq;->o:Lcom/adjust/sdk/ILogger;

    const-string v1, "Missing device id\'s. Please check if Proguard is correctly set with Adjust SDK"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    :cond_0
    return-void
.end method

.method private h(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lavq;->k:Lavo;

    iget-object v0, v0, Lavo;->C:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 327
    :cond_0
    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Lavq;->k:Lavo;

    iget-object v0, v0, Lavo;->C:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 325
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/adjust/sdk/ActivityPackage;
    .locals 3

    .prologue
    .line 163
    invoke-direct {p0}, Lavq;->c()Ljava/util/Map;

    move-result-object v0

    .line 165
    sget-object v1, Lcom/adjust/sdk/ActivityKind;->ATTRIBUTION:Lcom/adjust/sdk/ActivityKind;

    invoke-direct {p0, v1}, Lavq;->a(Lcom/adjust/sdk/ActivityKind;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v1

    .line 166
    const-string v2, "attribution"

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setPath(Ljava/lang/String;)V

    .line 167
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setSuffix(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityPackage;->setParameters(Ljava/util/Map;)V

    .line 170
    return-object v1
.end method

.method public a(Lcom/adjust/sdk/AdjustEvent;Z)Lcom/adjust/sdk/ActivityPackage;
    .locals 5

    .prologue
    .line 99
    invoke-direct {p0}, Lavq;->b()Ljava/util/Map;

    move-result-object v0

    .line 100
    const-string v1, "event_count"

    iget-object v2, p0, Lavq;->l:Lavr;

    iget v2, v2, Lavr;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;J)V

    .line 101
    const-string v1, "event_token"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustEvent;->eventToken:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "revenue"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustEvent;->revenue:Ljava/lang/Double;

    invoke-static {v0, v1, v2}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Double;)V

    .line 103
    const-string v1, "currency"

    iget-object v2, p1, Lcom/adjust/sdk/AdjustEvent;->currency:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    if-nez p2, :cond_0

    .line 106
    const-string v1, "callback_params"

    iget-object v2, p0, Lavq;->m:Lcom/adjust/sdk/SessionParameters;

    iget-object v2, v2, Lcom/adjust/sdk/SessionParameters;->callbackParameters:Ljava/util/Map;

    iget-object v3, p1, Lcom/adjust/sdk/AdjustEvent;->callbackParameters:Ljava/util/Map;

    const-string v4, "Callback"

    .line 107
    invoke-static {v2, v3, v4}, Lcom/adjust/sdk/Util;->mergeParameters(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 106
    invoke-static {v0, v1, v2}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 108
    const-string v1, "partner_params"

    iget-object v2, p0, Lavq;->m:Lcom/adjust/sdk/SessionParameters;

    iget-object v2, v2, Lcom/adjust/sdk/SessionParameters;->partnerParameters:Ljava/util/Map;

    iget-object v3, p1, Lcom/adjust/sdk/AdjustEvent;->partnerParameters:Ljava/util/Map;

    const-string v4, "Partner"

    .line 109
    invoke-static {v2, v3, v4}, Lcom/adjust/sdk/Util;->mergeParameters(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 108
    invoke-static {v0, v1, v2}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 111
    :cond_0
    sget-object v1, Lcom/adjust/sdk/ActivityKind;->EVENT:Lcom/adjust/sdk/ActivityKind;

    invoke-direct {p0, v1}, Lavq;->a(Lcom/adjust/sdk/ActivityKind;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v1

    .line 112
    const-string v2, "/event"

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setPath(Ljava/lang/String;)V

    .line 113
    invoke-direct {p0, p1}, Lavq;->a(Lcom/adjust/sdk/AdjustEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setSuffix(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityPackage;->setParameters(Ljava/util/Map;)V

    .line 116
    if-eqz p2, :cond_1

    .line 117
    iget-object v0, p1, Lcom/adjust/sdk/AdjustEvent;->callbackParameters:Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityPackage;->setCallbackParameters(Ljava/util/Map;)V

    .line 118
    iget-object v0, p1, Lcom/adjust/sdk/AdjustEvent;->partnerParameters:Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityPackage;->setPartnerParameters(Ljava/util/Map;)V

    .line 121
    :cond_1
    return-object v1
.end method

.method public a(Ljava/lang/String;)Lcom/adjust/sdk/ActivityPackage;
    .locals 4

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lavq;->b(Z)Ljava/util/Map;

    move-result-object v0

    .line 127
    const-string v1, "source"

    invoke-static {v0, v1, p1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "click_time"

    iget-wide v2, p0, Lavq;->g:J

    invoke-static {v0, v1, v2, v3}, Lavq;->b(Ljava/util/Map;Ljava/lang/String;J)V

    .line 129
    const-string v1, "reftag"

    iget-object v2, p0, Lavq;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v1, "params"

    iget-object v2, p0, Lavq;->a:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 131
    const-string v1, "referrer"

    iget-object v2, p0, Lavq;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v1, "raw_referrer"

    iget-object v2, p0, Lavq;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v1, "deeplink"

    iget-object v2, p0, Lavq;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v1, "click_time"

    iget-wide v2, p0, Lavq;->h:J

    invoke-static {v0, v1, v2, v3}, Lavq;->c(Ljava/util/Map;Ljava/lang/String;J)V

    .line 135
    const-string v1, "install_begin_time"

    iget-wide v2, p0, Lavq;->i:J

    invoke-static {v0, v1, v2, v3}, Lavq;->c(Ljava/util/Map;Ljava/lang/String;J)V

    .line 136
    invoke-direct {p0, v0}, Lavq;->f(Ljava/util/Map;)V

    .line 138
    sget-object v1, Lcom/adjust/sdk/ActivityKind;->CLICK:Lcom/adjust/sdk/ActivityKind;

    invoke-direct {p0, v1}, Lavq;->a(Lcom/adjust/sdk/ActivityKind;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v1

    .line 139
    const-string v2, "/sdk_click"

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setPath(Ljava/lang/String;)V

    .line 140
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setSuffix(Ljava/lang/String;)V

    .line 141
    iget-wide v2, p0, Lavq;->g:J

    invoke-virtual {v1, v2, v3}, Lcom/adjust/sdk/ActivityPackage;->setClickTimeInMilliseconds(J)V

    .line 142
    iget-wide v2, p0, Lavq;->h:J

    invoke-virtual {v1, v2, v3}, Lcom/adjust/sdk/ActivityPackage;->setClickTimeInSeconds(J)V

    .line 143
    iget-wide v2, p0, Lavq;->i:J

    invoke-virtual {v1, v2, v3}, Lcom/adjust/sdk/ActivityPackage;->setInstallBeginTimeInSeconds(J)V

    .line 144
    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityPackage;->setParameters(Ljava/util/Map;)V

    .line 146
    return-object v1
.end method

.method public a(Z)Lcom/adjust/sdk/ActivityPackage;
    .locals 3

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lavq;->b(Z)Ljava/util/Map;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/adjust/sdk/ActivityKind;->SESSION:Lcom/adjust/sdk/ActivityKind;

    invoke-direct {p0, v1}, Lavq;->a(Lcom/adjust/sdk/ActivityKind;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v1

    .line 90
    const-string v2, "/session"

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setPath(Ljava/lang/String;)V

    .line 91
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setSuffix(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityPackage;->setParameters(Ljava/util/Map;)V

    .line 94
    return-object v1
.end method

.method public b(Ljava/lang/String;)Lcom/adjust/sdk/ActivityPackage;
    .locals 3

    .prologue
    .line 150
    invoke-direct {p0}, Lavq;->c()Ljava/util/Map;

    move-result-object v0

    .line 152
    const-string v1, "source"

    invoke-static {v0, v1, p1}, Lavq;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    sget-object v1, Lcom/adjust/sdk/ActivityKind;->INFO:Lcom/adjust/sdk/ActivityKind;

    invoke-direct {p0, v1}, Lavq;->a(Lcom/adjust/sdk/ActivityKind;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v1

    .line 155
    const-string v2, "/sdk_info"

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setPath(Ljava/lang/String;)V

    .line 156
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setSuffix(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityPackage;->setParameters(Ljava/util/Map;)V

    .line 159
    return-object v1
.end method
