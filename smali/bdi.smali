.class Lbdi;
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

.method static a(Lorg/json/JSONObject;Lawr;)Lbdg;
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 37
    .line 40
    const-string v0, "nm"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    const-string v0, "c"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    invoke-static {v0, p1}, Lban;->a(Lorg/json/JSONObject;Lawr;)Lbal;

    move-result-object v4

    .line 47
    :goto_0
    const-string v0, "o"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    invoke-static {v0, p1}, Lbay;->a(Lorg/json/JSONObject;Lawr;)Lbaw;

    move-result-object v5

    .line 51
    :goto_1
    const-string v0, "fillEnabled"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 53
    const-string v0, "r"

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 54
    if-ne v0, v3, :cond_0

    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 56
    :goto_2
    new-instance v0, Lbdg;

    invoke-direct/range {v0 .. v6}, Lbdg;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lbal;Lbaw;Lbdh;)V

    return-object v0

    .line 54
    :cond_0
    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_2

    :cond_1
    move-object v5, v6

    goto :goto_1

    :cond_2
    move-object v4, v6

    goto :goto_0
.end method
