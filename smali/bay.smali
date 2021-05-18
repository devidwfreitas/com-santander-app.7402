.class public final Lbay;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method static a()Lbaw;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lbaw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbaw;-><init>(Lbax;)V

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Lawr;)Lbaw;
    .locals 3

    .prologue
    .line 46
    if-eqz p0, :cond_0

    const-string v0, "x"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "Lottie doesn\'t support expressions."

    invoke-virtual {p1, v0}, Lawr;->a(Ljava/lang/String;)V

    .line 49
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 50
    invoke-static {}, Lbaz;->a()Lbaz;

    move-result-object v1

    invoke-static {p0, v0, p1, v1}, Lbbw;->a(Lorg/json/JSONObject;FLawr;Lbbv;)Lbbw;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lbbw;->a()Lbbx;

    move-result-object v1

    .line 52
    iget-object v0, v1, Lbbx;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 53
    new-instance v2, Lbaw;

    iget-object v1, v1, Lbbx;->a:Ljava/util/List;

    invoke-direct {v2, v1, v0}, Lbaw;-><init>(Ljava/util/List;Ljava/lang/Integer;)V

    return-object v2
.end method
