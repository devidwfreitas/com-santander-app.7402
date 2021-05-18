.class public Ljwj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljwi;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lgkw;

.field private c:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Ljwj;->a:Landroid/app/Activity;

    .line 48
    invoke-static {p1}, Lano;->a(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Ljwj;->c:Landroid/app/Dialog;

    .line 49
    return-void
.end method

.method static synthetic a(Ljwj;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Ljwj;->c:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public a(Lgkw;Liq;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Ljwj;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 100
    iput-object p1, p0, Ljwj;->b:Lgkw;

    .line 103
    :try_start_0
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v0

    invoke-virtual {v0}, Lgnz;->b()Lje;

    move-result-object v0

    new-instance v1, Ljwn;

    invoke-direct {v1, p0, p1}, Ljwn;-><init>(Ljwj;Lgkw;)V

    invoke-virtual {v0, p2, v1}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lgkw;Ljsq;)V
    .locals 5

    .prologue
    .line 78
    :try_start_0
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    const-string v1, "/recurring-scheduling/v1/add-scheduling"

    sget-object v2, Lim;->POST:Lim;

    new-instance v3, Lorg/json/JSONObject;

    new-instance v4, Lejm;

    invoke-direct {v4}, Lejm;-><init>()V

    invoke-virtual {v4, p2}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 79
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v1

    invoke-virtual {v1}, Lgnp;->b()Lie;

    move-result-object v1

    new-instance v2, Ljwm;

    invoke-direct {v2, p0, p1}, Ljwm;-><init>(Ljwj;Lgkw;)V

    invoke-virtual {v1, v0, v2}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    const-class v1, Ljwj;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lgkw;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lgkw;Ljss;)V
    .locals 3

    .prologue
    .line 53
    iput-object p1, p0, Ljwj;->b:Lgkw;

    .line 54
    new-instance v0, Ljwq;

    iget-object v1, p0, Ljwj;->a:Landroid/app/Activity;

    new-instance v2, Ljwk;

    invoke-direct {v2, p0, p1}, Ljwk;-><init>(Ljwj;Lgkw;)V

    invoke-direct {v0, v1, v2}, Ljwq;-><init>(Landroid/app/Activity;Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljss;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 60
    invoke-virtual {v0, v1}, Ljwq;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 61
    return-void
.end method

.method public a(Lgkw;Ljsv;)V
    .locals 3

    .prologue
    .line 65
    iput-object p1, p0, Ljwj;->b:Lgkw;

    .line 66
    new-instance v0, Ljwr;

    iget-object v1, p0, Ljwj;->a:Landroid/app/Activity;

    new-instance v2, Ljwl;

    invoke-direct {v2, p0, p1}, Ljwl;-><init>(Ljwj;Lgkw;)V

    invoke-direct {v0, v1, v2}, Ljwr;-><init>(Landroid/app/Activity;Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljsv;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 72
    invoke-virtual {v0, v1}, Ljwr;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    return-void
.end method

.method public b(Lgkw;Liq;)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Ljwj;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 129
    iput-object p1, p0, Ljwj;->b:Lgkw;

    .line 132
    :try_start_0
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v0

    invoke-virtual {v0}, Lgnz;->b()Lje;

    move-result-object v0

    new-instance v1, Ljwo;

    invoke-direct {v1, p0, p1}, Ljwo;-><init>(Ljwj;Lgkw;)V

    invoke-virtual {v0, p2, v1}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c(Lgkw;Liq;)V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Ljwj;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 158
    iput-object p1, p0, Ljwj;->b:Lgkw;

    .line 161
    :try_start_0
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v0

    invoke-virtual {v0}, Lgnz;->b()Lje;

    move-result-object v0

    new-instance v1, Ljwp;

    invoke-direct {v1, p0, p1}, Ljwp;-><init>(Ljwj;Lgkw;)V

    invoke-virtual {v0, p2, v1}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    goto :goto_0
.end method
