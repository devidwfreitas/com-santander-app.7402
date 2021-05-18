.class Lbdq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method static a(Lorg/json/JSONObject;Lawr;)Lbdo;
    .locals 14

    .prologue
    .line 90
    const-string v0, "nm"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 92
    const-string v0, "c"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1}, Lban;->a(Lorg/json/JSONObject;Lawr;)Lbal;

    move-result-object v4

    .line 94
    const-string v0, "w"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1}, Lbaq;->a(Lorg/json/JSONObject;Lawr;)Lbao;

    move-result-object v6

    .line 96
    const-string v0, "o"

    .line 97
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 96
    invoke-static {v0, p1}, Lbay;->a(Lorg/json/JSONObject;Lawr;)Lbaw;

    move-result-object v5

    .line 98
    invoke-static {}, Lbdr;->values()[Lbdr;

    move-result-object v0

    const-string v2, "lc"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v7, v0, v2

    .line 99
    invoke-static {}, Lbds;->values()[Lbds;

    move-result-object v0

    const-string v2, "lj"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v8, v0, v2

    .line 100
    const/4 v2, 0x0

    .line 102
    const-string v0, "d"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 103
    const-string v0, "d"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 104
    const/4 v0, 0x0

    move v13, v0

    move-object v0, v2

    move v2, v13

    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_3

    .line 105
    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 106
    const-string v11, "n"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 107
    const-string v12, "o"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 108
    const-string v0, "v"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 109
    invoke-static {v0, p1}, Lbaq;->a(Lorg/json/JSONObject;Lawr;)Lbao;

    move-result-object v0

    .line 104
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_1
    const-string v12, "d"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "g"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 111
    :cond_2
    const-string v11, "v"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 112
    invoke-static {v10, p1}, Lbaq;->a(Lorg/json/JSONObject;Lawr;)Lbao;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 115
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v9, 0x1

    if-ne v2, v9, :cond_4

    .line 117
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v2, v0

    .line 120
    :cond_5
    new-instance v0, Lbdo;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lbdo;-><init>(Ljava/lang/String;Lbao;Ljava/util/List;Lbal;Lbaw;Lbao;Lbdr;Lbds;Lbdp;)V

    return-object v0
.end method
