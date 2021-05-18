.class final Lbdc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method static a(Lorg/json/JSONObject;Lawr;)Lbdb;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 55
    const-string v0, "nm"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string v1, "c"

    .line 57
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, p1, v3}, Lbaq;->a(Lorg/json/JSONObject;Lawr;Z)Lbao;

    move-result-object v1

    .line 58
    const-string v2, "o"

    .line 59
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, p1, v3}, Lbaq;->a(Lorg/json/JSONObject;Lawr;Z)Lbao;

    move-result-object v2

    .line 60
    const-string v3, "tr"

    .line 61
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1}, Lbbt;->a(Lorg/json/JSONObject;Lawr;)Lbbr;

    move-result-object v3

    .line 63
    new-instance v4, Lbdb;

    invoke-direct {v4, v0, v1, v2, v3}, Lbdb;-><init>(Ljava/lang/String;Lbao;Lbao;Lbbr;)V

    return-object v4
.end method
