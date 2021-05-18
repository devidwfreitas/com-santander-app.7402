.class Lbzr;
.super Lbzw;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 362
    new-instance v0, Lbzs;

    invoke-direct {v0}, Lbzs;-><init>()V

    sput-object v0, Lbzr;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lbzv;I)V
    .locals 0

    .prologue
    .line 367
    invoke-direct {p0, p1, p2}, Lbzw;-><init>(Lbzv;I)V

    .line 368
    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 372
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 373
    const-string v1, "upload_phase"

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v1, "file_size"

    iget-object v2, p0, Lbzr;->b:Lbzv;

    iget-wide v2, v2, Lbzv;->k:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 376
    return-object v0
.end method

.method protected a(I)V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lbzr;->b:Lbzv;

    invoke-static {v0, p1}, Lbzn;->a(Lbzv;I)V

    .line 408
    return-void
.end method

.method protected a(Lbhp;)V
    .locals 2

    .prologue
    .line 396
    const-string v0, "Error starting video upload"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lbzn;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    invoke-virtual {p0, p1}, Lbzr;->b(Lbhp;)V

    .line 398
    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 382
    iget-object v0, p0, Lbzr;->b:Lbzv;

    const-string v1, "upload_session_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbzv;->h:Ljava/lang/String;

    .line 383
    iget-object v0, p0, Lbzr;->b:Lbzv;

    const-string v1, "video_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbzv;->i:Ljava/lang/String;

    .line 384
    const-string v0, "start_offset"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    const-string v1, "end_offset"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 387
    iget-object v2, p0, Lbzr;->b:Lbzv;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lbzn;->a(Lbzv;Ljava/lang/String;Ljava/lang/String;I)V

    .line 392
    return-void
.end method

.method protected b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    sget-object v0, Lbzr;->a:Ljava/util/Set;

    return-object v0
.end method
