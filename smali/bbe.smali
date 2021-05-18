.class public final Lbbe;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lawr;)Lbbc;
    .locals 4

    .prologue
    .line 34
    .line 35
    invoke-virtual {p1}, Lawr;->p()F

    move-result v0

    sget-object v1, Lbai;->a:Lbai;

    invoke-static {p0, v0, p1, v1}, Lbbw;->a(Lorg/json/JSONObject;FLawr;Lbbv;)Lbbw;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lbbw;->a()Lbbx;

    move-result-object v0

    .line 37
    new-instance v1, Lbbc;

    iget-object v2, v0, Lbbx;->a:Ljava/util/List;

    iget-object v0, v0, Lbbx;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lbbc;-><init>(Ljava/util/List;Landroid/graphics/PointF;Lbbd;)V

    return-object v1
.end method
