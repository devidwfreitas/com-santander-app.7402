.class Lbcw;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method

.method static a(Lorg/json/JSONObject;Lawr;)Lbcu;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 108
    const-string v0, "nm"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    const-string v0, "sy"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lbcx;->forValue(I)Lbcx;

    move-result-object v2

    .line 110
    const-string v0, "pt"

    .line 111
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1, v8}, Lbaq;->a(Lorg/json/JSONObject;Lawr;Z)Lbao;

    move-result-object v3

    .line 112
    const-string v0, "p"

    .line 113
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1}, Lbba;->a(Lorg/json/JSONObject;Lawr;)Lbbu;

    move-result-object v4

    .line 114
    const-string v0, "r"

    .line 115
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1, v8}, Lbaq;->a(Lorg/json/JSONObject;Lawr;Z)Lbao;

    move-result-object v5

    .line 116
    const-string v0, "or"

    .line 117
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1}, Lbaq;->a(Lorg/json/JSONObject;Lawr;)Lbao;

    move-result-object v7

    .line 118
    const-string v0, "os"

    .line 119
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1, v8}, Lbaq;->a(Lorg/json/JSONObject;Lawr;Z)Lbao;

    move-result-object v9

    .line 123
    sget-object v0, Lbcx;->Star:Lbcx;

    if-ne v2, v0, :cond_0

    .line 124
    const-string v0, "ir"

    .line 125
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1}, Lbaq;->a(Lorg/json/JSONObject;Lawr;)Lbao;

    move-result-object v6

    .line 126
    const-string v0, "is"

    .line 127
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1, v8}, Lbaq;->a(Lorg/json/JSONObject;Lawr;Z)Lbao;

    move-result-object v8

    .line 132
    :goto_0
    new-instance v0, Lbcu;

    invoke-direct/range {v0 .. v10}, Lbcu;-><init>(Ljava/lang/String;Lbcx;Lbao;Lbbu;Lbao;Lbao;Lbao;Lbao;Lbao;Lbcv;)V

    return-object v0

    :cond_0
    move-object v8, v10

    move-object v6, v10

    .line 130
    goto :goto_0
.end method
