.class final Lbbh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method static a()Lbbf;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lbbf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbbf;-><init>(Lbbg;)V

    return-object v0
.end method

.method static a(Lorg/json/JSONObject;Lawr;)Lbbf;
    .locals 3

    .prologue
    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    sget-object v1, Lbak;->a:Lbak;

    .line 38
    invoke-static {p0, v0, p1, v1}, Lbbw;->a(Lorg/json/JSONObject;FLawr;Lbbv;)Lbbw;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lbbw;->a()Lbbx;

    move-result-object v0

    .line 40
    new-instance v1, Lbbf;

    iget-object v2, v0, Lbbx;->a:Ljava/util/List;

    iget-object v0, v0, Lbbx;->b:Ljava/lang/Object;

    check-cast v0, Lbaj;

    invoke-direct {v1, v2, v0}, Lbbf;-><init>(Ljava/util/List;Lbaj;)V

    return-object v1
.end method
