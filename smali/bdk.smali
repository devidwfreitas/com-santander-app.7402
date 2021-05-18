.class Lbdk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method static synthetic a(Lorg/json/JSONObject;Lawr;)Lbdj;
    .locals 1

    .prologue
    .line 67
    invoke-static {p0, p1}, Lbdk;->b(Lorg/json/JSONObject;Lawr;)Lbdj;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lorg/json/JSONObject;Lawr;)Lbdj;
    .locals 5

    .prologue
    .line 72
    const-string v0, "it"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 73
    const-string v0, "nm"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 76
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 77
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4, p1}, Lbdj;->a(Lorg/json/JSONObject;Lawr;)Lbcd;

    move-result-object v4

    .line 78
    if-eqz v4, :cond_0

    .line 79
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_1
    new-instance v0, Lbdj;

    invoke-direct {v0, v2, v3}, Lbdj;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
