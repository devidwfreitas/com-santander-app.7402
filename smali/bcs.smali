.class Lbcs;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method static a(Lorg/json/JSONObject;)Lbcq;
    .locals 4

    .prologue
    .line 76
    new-instance v0, Lbcq;

    const-string v1, "nm"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mm"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lbct;->access$000(I)Lbct;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lbcq;-><init>(Ljava/lang/String;Lbct;Lbcr;)V

    return-object v0
.end method
