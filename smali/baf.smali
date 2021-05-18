.class public Lbaf;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lawr;)Lbae;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 59
    const-string v1, "ch"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 60
    const-string v1, "size"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 61
    const-string v1, "w"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 62
    const-string v1, "style"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 63
    const-string v1, "fFamily"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 64
    const-string v1, "data"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 67
    if-eqz v8, :cond_1

    .line 68
    const-string v9, "shapes"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 69
    if-eqz v9, :cond_1

    .line 70
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v0

    .line 71
    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 73
    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1}, Lbdj;->a(Lorg/json/JSONObject;Lawr;)Lbcd;

    move-result-object v0

    check-cast v0, Lbdj;

    .line 72
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move-object v1, v8

    .line 78
    :cond_1
    new-instance v0, Lbae;

    invoke-direct/range {v0 .. v7}, Lbae;-><init>(Ljava/util/List;CIDLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
