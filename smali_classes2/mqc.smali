.class public Lmqc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lmkt; = null

.field public static b:Lcom/santander/app/contacorrente/domain/Conta; = null

.field private static final d:Ljava/lang/String; = "validarAgenciaContaSantander"

.field private static final e:Ljava/lang/String; = "validarAgenciaOutrosBancos"


# instance fields
.field private c:Landroid/app/Activity;

.field private f:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lmqc;->c:Landroid/app/Activity;

    .line 49
    invoke-static {p1}, Lano;->a(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lmqc;->f:Landroid/app/Dialog;

    .line 50
    return-void
.end method

.method static synthetic a(Lmqc;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lmqc;->f:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public a(Lgkw;)V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Lmqx;

    new-instance v1, Lmqf;

    invoke-direct {v1, p0, p1}, Lmqf;-><init>(Lmqc;Lgkw;)V

    iget-object v2, p0, Lmqc;->c:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lmqx;-><init>(Lgkv;Landroid/app/Activity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 69
    invoke-virtual {v0, v1}, Lmqx;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 70
    return-void
.end method

.method public a(Lgkw;Liq;)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lmqc;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 107
    :try_start_0
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v0

    invoke-virtual {v0}, Lgnz;->b()Lje;

    move-result-object v0

    new-instance v1, Lmqj;

    invoke-direct {v1, p0, p1}, Lmqj;-><init>(Lmqc;Lgkw;)V

    invoke-virtual {v0, p2, v1}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lgkw;Lmku;)V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lmqy;

    new-instance v1, Lmqd;

    invoke-direct {v1, p0, p1}, Lmqd;-><init>(Lmqc;Lgkw;)V

    iget-object v2, p0, Lmqc;->c:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lmqy;-><init>(Lgkv;Landroid/app/Activity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lmku;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 59
    invoke-virtual {v0, v1}, Lmqy;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 60
    return-void
.end method

.method public a(Lgkw;Lmlj;)V
    .locals 3

    .prologue
    .line 73
    new-instance v0, Lmqz;

    new-instance v1, Lmqg;

    invoke-direct {v1, p0, p1}, Lmqg;-><init>(Lmqc;Lgkw;)V

    iget-object v2, p0, Lmqc;->c:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lmqz;-><init>(Lgkv;Landroid/app/Activity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lmlj;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 78
    invoke-virtual {v0, v1}, Lmqz;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 79
    return-void
.end method

.method public a(Lgkw;Lmlt;)V
    .locals 4

    .prologue
    .line 82
    new-instance v0, Lmrg;

    new-instance v1, Lmqh;

    invoke-direct {v1, p0, p1}, Lmqh;-><init>(Lmqc;Lgkw;)V

    iget-object v2, p0, Lmqc;->c:Landroid/app/Activity;

    const-string v3, "validarAgenciaContaSantander"

    invoke-direct {v0, v1, v2, v3}, Lmrg;-><init>(Lgkv;Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lmlt;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 87
    invoke-virtual {v0, v1}, Lmrg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 88
    return-void
.end method

.method public a(Lmkw;)V
    .locals 3

    .prologue
    .line 100
    new-instance v0, Lmra;

    iget-object v1, p0, Lmqc;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmra;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lmkw;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lmra;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 101
    return-void
.end method

.method public b(Lgkw;)V
    .locals 5

    .prologue
    .line 134
    const-string v0, ""

    .line 135
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 136
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v1

    const-string v2, "transfer/v1/listPopularBanksISPB"

    sget-object v3, Lim;->POST:Lim;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lgnz;->a(Ljava/lang/String;Lim;Ljava/lang/String;Z)Liq;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lmqc;->f:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 143
    :try_start_0
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v1

    invoke-virtual {v1}, Lgnz;->b()Lje;

    move-result-object v1

    new-instance v2, Lmqk;

    invoke-direct {v2, p0, p1}, Lmqk;-><init>(Lmqc;Lgkw;)V

    invoke-virtual {v1, v0, v2}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Lgkw;Liq;)V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lmqc;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 205
    :try_start_0
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v0

    invoke-virtual {v0}, Lgnz;->b()Lje;

    move-result-object v0

    new-instance v1, Lmqm;

    invoke-direct {v1, p0, p1}, Lmqm;-><init>(Lmqc;Lgkw;)V

    invoke-virtual {v0, p2, v1}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Lgkw;Lmlt;)V
    .locals 4

    .prologue
    .line 91
    new-instance v0, Lmrg;

    new-instance v1, Lmqi;

    invoke-direct {v1, p0, p1}, Lmqi;-><init>(Lmqc;Lgkw;)V

    iget-object v2, p0, Lmqc;->c:Landroid/app/Activity;

    const-string v3, "validarAgenciaOutrosBancos"

    invoke-direct {v0, v1, v2, v3}, Lmrg;-><init>(Lgkv;Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lmlt;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 96
    invoke-virtual {v0, v1}, Lmrg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    return-void
.end method

.method public c(Lgkw;)V
    .locals 5

    .prologue
    .line 170
    const-string v0, ""

    .line 171
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 172
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v1

    const-string v2, "transfer/v1/listAllISPB"

    sget-object v3, Lim;->POST:Lim;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lgnz;->a(Ljava/lang/String;Lim;Ljava/lang/String;Z)Liq;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lmqc;->f:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 179
    :try_start_0
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v1

    invoke-virtual {v1}, Lgnz;->b()Lje;

    move-result-object v1

    new-instance v2, Lmql;

    invoke-direct {v2, p0, p1}, Lmql;-><init>(Lmqc;Lgkw;)V

    invoke-virtual {v1, v0, v2}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c(Lgkw;Liq;)V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lmqc;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 231
    :try_start_0
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v0

    invoke-virtual {v0}, Lgnz;->b()Lje;

    move-result-object v0

    new-instance v1, Lmqe;

    invoke-direct {v1, p0, p1}, Lmqe;-><init>(Lmqc;Lgkw;)V

    invoke-virtual {v0, p2, v1}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    goto :goto_0
.end method
