.class public final Lbbk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lawr;)Lbbi;
    .locals 4

    .prologue
    .line 43
    .line 44
    invoke-virtual {p1}, Lawr;->p()F

    move-result v0

    sget-object v1, Lbdf;->a:Lbdf;

    invoke-static {p0, v0, p1, v1}, Lbbw;->a(Lorg/json/JSONObject;FLawr;Lbbv;)Lbbw;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lbbw;->a()Lbbx;

    move-result-object v0

    .line 46
    new-instance v1, Lbbi;

    iget-object v2, v0, Lbbx;->a:Ljava/util/List;

    iget-object v0, v0, Lbbx;->b:Ljava/lang/Object;

    check-cast v0, Lbdd;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lbbi;-><init>(Ljava/util/List;Lbdd;Lbbj;)V

    return-object v1
.end method
