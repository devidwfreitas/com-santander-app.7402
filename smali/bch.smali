.class Lbch;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method static a(Lorg/json/JSONObject;Lawr;)Lbcf;
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 92
    const-string v0, "nm"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    const-string v0, "g"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    const-string v2, "k"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    const-string v2, "p"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 99
    const-string v3, "k"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 101
    :try_start_0
    const-string v3, "p"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    :goto_0
    if-eqz v0, :cond_6

    .line 108
    invoke-static {v0, p1}, Lbau;->a(Lorg/json/JSONObject;Lawr;)Lbas;

    move-result-object v4

    .line 111
    :goto_1
    const-string v0, "o"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_5

    .line 114
    invoke-static {v0, p1}, Lbay;->a(Lorg/json/JSONObject;Lawr;)Lbaw;

    move-result-object v5

    .line 117
    :goto_2
    const-string v0, "r"

    invoke-virtual {p0, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 118
    if-ne v0, v6, :cond_1

    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 120
    :goto_3
    const-string v0, "t"

    invoke-virtual {p0, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 121
    if-ne v0, v6, :cond_2

    sget-object v2, Lbcl;->Linear:Lbcl;

    .line 123
    :goto_4
    const-string v0, "s"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_4

    .line 126
    invoke-static {v0, p1}, Lbbe;->a(Lorg/json/JSONObject;Lawr;)Lbbc;

    move-result-object v6

    .line 129
    :goto_5
    const-string v0, "e"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_3

    .line 132
    invoke-static {v0, p1}, Lbbe;->a(Lorg/json/JSONObject;Lawr;)Lbbc;

    move-result-object v7

    .line 135
    :goto_6
    new-instance v0, Lbcf;

    move-object v9, v8

    move-object v10, v8

    invoke-direct/range {v0 .. v10}, Lbcf;-><init>(Ljava/lang/String;Lbcl;Landroid/graphics/Path$FillType;Lbas;Lbaw;Lbbc;Lbbc;Lbao;Lbao;Lbcg;)V

    return-object v0

    .line 118
    :cond_1
    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_3

    .line 121
    :cond_2
    sget-object v2, Lbcl;->Radial:Lbcl;

    goto :goto_4

    .line 102
    :catch_0
    move-exception v2

    goto :goto_0

    :cond_3
    move-object v7, v8

    goto :goto_6

    :cond_4
    move-object v6, v8

    goto :goto_5

    :cond_5
    move-object v5, v8

    goto :goto_2

    :cond_6
    move-object v4, v8

    goto :goto_1
.end method
