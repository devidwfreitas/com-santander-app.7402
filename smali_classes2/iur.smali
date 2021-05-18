.class public Liur;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liuq;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lisa;

.field private c:Litn;

.field private d:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lisa;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Liur;->d:Landroid/app/Activity;

    .line 43
    iput-object p2, p0, Liur;->b:Lisa;

    .line 44
    new-instance v0, Litp;

    iget-object v1, p0, Liur;->d:Landroid/app/Activity;

    invoke-direct {v0, v1}, Litp;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Liur;->c:Litn;

    .line 45
    return-void
.end method

.method private a(JJJLjava/lang/String;)V
    .locals 5

    .prologue
    .line 172
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 173
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 175
    const-string v2, "ddMMyyyy"

    invoke-static {v0, v2}, Lnak;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    const-string v0, "ddMMyyyy"

    invoke-static {v1, v0}, Lnak;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 179
    cmp-long v0, p5, p1

    if-ltz v0, :cond_0

    cmp-long v0, p5, p3

    if-lez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 180
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Marketing_Banner_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_3

    const-string v1, "Generico"

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_HomeNaoLogada_Vigencia_DataInicio_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_4

    const-string v1, "00000000"

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_DataFim_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_5

    const-string v0, "00000000"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p7, :cond_1

    const-string p7, ""

    :cond_1
    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Acao"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exibir"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void

    .line 179
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 180
    :cond_3
    const-string v1, "Dinamico"

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_2

    :cond_5
    move-object v0, v3

    goto :goto_3
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const-wide/16 v6, 0x0

    .line 49
    invoke-virtual {p0}, Liur;->c()Ljava/lang/String;

    move-result-object v8

    .line 52
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "banner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 55
    const-string v0, "link"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liur;->a:Ljava/lang/String;

    .line 60
    const-string v0, "NC0"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    const-string v0, "imagemNaoCorrentista"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v2, "dataInicioVigenciaNaoCorrentista"

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 63
    const-string v4, "dataFimVigenciaNaoCorrentista"

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 72
    :goto_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 74
    cmp-long v1, v6, v2

    if-ltz v1, :cond_0

    cmp-long v1, v6, v4

    if-lez v1, :cond_2

    .line 75
    :cond_0
    const/4 v0, 0x0

    :goto_1
    move-object v1, p0

    .line 82
    invoke-direct/range {v1 .. v8}, Liur;->a(JJJLjava/lang/String;)V

    .line 83
    return-object v0

    .line 66
    :cond_1
    const-string v0, "imagem"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    const-string v2, "dataInicioVigencia"

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 68
    const-string v4, "dataFimVigencia"

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    goto :goto_0

    .line 78
    :cond_2
    invoke-static {v0, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 79
    array-length v1, v0

    invoke-static {v0, v9, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Lgkw;)V
    .locals 2

    .prologue
    .line 163
    new-instance v0, Litt;

    new-instance v1, Lius;

    invoke-direct {v1, p0, p1}, Lius;-><init>(Liur;Lgkw;)V

    invoke-direct {v0, v1}, Litt;-><init>(Lgkv;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 168
    invoke-virtual {v0, v1}, Litt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 169
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Liur;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 115
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SovereignBrasilProfile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    const-string v1, "segmento"

    const-string v2, "999"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lirz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    new-instance v1, Lirz;

    const v2, 0x7f090535

    const/4 v3, 0x0

    const v4, 0x7f0200eb

    invoke-direct {v1, v2, v3, v4}, Lirz;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v1, Lirz;

    const v2, 0x7f090541

    const v3, 0x7f090540

    const v4, 0x7f0200f9

    invoke-direct {v1, v2, v3, v4}, Lirz;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v1, Lirz;

    const v2, 0x7f090539

    const v3, 0x7f090538

    const v4, 0x7f0200ec

    invoke-direct {v1, v2, v3, v4}, Lirz;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v1, Lirz;

    const v2, 0x7f09053b

    const v3, 0x7f09053a

    const v4, 0x7f0200ed

    invoke-direct {v1, v2, v3, v4}, Lirz;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v1, Lirz;

    const v2, 0x7f09053f

    const v3, 0x7f09053e

    const v4, 0x7f0200f8

    invoke-direct {v1, v2, v3, v4}, Lirz;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    return-object v0
.end method

.method public e()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 146
    :try_start_0
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return v0

    .line 147
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public f()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "BOAS_VINDAS_E_NOVIDADES"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 138
    const-string v1, "app_version"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public g()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 123
    :try_start_0
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v2

    const-string v3, "BOAS_VINDAS_E_NOVIDADES"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 130
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 131
    const-string v2, "app_version"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 132
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 133
    return-void

    .line 124
    :catch_0
    move-exception v0

    move v0, v1

    .line 125
    goto :goto_0
.end method

.method public h()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 156
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.READ_SMS"

    aput-object v2, v0, v1

    return-object v0
.end method
