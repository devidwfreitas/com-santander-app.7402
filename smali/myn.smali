.class public Lmyn;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lalh;)V
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lalh;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lalh;->b()Ljava/lang/String;

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    const-string v0, "String erro vazia na lib datablink"

    goto :goto_0
.end method

.method public static a(Landroid/app/Application;)V
    .locals 3

    .prologue
    .line 37
    invoke-static {p0}, Lmyn;->e(Landroid/app/Application;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "ab2413b3afc961e0a87dcb8f67494528fadd4230"

    .line 39
    const-string v1, "abc@def.com"

    .line 40
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 41
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, p0, v1, v2}, Lcom/datami/smi/SmiSdk;->getAppSDAuth(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 43
    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Application;Lala;)V
    .locals 3

    .prologue
    .line 50
    const-string v0, "819B98B42786BFBEC717C789AF7B3"

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.santander.app.idsantander.idsantanderprovedor/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lalb;->a(Landroid/content/Context;Landroid/net/Uri;Lala;)V

    .line 53
    return-void
.end method

.method public static a(Landroid/app/Application;Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 65
    sput-object p1, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;->a:Landroid/app/Activity;

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/geolocalizacao/service/GeolocalizacaoService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 67
    return-void
.end method

.method public static b(Lalh;)V
    .locals 3

    .prologue
    .line 75
    invoke-virtual {p0}, Lalh;->d()Lalg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lalh;->d()Lalg;

    move-result-object v0

    invoke-virtual {v0}, Lalg;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {p0}, Lalh;->d()Lalg;

    move-result-object v0

    invoke-virtual {v0}, Lalg;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lalh;->d()Lalg;

    move-result-object v1

    invoke-virtual {v1}, Lalg;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-virtual {p0}, Lalh;->d()Lalg;

    move-result-object v0

    invoke-virtual {v0}, Lalg;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lalh;->d()Lalg;

    move-result-object v1

    invoke-virtual {v1}, Lalg;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lalh;->d()Lalg;

    move-result-object v2

    invoke-virtual {v2}, Lalg;->d()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static b(Landroid/app/Application;)V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/transfergolden/service/TransferGoldenService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 47
    return-void
.end method

.method public static c(Landroid/app/Application;)V
    .locals 0

    .prologue
    .line 56
    invoke-static {p0}, Lbhv;->a(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public static d(Landroid/app/Application;)V
    .locals 4

    .prologue
    .line 60
    const-string v0, "932838380"

    const-string v1, "Feq9CN2OkmQQ7PfnvAM"

    const-string v2, "0.00"

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lclj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 62
    return-void
.end method

.method private static e(Landroid/app/Application;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-static {}, Lipn;->a()Lipi;

    move-result-object v2

    .line 87
    const-string v1, "novidadesSegmentada"

    invoke-virtual {p0, v1, v0}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 88
    const-string v3, "segPrimario"

    const-string v4, "CL"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 89
    const-string v4, "segSecundario"

    const-string v5, "CL"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 92
    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 98
    :pswitch_0
    const-string v0, "00000095"

    .line 121
    :goto_1
    invoke-interface {v2, v0}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 92
    :sswitch_0
    const-string v5, "UN"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :sswitch_1
    const-string v0, "CL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "VG"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "SE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "PR"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_5
    const-string v0, "JP"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_6
    const-string v0, "NC"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    .line 94
    :pswitch_1
    const-string v0, "00000094"

    goto :goto_1

    .line 101
    :pswitch_2
    const-string v0, "VD"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    const-string v0, "00000097"

    goto :goto_1

    .line 105
    :cond_1
    const-string v0, "00000096"

    goto :goto_1

    .line 108
    :pswitch_3
    const-string v0, "00000098"

    goto :goto_1

    .line 111
    :pswitch_4
    const-string v0, "00000099"

    goto :goto_1

    .line 114
    :pswitch_5
    const-string v0, "00000104"

    goto :goto_1

    .line 117
    :pswitch_6
    const-string v0, "00000105"

    goto :goto_1

    .line 92
    :sswitch_data_0
    .sparse-switch
        0x869 -> :sswitch_1
        0x946 -> :sswitch_5
        0x9b5 -> :sswitch_6
        0xa02 -> :sswitch_4
        0xa52 -> :sswitch_3
        0xa99 -> :sswitch_0
        0xab1 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
