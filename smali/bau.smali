.class public final Lbau;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lawr;)Lbas;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 41
    const-string v0, "p"

    const-string v1, "k"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 42
    const/high16 v1, 0x3f800000    # 1.0f

    new-instance v2, Lbav;

    invoke-direct {v2, v0, v3}, Lbav;-><init>(ILbat;)V

    .line 43
    invoke-static {p0, v1, p1, v2}, Lbbw;->a(Lorg/json/JSONObject;FLawr;Lbbv;)Lbbw;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lbbw;->a()Lbbx;

    move-result-object v1

    .line 45
    iget-object v0, v1, Lbbx;->b:Ljava/lang/Object;

    check-cast v0, Lbce;

    .line 46
    new-instance v2, Lbas;

    iget-object v1, v1, Lbbx;->a:Ljava/util/List;

    invoke-direct {v2, v1, v0, v3}, Lbas;-><init>(Ljava/util/List;Lbce;Lbat;)V

    return-object v2
.end method
