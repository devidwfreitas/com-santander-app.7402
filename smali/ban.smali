.class public final Lban;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lawr;)Lbal;
    .locals 4

    .prologue
    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    sget-object v1, Lazw;->a:Lazw;

    .line 36
    invoke-static {p0, v0, p1, v1}, Lbbw;->a(Lorg/json/JSONObject;FLawr;Lbbv;)Lbbw;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lbbw;->a()Lbbx;

    move-result-object v0

    .line 38
    new-instance v1, Lbal;

    iget-object v2, v0, Lbbx;->a:Ljava/util/List;

    iget-object v0, v0, Lbbx;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lbal;-><init>(Ljava/util/List;Ljava/lang/Integer;Lbam;)V

    return-object v1
.end method
