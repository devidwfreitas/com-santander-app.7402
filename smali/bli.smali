.class Lbli;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L

.field private static final b:Ljava/lang/String;

.field private static final c:J = -0x1L

.field private static final d:J = 0x3e8L

.field private static final e:J = 0xea60L

.field private static final f:J = 0x493e0L

.field private static final g:[J


# instance fields
.field private h:Z

.field private i:Z

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:I

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lbli;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbli;->b:Ljava/lang/String;

    .line 45
    const/16 v0, 0x13

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lbli;->g:[J

    return-void

    :array_0
    .array-data 8
        0x493e0
        0xdbba0
        0x1b7740
        0x36ee80
        0x1499700
        0x2932e00
        0x5265c00
        0xa4cb800
        0xf731400
        0x240c8400
        0x48190800
        0x6c258c00
        0x90321000L
        0x134fd9000L
        0x1cf7c5800L
        0x269fb2000L
        0x30479e800L
        0x39ef8b000L
        0x757b12c00L
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    invoke-direct {p0}, Lbli;->a()V

    .line 174
    return-void
.end method

.method private constructor <init>(JJJI)V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-direct {p0}, Lbli;->a()V

    .line 126
    iput-wide p1, p0, Lbli;->k:J

    .line 127
    iput-wide p3, p0, Lbli;->l:J

    .line 128
    iput-wide p5, p0, Lbli;->m:J

    .line 129
    iput p7, p0, Lbli;->n:I

    .line 130
    return-void
.end method

.method synthetic constructor <init>(JJJILblj;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct/range {p0 .. p7}, Lbli;-><init>(JJJI)V

    return-void
.end method

.method private constructor <init>(JJJILjava/lang/String;)V
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    invoke-direct {p0}, Lbli;->a()V

    .line 187
    iput-wide p1, p0, Lbli;->k:J

    .line 188
    iput-wide p3, p0, Lbli;->l:J

    .line 189
    iput-wide p5, p0, Lbli;->m:J

    .line 190
    iput p7, p0, Lbli;->n:I

    .line 191
    iput-object p8, p0, Lbli;->o:Ljava/lang/String;

    .line 192
    return-void
.end method

.method synthetic constructor <init>(JJJILjava/lang/String;Lblj;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct/range {p0 .. p8}, Lbli;-><init>(JJJILjava/lang/String;)V

    return-void
.end method

.method private static a(J)I
    .locals 4

    .prologue
    .line 299
    const/4 v0, 0x0

    .line 301
    :goto_0
    sget-object v1, Lbli;->g:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lbli;->g:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p0

    if-gez v1, :cond_0

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_0
    return v0
.end method

.method private a()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 312
    iput-boolean v0, p0, Lbli;->i:Z

    .line 313
    iput-wide v2, p0, Lbli;->k:J

    .line 314
    iput-wide v2, p0, Lbli;->l:J

    .line 315
    iput v0, p0, Lbli;->n:I

    .line 316
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbli;->m:J

    .line 317
    return-void
.end method

.method private b(Lbla;J)V
    .locals 8

    .prologue
    .line 278
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 279
    const-string v1, "fb_mobile_app_interruptions"

    iget v2, p0, Lbli;->n:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 282
    const-string v1, "fb_mobile_time_between_sessions"

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "session_quanta_%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 287
    invoke-static {p2, p3}, Lbli;->a(J)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 284
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 282
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v1, "fb_mobile_launch_source"

    iget-object v2, p0, Lbli;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v1, "fb_mobile_deactivate_app"

    iget-wide v2, p0, Lbli;->m:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-double v2, v2

    invoke-virtual {p1, v1, v2, v3, v0}, Lbla;->a(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 295
    invoke-direct {p0}, Lbli;->a()V

    .line 296
    return-void
.end method

.method private b()Z
    .locals 4

    .prologue
    .line 320
    iget-wide v0, p0, Lbli;->l:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 326
    iget-boolean v0, p0, Lbli;->h:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 327
    :goto_0
    iput-boolean v1, p0, Lbli;->h:Z

    .line 328
    return v0

    .line 326
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 10

    .prologue
    .line 195
    new-instance v1, Lbll;

    iget-wide v2, p0, Lbli;->k:J

    iget-wide v4, p0, Lbli;->l:J

    iget-wide v6, p0, Lbli;->m:J

    iget v8, p0, Lbli;->n:I

    iget-object v9, p0, Lbli;->o:Ljava/lang/String;

    invoke-direct/range {v1 .. v9}, Lbll;-><init>(JJJILjava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method a(Lbla;J)V
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 205
    iget-boolean v2, p0, Lbli;->i:Z

    if-nez v2, :cond_0

    .line 206
    sget-object v0, Lbjb;->APP_EVENTS:Lbjb;

    sget-object v1, Lbli;->b:Ljava/lang/String;

    const-string v2, "Suspend for inactive app"

    invoke-static {v0, v1, v2}, Lbpu;->a(Lbjb;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-wide v2, p0, Lbli;->k:J

    sub-long v2, p2, v2

    .line 212
    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    .line 213
    sget-object v2, Lbjb;->APP_EVENTS:Lbjb;

    sget-object v3, Lbli;->b:Ljava/lang/String;

    const-string v4, "Clock skew detected"

    invoke-static {v2, v3, v4}, Lbpu;->a(Lbjb;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_1
    iget-wide v2, p0, Lbli;->m:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lbli;->m:J

    .line 217
    iput-wide p2, p0, Lbli;->l:J

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbli;->i:Z

    goto :goto_0

    :cond_1
    move-wide v0, v2

    goto :goto_1
.end method

.method a(Lbla;JLjava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 222
    .line 228
    invoke-direct {p0}, Lbli;->c()Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Lbli;->j:J

    sub-long v2, p2, v2

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 230
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 231
    const-string v3, "fb_mobile_launch_source"

    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v3, "fb_mobile_activate_app"

    invoke-virtual {p1, v3, v2}, Lbla;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 235
    iput-wide p2, p0, Lbli;->j:J

    .line 236
    invoke-static {}, Lbla;->a()Lblf;

    move-result-object v2

    sget-object v3, Lblf;->EXPLICIT_ONLY:Lblf;

    if-eq v2, v3, :cond_1

    .line 237
    invoke-virtual {p1}, Lbla;->b()V

    .line 243
    :cond_1
    iget-boolean v2, p0, Lbli;->i:Z

    if-eqz v2, :cond_2

    .line 244
    sget-object v0, Lbjb;->APP_EVENTS:Lbjb;

    sget-object v1, Lbli;->b:Ljava/lang/String;

    const-string v2, "Resume for active app"

    invoke-static {v0, v1, v2}, Lbpu;->a(Lbjb;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :goto_0
    return-void

    .line 248
    :cond_2
    invoke-direct {p0}, Lbli;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-wide v2, p0, Lbli;->l:J

    sub-long v2, p2, v2

    .line 249
    :goto_1
    cmp-long v4, v2, v0

    if-gez v4, :cond_7

    .line 250
    sget-object v2, Lbjb;->APP_EVENTS:Lbjb;

    sget-object v3, Lbli;->b:Ljava/lang/String;

    const-string v4, "Clock skew detected"

    invoke-static {v2, v3, v4}, Lbpu;->a(Lbjb;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :goto_2
    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    if-lez v2, :cond_6

    .line 257
    invoke-direct {p0, p1, v0, v1}, Lbli;->b(Lbla;J)V

    .line 267
    :cond_3
    :goto_3
    iget v0, p0, Lbli;->n:I

    if-nez v0, :cond_4

    .line 268
    iput-object p4, p0, Lbli;->o:Ljava/lang/String;

    .line 271
    :cond_4
    iput-wide p2, p0, Lbli;->k:J

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbli;->i:Z

    goto :goto_0

    :cond_5
    move-wide v2, v0

    .line 248
    goto :goto_1

    .line 261
    :cond_6
    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 262
    iget v0, p0, Lbli;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbli;->n:I

    goto :goto_3

    :cond_7
    move-wide v0, v2

    goto :goto_2
.end method
