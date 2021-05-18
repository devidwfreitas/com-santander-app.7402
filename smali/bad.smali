.class public Lbad;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lbac;
    .locals 6

    .prologue
    .line 38
    const-string v0, "fFamily"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    const-string v1, "fName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    const-string v2, "fStyle"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    const-string v3, "ascent"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v3, v4

    .line 42
    new-instance v4, Lbac;

    invoke-direct {v4, v0, v1, v2, v3}, Lbac;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    return-object v4
.end method
