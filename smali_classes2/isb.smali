.class public Lisb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lisa;


# static fields
.field private static final f:Ljava/lang/String; = "santander-keystore"

.field private static final g:Ljava/lang/String; = "TAG_ERROR_LOAD_KEYSTORE"

.field private static final h:Ljava/lang/String; = "TAG_ERROR_NEW_KEYSTORE"


# instance fields
.field private a:Liuq;

.field private b:Liun;

.field private c:Landroid/app/Activity;

.field private d:Z

.field private e:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Liun;)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lisb;->d:Z

    .line 60
    iput-object p1, p0, Lisb;->c:Landroid/app/Activity;

    .line 61
    iput-object p2, p0, Lisb;->b:Liun;

    .line 62
    new-instance v0, Liur;

    iget-object v1, p0, Lisb;->c:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Liur;-><init>(Landroid/app/Activity;Lisa;)V

    iput-object v0, p0, Lisb;->a:Liuq;

    .line 63
    return-void
.end method

.method static synthetic a(Lisb;)Liun;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lisb;->b:Liun;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lisb;->b:Liun;

    iget-object v1, p0, Lisb;->a:Liuq;

    invoke-interface {v1}, Liuq;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Liun;->a(Ljava/util/List;)V

    .line 68
    return-void
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 174
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    .line 175
    invoke-static {}, Lgki;->a()Lgki;

    move-result-object v1

    .line 177
    packed-switch p1, :pswitch_data_0

    .line 229
    :goto_0
    invoke-virtual {p0}, Lisb;->e()V

    .line 230
    return-void

    .line 179
    :pswitch_0
    const-string v2, "https://mbbdes.santanderbr.pre.corp/"

    invoke-virtual {v0, v2}, Lmiq;->c(Ljava/lang/String;)V

    .line 180
    const-string v2, "https://esbapi.isbanbr.dev.corp"

    invoke-virtual {v0, v2}, Lmiq;->d(Ljava/lang/String;)V

    .line 181
    const-string v2, "37826a50a428013485b60050569009ca"

    invoke-virtual {v0, v2}, Lmiq;->e(Ljava/lang/String;)V

    .line 182
    const-string v2, "https://esd.paas.isbanbr.dev.corp"

    invoke-virtual {v1, v2}, Lgki;->a(Ljava/lang/String;)V

    .line 183
    sget-object v1, Lil;->DEV:Lil;

    invoke-virtual {v0, v1}, Lmiq;->a(Lil;)V

    goto :goto_0

    .line 186
    :pswitch_1
    const-string v2, "https://mbbpi.santanderbr.pre.corp/"

    invoke-virtual {v0, v2}, Lmiq;->c(Ljava/lang/String;)V

    .line 187
    const-string v2, "https://esbapi.isbanbr.pre.corp/"

    invoke-virtual {v0, v2}, Lmiq;->d(Ljava/lang/String;)V

    .line 188
    const-string v2, "37826a50a428013485b60050569009ca"

    invoke-virtual {v0, v2}, Lmiq;->e(Ljava/lang/String;)V

    .line 189
    const-string v2, "https://esd.paas.isbanbr.dev.corp"

    invoke-virtual {v1, v2}, Lgki;->a(Ljava/lang/String;)V

    .line 190
    sget-object v1, Lil;->PI:Lil;

    invoke-virtual {v0, v1}, Lmiq;->a(Lil;)V

    goto :goto_0

    .line 193
    :pswitch_2
    const-string v2, "https://mbbhk.santanderbr.pre.corp/"

    invoke-virtual {v0, v2}, Lmiq;->c(Ljava/lang/String;)V

    .line 194
    const-string v2, "https://esbapi.santanderbr.pre.corp/"

    invoke-virtual {v0, v2}, Lmiq;->d(Ljava/lang/String;)V

    .line 195
    const-string v2, "37826a50a428013485b60050569009ca"

    invoke-virtual {v0, v2}, Lmiq;->e(Ljava/lang/String;)V

    .line 196
    const-string v2, "https://esd.paas.santanderbr.pre.corp"

    invoke-virtual {v1, v2}, Lgki;->a(Ljava/lang/String;)V

    .line 197
    sget-object v1, Lil;->HK:Lil;

    invoke-virtual {v0, v1}, Lmiq;->a(Lil;)V

    goto :goto_0

    .line 200
    :pswitch_3
    const-string v2, "https://mbbhk.santander.com.br/"

    invoke-virtual {v0, v2}, Lmiq;->c(Ljava/lang/String;)V

    .line 201
    const-string v2, "https://esbapihi.santander.com.br/"

    invoke-virtual {v0, v2}, Lmiq;->d(Ljava/lang/String;)V

    .line 202
    const-string v2, "37826a50a428013485b60050569009ca"

    invoke-virtual {v0, v2}, Lmiq;->e(Ljava/lang/String;)V

    .line 203
    const-string v2, "https://chathomolog.santander.com.br"

    invoke-virtual {v1, v2}, Lgki;->a(Ljava/lang/String;)V

    .line 204
    sget-object v1, Lil;->HI:Lil;

    invoke-virtual {v0, v1}, Lmiq;->a(Lil;)V

    goto :goto_0

    .line 207
    :pswitch_4
    const-string v2, "https://mbbocu.santander.com.br/"

    invoke-virtual {v0, v2}, Lmiq;->c(Ljava/lang/String;)V

    .line 208
    const-string v2, "https://esbapi.santander.com.br/"

    invoke-virtual {v0, v2}, Lmiq;->d(Ljava/lang/String;)V

    .line 209
    const-string v2, "37826a50a428013485b60050569009ca"

    invoke-virtual {v0, v2}, Lmiq;->e(Ljava/lang/String;)V

    .line 210
    const-string v2, "https://esdblue.paas.santanderbr.corp"

    invoke-virtual {v1, v2}, Lgki;->a(Ljava/lang/String;)V

    .line 211
    sget-object v1, Lil;->MBBOCU:Lil;

    invoke-virtual {v0, v1}, Lmiq;->a(Lil;)V

    goto/16 :goto_0

    .line 214
    :pswitch_5
    const-string v2, "https://m.santander.com.br/"

    invoke-virtual {v0, v2}, Lmiq;->c(Ljava/lang/String;)V

    .line 215
    const-string v2, "https://esbapi.santander.com.br/"

    invoke-virtual {v0, v2}, Lmiq;->d(Ljava/lang/String;)V

    .line 216
    const-string v2, "37826a50a428013485b60050569009ca"

    invoke-virtual {v0, v2}, Lmiq;->e(Ljava/lang/String;)V

    .line 217
    const-string v2, "https://chat.santander.com.br"

    invoke-virtual {v1, v2}, Lgki;->a(Ljava/lang/String;)V

    .line 218
    sget-object v1, Lil;->PROD:Lil;

    invoke-virtual {v0, v1}, Lmiq;->a(Lil;)V

    goto/16 :goto_0

    .line 221
    :pswitch_6
    const-string v2, "https://mbbdeploy.santander.com.br/"

    invoke-virtual {v0, v2}, Lmiq;->c(Ljava/lang/String;)V

    .line 222
    const-string v2, "https://esbapi.santander.com.br/"

    invoke-virtual {v0, v2}, Lmiq;->d(Ljava/lang/String;)V

    .line 223
    const-string v2, "37826a50a428013485b60050569009ca"

    invoke-virtual {v0, v2}, Lmiq;->e(Ljava/lang/String;)V

    .line 224
    const-string v2, "https://esdblue.paas.santanderbr.corp"

    invoke-virtual {v1, v2}, Lgki;->a(Ljava/lang/String;)V

    .line 225
    sget-object v1, Lil;->MBBDEPLOY:Lil;

    invoke-virtual {v0, v1}, Lmiq;->a(Lil;)V

    goto/16 :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 162
    iput-object p1, p0, Lisb;->e:Landroid/os/Bundle;

    .line 163
    iget-object v0, p0, Lisb;->e:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lisb;->e:Landroid/os/Bundle;

    const-string v1, "dlb-ticket"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lisb;->d:Z

    .line 170
    :cond_0
    return-void
