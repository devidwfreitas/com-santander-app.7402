.class public Ljsh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljsf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 30
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "novidadesSegmentada"

    const/4 v2, 0x0

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 32
    const-string v0, "segPrimario"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    const-string v2, "segSecundario"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    const-string v2, "OT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljsg;)V
    .locals 2

    .prologue
    .line 44
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 64
    new-instance v0, Ljrx;

    invoke-direct {v0}, Ljrx;-><init>()V

    .line 67
    :goto_1
    invoke-interface {p2, v0}, Ljsg;->a(Ljava/util/List;)V

    .line 68
    return-void

    .line 44
    :sswitch_0
    const-string v1, "UN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "JP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "VD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "SE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "VG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "PR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 46
    :pswitch_0
    new-instance v0, Ljrz;

    invoke-direct {v0}, Ljrz;-><init>()V

    goto :goto_1

    .line 49
    :pswitch_1
    new-instance v0, Ljru;

    invoke-direct {v0}, Ljru;-><init>()V

    goto :goto_1

    .line 52
    :pswitch_2
    new-instance v0, Ljsa;

    invoke-direct {v0}, Ljsa;-><init>()V

    goto :goto_1

    .line 55
    :pswitch_3
    new-instance v0, Ljry;

    invoke-direct {v0}, Ljry;-><init>()V

    goto :goto_1

    .line 58
    :pswitch_4
    new-instance v0, Ljsb;

    invoke-direct {v0}, Ljsb;-><init>()V

    goto :goto_1

    .line 61
    :pswitch_5
    new-instance v0, Ljrw;

    invoke-direct {v0}, Ljrw;-><init>()V

    goto :goto_1

    .line 44
    :sswitch_data_0
    .sparse-switch
        0x946 -> :sswitch_1
        0xa02 -> :sswitch_5
        0xa52 -> :sswitch_3
        0xa99 -> :sswitch_0
        0xaae -> :sswitch_2
        0xab1 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
