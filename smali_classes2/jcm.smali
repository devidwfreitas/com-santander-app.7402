.class public Ljcm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljck;


# instance fields
.field private a:Lmiq;

.field private b:Ljcl;

.field private c:Ljava/lang/String;

.field private d:Landroid/app/Activity;

.field private e:Lnaf;


# direct methods
.method public constructor <init>(Ljcl;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lnaf;

    invoke-direct {v0}, Lnaf;-><init>()V

    iput-object v0, p0, Ljcm;->e:Lnaf;

    .line 44
    iput-object p1, p0, Ljcm;->b:Ljcl;

    .line 45
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Ljcm;->a:Lmiq;

    .line 46
    iput-object p2, p0, Ljcm;->d:Landroid/app/Activity;

    .line 47
    return-void
.end method

.method static synthetic a(Ljcm;)Ljcl;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Ljcm;->b:Ljcl;

    return-object v0
.end method

.method private c()Lgkv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgkv",
            "<",
            "Ljcg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Ljcn;

    invoke-direct {v0, p0}, Ljcn;-><init>(Ljcm;)V

    return-object v0
.end method

.method private d()Ljcv;
    .locals 14

    .prologue
    const/16 v12, 0x20

    .line 81
    const-string v5, ""

    .line 82
    const-string v4, ""

    .line 83
    const-string v3, ""

    .line 84
    const-string v7, "SMP"

    .line 85
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    .line 87
    const-string v2, "2"

    .line 88
    const-string v6, ""

    .line 89
    const-string v0, ""

    .line 93
    :try_start_0
    iget-object v1, p0, Ljcm;->e:Lnaf;

    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 94
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 93
    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v10, "UTF-8"

    .line 94
    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 93
    invoke-virtual {v1, v9}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v5

    .line 96
    iget-object v1, p0, Ljcm;->e:Lnaf;

    iget-object v9, p0, Ljcm;->a:Lmiq;

    invoke-virtual {v9}, Lmiq;->k()Lfwv;

    move-result-object v9

    invoke-virtual {v9}, Lfwv;->e()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v1, v9}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v4

    .line 97
    if-eqz v4, :cond_0

    const-string v1, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    :cond_0
    iget-object v1, p0, Ljcm;->a:Lmiq;

    invoke-virtual {v1}, Lmiq;->k()Lfwv;

    invoke-static {}, Lfwv;->a()Ljava/lang/String;

    move-result-object v4

    .line 101
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ANDROID  "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v9, p0, Ljcm;->a:Lmiq;

    invoke-virtual {v9}, Lmiq;->k()Lfwv;

    move-result-object v9

    invoke-virtual {v9}, Lfwv;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v12, :cond_2

    .line 103
    const/4 v9, 0x0

    const/16 v10, 0x20

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 106
    :cond_2
    iget-object v9, p0, Ljcm;->e:Lnaf;

    const-string v10, "UTF-8"

    invoke-virtual {v1, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v9, v1}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v3

    .line 108
    iget-object v1, p0, Ljcm;->e:Lnaf;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v1, v9}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v2

    .line 110
    new-instance v1, Lmzk;

    iget-object v9, p0, Ljcm;->d:Landroid/app/Activity;

    invoke-direct {v1, v9}, Lmzk;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Lmzk;->b()Ljava/lang/String;

    move-result-object v6

    .line 111
    iget-object v1, p0, Ljcm;->e:Lnaf;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v1, v9}, Lnaf;->b([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 113
    :try_start_1
    iget-object v6, p0, Ljcm;->e:Lnaf;

    invoke-static {}, Lmwz;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v6, v9}, Lnaf;->b([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 119
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "|"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "|ANDROID|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 121
    new-instance v5, Ljcv;

    invoke-direct {v5}, Ljcv;-><init>()V

    .line 122
    invoke-virtual {v5, v3}, Ljcv;->c(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v5, v4}, Ljcv;->d(Ljava/lang/String;)V

    .line 124
    iget-object v3, p0, Ljcm;->c:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljcv;->e(Ljava/lang/String;)V

    .line 125
    iget-object v3, p0, Ljcm;->a:Lmiq;

    invoke-virtual {v3}, Lmiq;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljcv;->a(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v5, v2}, Ljcv;->h(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v5, v1}, Ljcv;->f(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Ljcm;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljcv;->g(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v5, v0}, Ljcv;->i(Ljava/lang/String;)V

    .line 132
    return-object v5

    .line 115
    :catch_0
    move-exception v1

    move-object v13, v1

    move-object v1, v6

    move-object v6, v13

    .line 116
    :goto_1
    const-string v9, "Error"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :catch_1
    move-exception v6

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Ljcm;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Ljcm;->c:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public a(Ljcv;)V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Ljct;

    invoke-direct {p0}, Ljcm;->c()Lgkv;

    move-result-object v1

    invoke-direct {p0}, Ljcm;->d()Ljcv;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljct;-><init>(Lgkv;Ljcv;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljcv;

    invoke-virtual {v0, v1}, Ljct;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 63
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 6

    .prologue
    .line 136
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v1

    .line 138
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 140
    new-instance v0, Lmzk;

    iget-object v3, p0, Ljcm;->d:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lmzk;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lmzk;->a()Lmzl;

    move-result-object v3

    .line 142
    const-string v0, ""

    .line 144
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    iget-object v1, p0, Ljcm;->d:Landroid/app/Activity;

    invoke-static {v1}, Lmyz;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 151
    const-string v4, "A"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-virtual {v3}, Lmzl;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {v3}, Lmzl;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-virtual {v3}, Lmzl;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-virtual {v3}, Lmzl;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {v3}, Lmzl;->g()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-static {v2, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 161
    const-string v0, "|"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 164
    :try_start_1
    iget-object v1, p0, Ljcm;->e:Lnaf;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lnaf;->b([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 169
    :goto_1
    return-object v0

    .line 145
    :catch_0
    move-exception v1

    .line 146
    const-string v4, "VERSION NAME"

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    :catch_1
    move-exception v0

    .line 166
    const-string v0, ""

    goto :goto_1
.end method
