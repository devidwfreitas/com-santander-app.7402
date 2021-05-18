.class final Lhb;
.super Lnjq;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Lnjq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Lnjr;)V
    .locals 3

    .prologue
    .line 181
    invoke-virtual {p1}, Lnjr;->d()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "message"

    const-string v2, "no_message"

    .line 182
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    const-string v0, "LoggerRemoteCommand"

    return-object v0
.end method
