.class public final Lbbn;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lawr;)Lbbm;
    .locals 3

    .prologue
    .line 27
    if-eqz p0, :cond_0

    const-string v0, "x"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const-string v0, "Lottie doesn\'t support expressions."

    invoke-virtual {p1, v0}, Lawr;->a(Ljava/lang/String;)V

    .line 30
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 31
    invoke-static {}, Lbbo;->a()Lbbo;

    move-result-object v1

    invoke-static {p0, v0, p1, v1}, Lbbw;->a(Lorg/json/JSONObject;FLawr;Lbbv;)Lbbw;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lbbw;->a()Lbbx;

    move-result-object v0

    .line 33
    new-instance v1, Lbbm;

    iget-object v2, v0, Lbbx;->a:Ljava/util/List;

    iget-object v0, v0, Lbbx;->b:Ljava/lang/Object;

    check-cast v0, Lazz;

    invoke-direct {v1, v2, v0}, Lbbm;-><init>(Ljava/util/List;Lazz;)V

    return-object v1
.end method
