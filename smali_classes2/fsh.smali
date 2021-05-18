.class public Lfsh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfsi;


# instance fields
.field private a:Lmip;

.field private b:Landroid/app/Activity;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Landroid/content/SharedPreferences;

.field private g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lfsj;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lfsj;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lfsh;->a:Lmip;

    .line 26
    const-string v0, "avaliacaoApp"

    iput-object v0, p0, Lfsh;->e:Ljava/lang/String;

    .line 28
    const-string v0, "transacaoKey"

    iput-object v0, p0, Lfsh;->g:Ljava/lang/String;

    .line 29
    const-string v0, "versionAppKey"

    iput-object v0, p0, Lfsh;->h:Ljava/lang/String;

    .line 30
    const-string v0, "validacaoCPFKey"

    iput-object v0, p0, Lfsh;->i:Ljava/lang/String;

    .line 31
    const-string v0, "avalieMaisTarde"

    iput-object v0, p0, Lfsh;->j:Ljava/lang/String;

    .line 32
    const-string v0, "avalieAgora"

    iput-object v0, p0, Lfsh;->k:Ljava/lang/String;

    .line 33
    const-string v0, "naoObrigado"

    iput-object v0, p0, Lfsh;->l:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lfsh;->b:Landroid/app/Activity;

    .line 40
    iput-object p2, p0, Lfsh;->o:Lfsj;

    .line 41
    const-string v0, "avaliacaoApp"

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lfsh;->f:Landroid/content/SharedPreferences;

    .line 44
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lfsh;->n:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfsh;->d:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    iget-object v0, p0, Lfsh;->f:Landroid/content/SharedPreferences;

    const-string v1, "versionAppKey"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-direct {p0}, Lfsh;->e()V

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfsh;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfsh;->c:Ljava/lang/String;

    .line 56
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const-string v1, "Error"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lfsh;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    const-string v1, "versionAppKey"

    iget-object v2, p0, Lfsh;->n:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lfsh;->f:Landroid/content/SharedPreferences;

    const-string v1, "validacaoCPFKey"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lfsh;->f:Landroid/content/SharedPreferences;

    const-string v1, "validacaoCPFKey"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnag;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lfsh;->a:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lfsh;->g()V

    .line 84
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-direct {p0}, Lfsh;->i()V

    .line 79
    invoke-direct {p0}, Lfsh;->h()V

    goto :goto_0

    .line 82
    :cond_1
    invoke-direct {p0}, Lfsh;->h()V

    goto :goto_0
.end method

.method private g()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 87
    iget-object v0, p0, Lfsh;->f:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lfsh;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 88
    iget-object v1, p0, Lfsh;->f:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lfsh;->m:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lfsh;->o:Lfsj;

    invoke-interface {v0}, Lfsj;->a()V

    .line 106
    :cond_0
    :goto_0
    iget-object v0, p0, Lfsh;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lfsh;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 108
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 109
    return-void

    .line 93
    :cond_1
    const-string v2, "avalieMaisTarde"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    iget-object v0, p0, Lfsh;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lfsh;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0, v4}, Lmir;->c(Z)V

    .line 96
    iget-object v0, p0, Lfsh;->o:Lfsj;

    invoke-interface {v0}, Lfsj;->a()V

    goto :goto_0

    .line 98
    :cond_2
    if-eqz v0, :cond_0

    .line 99
    const-string v0, "avalieAgora"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "naoObrigado"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    :cond_3
    iget-object v0, p0, Lfsh;->f:Landroid/content/SharedPreferences;

    const-string v1, "versionAppKey"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfsh;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-direct {p0}, Lfsh;->e()V

    .line 102
    iget-object v0, p0, Lfsh;->o:Lfsj;

    invoke-interface {v0}, Lfsj;->a()V

    goto :goto_0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 146
    iget-object v0, p0, Lfsh;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->k()Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lfsh;->b:Landroid/app/Activity;

    const-string v2, "avaliacaoApp"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lfsh;->f:Landroid/content/SharedPreferences;

    .line 150
    iget-object v1, p0, Lfsh;->f:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 151
    const-string v2, "validacaoCPFKey"

    invoke-static {v0}, Lnag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 153
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 156
    iget-object v0, p0, Lfsh;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lfsh;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 158
    iget-object v1, p0, Lfsh;->m:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 160
    iget-object v0, p0, Lfsh;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmir;->c(Z)V

    .line 161
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lfsh;->f()V

    .line 67
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lfsh;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lfsh;->m:Ljava/lang/String;

    const-string v2, "avalieAgora"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    iget-object v1, p0, Lfsh;->g:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 118
    iget-object v0, p0, Lfsh;->o:Lfsj;

    invoke-interface {v0}, Lfsj;->b()V

    .line 119
    iget-object v0, p0, Lfsh;->o:Lfsj;

    iget-object v1, p0, Lfsh;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lfsj;->a(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 124
    iget-object v0, p0, Lfsh;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lfsh;->m:Ljava/lang/String;

    const-string v2, "avalieMaisTarde"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    iget-object v1, p0, Lfsh;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 127
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 129
    iget-object v0, p0, Lfsh;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmir;->c(Z)V

    .line 131
    iget-object v0, p0, Lfsh;->o:Lfsj;

    invoke-interface {v0}, Lfsj;->b()V

    .line 132
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lfsh;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lfsh;->m:Ljava/lang/String;

    const-string v2, "naoObrigado"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    iget-object v1, p0, Lfsh;->g:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    iget-object v0, p0, Lfsh;->o:Lfsj;

    invoke-interface {v0}, Lfsj;->b()V

    .line 142
    return-void
.end method
