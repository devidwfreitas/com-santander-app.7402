.class public final Lbpz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/UUID;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/net/Uri;

.field private f:Z

.field private g:Z


# direct methods
.method private constructor <init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p1, p0, Lbpz;->a:Ljava/util/UUID;

    .line 240
    iput-object p2, p0, Lbpz;->d:Landroid/graphics/Bitmap;

    .line 241
    iput-object p3, p0, Lbpz;->e:Landroid/net/Uri;

    .line 243
    if-eqz p3, :cond_4

    .line 244
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 245
    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 246
    iput-boolean v0, p0, Lbpz;->f:Z

    .line 247
    invoke-virtual {p3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 248
    invoke-virtual {p3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "media"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    iput-boolean v0, p0, Lbpz;->g:Z

    .line 260
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lbpz;->g:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_2
    iput-object v0, p0, Lbpz;->c:Ljava/lang/String;

    .line 261
    iget-boolean v0, p0, Lbpz;->g:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lbpz;->e:Landroid/net/Uri;

    .line 262
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    :goto_3
    iput-object v0, p0, Lbpz;->b:Ljava/lang/String;

    .line 267
    return-void

    .line 248
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 249
    :cond_2
    const-string v2, "file"

    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 250
    iput-boolean v0, p0, Lbpz;->g:Z

    goto :goto_1

    .line 251
    :cond_3
    invoke-static {p3}, Lbqq;->b(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lbhp;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported scheme for media Uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_4
    if-eqz p2, :cond_5

    .line 255
    iput-boolean v0, p0, Lbpz;->g:Z

    goto :goto_1

    .line 257
    :cond_5
    new-instance v0, Lbhp;

    const-string v1, "Cannot share media without a bitmap or Uri set"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 264
    :cond_7
    invoke-static {}, Lbhv;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbpz;->c:Ljava/lang/String;

    .line 263
    invoke-static {v0, p1, v1}, Lbhm;->a(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method synthetic constructor <init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;Lbpy;)V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0, p1, p2, p3}, Lbpz;-><init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic a(Lbpz;)Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lbpz;->g:Z

    return v0
.end method

.method static synthetic b(Lbpz;)Ljava/util/UUID;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lbpz;->a:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic c(Lbpz;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lbpz;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lbpz;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lbpz;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic e(Lbpz;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lbpz;->e:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic f(Lbpz;)Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lbpz;->f:Z

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lbpz;->b:Ljava/lang/String;

    return-object v0
.end method
