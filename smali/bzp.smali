.class Lbzp;
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
    .line 488
    new-instance v0, Lbzq;

    invoke-direct {v0}, Lbzq;-><init>()V

    sput-object v0, Lbzp;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lbzv;I)V
    .locals 0

    .prologue
    .line 493
    invoke-direct {p0, p1, p2}, Lbzw;-><init>(Lbzv;I)V

    .line 494
    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 498
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 499
    iget-object v1, p0, Lbzp;->b:Lbzv;

    iget-object v1, v1, Lbzv;->o:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 500
    iget-object v1, p0, Lbzp;->b:Lbzv;

    iget-object v1, v1, Lbzv;->o:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 502
    :cond_0
    const-string v1, "upload_phase"

    const-string v2, "finish"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v1, "upload_session_id"

    iget-object v2, p0, Lbzp;->b:Lbzv;

    iget-object v2, v2, Lbzv;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v1, "title"

    iget-object v2, p0, Lbzp;->b:Lbzv;

    iget-object v2, v2, Lbzv;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v1, "description"

    iget-object v2, p0, Lbzp;->b:Lbzv;

    iget-object v2, v2, Lbzv;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v1, "ref"

    iget-object v2, p0, Lbzp;->b:Lbzv;

    iget-object v2, v2, Lbzv;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    return-object v0
.end method

.method protected a(I)V
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lbzp;->b:Lbzv;

    invoke-static {v0, p1}, Lbzn;->b(Lbzv;I)V

    .line 535
    return-void
.end method

.method protected a(Lbhp;)V
    .locals 4

    .prologue
    .line 523
    const-string v0, "Video \'%s\' failed to finish uploading"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lbzp;->b:Lbzv;

    iget-object v3, v3, Lbzv;->i:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lbzn;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    invoke-virtual {p0, p1}, Lbzp;->b(Lbhp;)V

    .line 525
    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 514
    const-string v0, "success"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    const/4 v0, 0x0

    iget-object v1, p0, Lbzp;->b:Lbzv;

    iget-object v1, v1, Lbzv;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lbzp;->a(Lbhp;Ljava/lang/String;)V

    .line 519
    :goto_0
    return-void

    .line 517
    :cond_0
    new-instance v0, Lbhp;

    const-string v1, "Unexpected error in server response"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lbzp;->a(Lbhp;)V

    goto :goto_0
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
    .line 529
    sget-object v0, Lbzp;->a:Ljava/util/Set;

    return-object v0
.end method
