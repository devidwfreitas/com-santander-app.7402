.class Lbdn;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method static a(Lorg/json/JSONObject;Lawr;)Lbdl;
    .locals 5

    .prologue
    .line 47
    const-string v0, "ks"

    .line 48
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1}, Lbbk;->a(Lorg/json/JSONObject;Lawr;)Lbbi;

    move-result-object v0

    .line 49
    new-instance v1, Lbdl;

    const-string v2, "nm"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ind"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lbdl;-><init>(Ljava/lang/String;ILbbi;Lbdm;)V

    return-object v1
.end method