.end method

.method public a(Lfoh;)V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lisb;->b:Liun;

    invoke-interface {v0}, Liun;->e()V

    .line 293
    iget-object v0, p0, Lisb;->a:Liuq;

    new-instance v1, Lisc;

    invoke-direct {v1, p0, p1}, Lisc;-><init>(Lisb;Lfoh;)V

    invoke-interface {v0, v1}, Liuq;->a(Lgkw;)V

    .line 300
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lisb;->a:Liuq;

    invoke-interface {v0}, Liuq;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lisb;->b:Liun;

    invoke-interface {v1, v0}, Liun;->a(Landroid/graphics/Bitmap;)V

    .line 76
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lisb;->a:Liuq;

    invoke-interface {v0}, Liuq;->b()Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lisb;->b:Liun;

    invoke-interface {v1, v0}, Liun;->a(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 87
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    .line 88
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiq;->b(Z)V

    .line 90
    invoke-static {}, Lgki;->a()Lgki;

    move-result-object v1

    .line 92
    invoke-virtual {v0}, Lmiq;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    const-string v2, "https://m.santander.com.br/"

    invoke-virtual {v0, v2}, Lmiq;->c(Ljava/lang/String;)V

    .line 94
    const-string v0, "https://chat.santander.com.br"

    invoke-virtual {v1, v0}, Lgki;->a(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lisb;->e()V

    .line 96
    iget-object v0, p0, Lisb;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lisb;->c:Landroid/app/Activity;

    invoke-static {v0, v1}, Lmyn;->a(Landroid/app/Application;Landroid/app/Activity;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lisb;->b:Liun;

    invoke-interface {v0}, Liun;->f()V

    goto :goto_0
.end method

.method public e()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 105
    iget-boolean v2, p0, Lisb;->d:Z

    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {p0}, Lisb;->f()V

    .line 135
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v2, p0, Lisb;->a:Liuq;

    invoke-interface {v2}, Liuq;->e()I

    move-result v2

    .line 109
    iget-object v3, p0, Lisb;->a:Liuq;

    invoke-interface {v3}, Liuq;->f()I

    move-result v3

    .line 111
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v4

    const-string v5, "novidadesSegmentada"

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "segSecundario"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v5

    const-string v6, "novidadesSegmentada"

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "segPrimario"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 116
    const-string v6, "OT"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 117
    const-string v4, "VGUN"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "JPUN"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 123
    :cond_1
    :goto_1
    if-eqz v3, :cond_6

    .line 124
    if-le v2, v3, :cond_5

    if-eqz v0, :cond_5

    .line 125
    iget-object v0, p0, Lisb;->a:Liuq;

    invoke-interface {v0}, Liuq;->g()V

    .line 126
    iget-object v0, p0, Lisb;->b:Liun;

    invoke-interface {v0}, Liun;->g()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 117
    goto :goto_1

    .line 119
    :cond_3
    const-string v5, "UN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "JP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_4
    move v0, v1

    goto :goto_1

    .line 128
    :cond_5
    invoke-virtual {p0}, Lisb;->f()V

    goto :goto_0

    .line 131
    :cond_6
    iget-object v0, p0, Lisb;->a:Liuq;

    invoke-interface {v0}, Liuq;->g()V

    .line 132
    iget-object v0, p0, Lisb;->b:Liun;

    invoke-interface {v0}, Liun;->h()V

    goto :goto_0
.end method

.method public f()V
    .locals 3

    .prologue
    .line 139
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    .line 141
    invoke-static {}, Lcom/santander/app/MinhaConta;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lmyn;->d(Landroid/app/Application;)V

    .line 142
    iget-object v1, p0, Lisb;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lisb;->c:Landroid/app/Activity;

    invoke-static {v1, v2}, Lmyn;->a(Landroid/app/Application;Landroid/app/Activity;)V

    .line 144
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiq;->e(Z)V

    .line 145
    new-instance v1, Lfwv;

    invoke-direct {v1}, Lfwv;-><init>()V

    invoke-virtual {v0, v1}, Lmiq;->a(Lfwv;)V

    .line 147
    iget-boolean v0, p0, Lisb;->d:Z

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lisb;->e:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lisb;->e:Landroid/os/Bundle;

    const-string v1, "dlb-ticket"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiq;->c(Z)V

    .line 154
    iget-object v1, p0, Lisb;->b:Liun;

    invoke-interface {v1, v0}, Liun;->b(Ljava/lang/String;)V

    .line 158
    :cond_0
    return-void
.end method

.method public g()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 234
    .line 236
    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 237
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    :try_start_1
    const-string v0, "santander-keystore"

    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 250
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 251
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 252
    new-instance v2, Landroid/security/KeyPairGeneratorSpec$Builder;

    iget-object v3, p0, Lisb;->b:Liun;

    invoke-interface {v3}, Liun;->i()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "santander-keystore"

    .line 253
    invoke-virtual {v2, v3}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v2

    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    const-string v4, "CN=Santander Keystore, O=Santander SA"

    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v2, v3}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v2

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 255
    invoke-virtual {v2, v3}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v2

    .line 256
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v0

    .line 257
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object v0

    .line 259
    const-string v1, "RSA"

    const-string v2, "AndroidKeyStore"

    invoke-static {v1, v2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 260
    invoke-virtual {v1, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 262
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 268
    :cond_0
    :goto_1
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    const-string v2, "TAG_ERROR_LOAD_KEYSTORE"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v2, "TAG_ERROR_LOAD_KEYSTORE"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :catch_1
    move-exception v0

    .line 265
    const-string v1, "TAG_ERROR_NEW_KEYSTORE"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v1, "TAG_ERROR_NEW_KEYSTORE"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lisb;->a:Liuq;

    invoke-interface {v0}, Liuq;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 2

    .prologue
    .line 277
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 279
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lisb;->a:Liuq;

    invoke-interface {v0}, Liuq;->h()[Ljava/lang/String;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lisb;->b:Liun;

    invoke-interface {v1, v0}, Liun;->a([Ljava/lang/String;)V

    .line 288
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lisb;->b:Liun;

    invoke-interface {v0}, Liun;->m()V

    goto :goto_0

    .line 286
    :cond_1
    iget-object v0, p0, Lisb;->b:Liun;

    invoke-interface {v0}, Liun;->m()V

    goto :goto_0
.end method
