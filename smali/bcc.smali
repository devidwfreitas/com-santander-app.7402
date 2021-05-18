.class Lbcc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static a(Lorg/json/JSONObject;Lawr;)Lbca;
    .locals 5

    .prologue
    .line 37
    new-instance v0, Lbca;

    const-string v1, "nm"

    .line 38
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "p"

    .line 40
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, p1}, Lbba;->a(Lorg/json/JSONObject;Lawr;)Lbbu;

    move-result-object v2

    const-string v3, "s"

    .line 41
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1}, Lbbe;->a(Lorg/json/JSONObject;Lawr;)Lbbc;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbca;-><init>(Ljava/lang/String;Lbbu;Lbbc;Lbcb;)V

    return-object v0
.end method
