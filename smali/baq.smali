.class public final Lbaq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method static a()Lbao;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lbao;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbao;-><init>(Lbap;)V

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Lawr;)Lbao;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lbaq;->a(Lorg/json/JSONObject;Lawr;Z)Lbao;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Lawr;Z)Lbao;
    .locals 4

    .prologue
    .line 61
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lawr;->p()F

    move-result v0

    .line 62
    :goto_0
    if-eqz p0, :cond_0

    const-string v1, "x"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const-string v1, "Lottie doesn\'t support expressions."

    invoke-virtual {p1, v1}, Lawr;->a(Ljava/lang/String;)V

    .line 65
    :cond_0
    sget-object v1, Lbar;->a:Lbar;

    .line 66
    invoke-static {p0, v0, p1, v1}, Lbbw;->a(Lorg/json/JSONObject;FLawr;Lbbv;)Lbbw;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lbbw;->a()Lbbx;

    move-result-object v0

    .line 68
    new-instance v1, Lbao;

    iget-object v2, v0, Lbbx;->a:Ljava/util/List;

    iget-object v0, v0, Lbbx;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lbao;-><init>(Ljava/util/List;Ljava/lang/Float;Lbap;)V

    return-object v1

    .line 61
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method
