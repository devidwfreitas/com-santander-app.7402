.class public Lbco;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lawr;)Lbcm;
    .locals 5

    .prologue
    .line 33
    const-string v0, "mode"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 44
    sget-object v0, Lbcp;->MaskModeUnknown:Lbcp;

    .line 47
    :goto_1
    const-string v1, "pt"

    .line 48
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 47
    invoke-static {v1, p1}, Lbbk;->a(Lorg/json/JSONObject;Lawr;)Lbbi;

    move-result-object v1

    .line 49
    const-string v2, "o"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 51
    invoke-static {v2, p1}, Lbay;->a(Lorg/json/JSONObject;Lawr;)Lbaw;

    move-result-object v2

    .line 52
    new-instance v3, Lbcm;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Lbcm;-><init>(Lbcp;Lbbi;Lbaw;Lbcn;)V

    return-object v3

    .line 33
    :sswitch_0
    const-string v2, "a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "i"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 35
    :pswitch_0
    sget-object v0, Lbcp;->MaskModeAdd:Lbcp;

    goto :goto_1

    .line 38
    :pswitch_1
    sget-object v0, Lbcp;->MaskModeSubtract:Lbcp;

    goto :goto_1

    .line 41
    :pswitch_2
    sget-object v0, Lbcp;->MaskModeIntersect:Lbcp;

    goto :goto_1

    .line 33
    nop

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_0
        0x69 -> :sswitch_2
        0x73 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
