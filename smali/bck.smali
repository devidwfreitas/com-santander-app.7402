.class Lbck;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method static a(Lorg/json/JSONObject;Lawr;)Lbci;
    .locals 18

    .prologue
    .line 107
    const-string v1, "nm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    const-string v1, "g"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_0

    const-string v3, "k"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    const-string v3, "k"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 112
    :cond_0
    const/4 v4, 0x0

    .line 113
    if-eqz v1, :cond_1

    .line 114
    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lbau;->a(Lorg/json/JSONObject;Lawr;)Lbas;

    move-result-object v4

    .line 117
    :cond_1
    const-string v1, "o"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 118
    const/4 v5, 0x0

    .line 119
    if-eqz v1, :cond_2

    .line 120
    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lbay;->a(Lorg/json/JSONObject;Lawr;)Lbaw;

    move-result-object v5

    .line 123
    :cond_2
    const-string v1, "t"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 124
    const/4 v3, 0x1

    if-ne v1, v3, :cond_6

    sget-object v3, Lbcl;->Linear:Lbcl;

    .line 126
    :goto_0
    const-string v1, "s"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 127
    const/4 v6, 0x0

    .line 128
    if-eqz v1, :cond_3

    .line 129
    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lbbe;->a(Lorg/json/JSONObject;Lawr;)Lbbc;

    move-result-object v6

    .line 132
    :cond_3
    const-string v1, "e"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 133
    const/4 v7, 0x0

    .line 134
    if-eqz v1, :cond_4

    .line 135
    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lbbe;->a(Lorg/json/JSONObject;Lawr;)Lbbc;

    move-result-object v7

    .line 137
    :cond_4
    const-string v1, "w"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lbaq;->a(Lorg/json/JSONObject;Lawr;)Lbao;

    move-result-object v8

    .line 141
    invoke-static {}, Lbdr;->values()[Lbdr;

    move-result-object v1

    const-string v9, "lc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v1, v9

    .line 142
    invoke-static {}, Lbds;->values()[Lbds;

    move-result-object v1

    const-string v10, "lj"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    aget-object v10, v1, v10

    .line 144
    const/4 v12, 0x0

    .line 145
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 146
    const-string v1, "d"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 147
    const-string v1, "d"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 148
    const/4 v1, 0x0

    move/from16 v17, v1

    move-object v1, v12

    move/from16 v12, v17

    :goto_1
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v12, v14, :cond_9

    .line 149
    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 150
    const-string v15, "n"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 151
    const-string v16, "o"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 152
    const-string v1, "v"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 153
    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lbaq;->a(Lorg/json/JSONObject;Lawr;)Lbao;

    move-result-object v1

    .line 148
    :cond_5
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 124
    :cond_6
    sget-object v3, Lbcl;->Radial:Lbcl;

    goto/16 :goto_0

    .line 154
    :cond_7
    const-string v16, "d"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_8

    const-string v16, "g"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 155
    :cond_8
    const-string v15, "v"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 156
    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lbaq;->a(Lorg/json/JSONObject;Lawr;)Lbao;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 159
    :cond_9
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    .line 161
    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    move-object v12, v1

    .line 165
    :cond_b
    new-instance v1, Lbci;

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v13}, Lbci;-><init>(Ljava/lang/String;Lbcl;Lbas;Lbaw;Lbbc;Lbbc;Lbao;Lbdr;Lbds;Ljava/util/List;Lbao;Lbcj;)V

    return-object v1
.end method
