.class public Lmzr;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Lmzr;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 25
    :goto_0
    return v0

    .line 27
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0}, Lhau;->i()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static c()Ljava/lang/String;
    .locals 5

    .prologue
    .line 48
    const-string v0, ""

    .line 49
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 50
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->i()Ljava/lang/String;

    move-result-object v0

    .line 53
    :cond_0
    const-string v1, ""

    .line 55
    const/4 v2, 0x0

    .line 58
    :try_start_0
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c0005

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 63
    :goto_0
    if-nez v1, :cond_1

    .line 69
    :goto_1
    return-object v0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    const-string v3, "SecurityUtil"

    const-string v4, "GetSegmento"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    goto :goto_0

    .line 66
    :cond_1
    const-string v0, "SE"

    goto :goto_1
.end method

.method public static d()I
    .locals 7

    .prologue
    const/4 v1, 0x3

    .line 73
    const-string v0, ""

    .line 74
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v2

    invoke-virtual {v2}, Lmiq;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 75
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->i()Ljava/lang/String;

    move-result-object v0

    .line 78
    :cond_0
    const/4 v2, 0x1

    .line 80
    const/4 v4, 0x0

    .line 83
    :try_start_0
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c0005

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 88
    :goto_0
    if-nez v3, :cond_7

    .line 89
    const-string v3, "SE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 108
    :goto_1
    return v0

    .line 84
    :catch_0
    move-exception v3

    .line 85
    const-string v5, "SecurityUtil"

    const-string v6, "GetSegmento"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    goto :goto_0

    .line 91
    :cond_1
    const-string v1, "VG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    const/4 v0, 0x2

    goto :goto_1

    .line 93
    :cond_2
    const-string v1, "PR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 94
    const/16 v0, 0x8

    goto :goto_1

    .line 95
    :cond_3
    const-string v1, "UN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 96
    const/4 v0, 0x4

    goto :goto_1

    .line 97
    :cond_4
    const-string v1, "VGUN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 98
    const/4 v0, 0x5

    goto :goto_1

    .line 99
    :cond_5
    const-string v1, "JP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 100
    const/4 v0, 0x6

    goto :goto_1

    .line 101
    :cond_6
    const-string v1, "UNJP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 102
    const/4 v0, 0x7

    goto :goto_1

    :cond_7
    move v0, v1

    .line 105
    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_1
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->f()Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->g()Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->j()Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const-string v0, "0033"

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const-string v0, ""

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->b()Lmwx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->b()Lmwx;

    move-result-object v0

    invoke-virtual {v0}, Lmwx;->b()Ljava/lang/String;

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->b()Lmwx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->b()Lmwx;

    move-result-object v0

    invoke-virtual {v0}, Lmwx;->c()Ljava/lang/String;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->b()Lmwx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->b()Lmwx;

    move-result-object v0

    invoke-virtual {v0}, Lmwx;->a()Ljava/lang/String;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    :try_start_0
    new-instance v0, Lnaf;

    invoke-direct {v0}, Lnaf;-><init>()V

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnaf;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    const-string v0, ""

    goto :goto_0
.end method

.method private static o()Z
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0}, Lhau;->B()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
