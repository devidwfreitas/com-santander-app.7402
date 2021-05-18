.class public Lcom/santander/app/MinhaConta;
.super Landroid/app/Application;
.source "SourceFile"

# interfaces
.implements Lcom/datami/smi/SdStateChangeListener;


# static fields
.field public static final A:I = 0x0

.field public static final B:I = 0x1

.field public static final C:I = 0x2

.field public static final D:I = 0x0

.field public static final E:I = 0x1

.field public static final F:I = 0x2

.field public static final G:I = 0x3

.field public static final H:I = 0x4

.field public static final I:I = 0x0

.field public static final J:I = 0x1

.field public static final K:I = 0x2

.field public static final L:I = 0x3

.field public static final M:I = 0x4

.field public static final N:I = 0x3

.field public static final O:I = 0x4

.field public static final P:I = 0x5

.field public static final Q:I = 0x0

.field public static final R:I = 0x1

.field public static final S:I = 0x2

.field public static final T:I = 0x3

.field public static final U:I = 0x4

.field public static final V:I = 0x5

.field public static final W:I = 0x6

.field public static final X:I = 0x7

.field public static final Y:I = 0x0

.field public static final Z:I = 0x1

.field public static final a:I = 0x1

.field public static final aa:I = 0x0

.field public static final ab:I = 0x1

.field public static final ac:I = 0x2

.field public static final ad:I = 0x0

.field public static final ae:I = 0x1

.field public static final af:I = 0x0

.field public static final ag:I = 0x1

.field public static final ah:I = 0x0

.field public static final ai:I = 0x1

.field public static aj:I = 0x0

.field public static ak:I = 0x0

.field public static al:I = 0x0

.field public static final am:I = 0x493e0

.field public static final an:Z = true

.field private static ao:Landroid/content/Context; = null

.field private static ap:Z = false

.field private static aq:Z = false

.field private static ar:Ljava/lang/String; = null

.field private static as:Z = false

.field private static au:Z = false

.field private static final av:Ljava/lang/String;

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field public static final f:I = 0x6

.field public static final g:I = 0x7

.field public static final h:I = 0x8

.field public static final i:I = 0x0

.field public static final j:I = 0x1

.field public static final k:I = 0x2

.field public static final l:I = 0x3

.field public static final m:I = 0x4

.field public static final n:I = 0x5

.field public static final o:I = 0x6

.field public static final p:I = 0x7

.field public static final q:I = 0x8

.field public static final r:I = 0x9

.field public static final s:I = 0xa

.field public static final t:I = 0xb

.field public static final u:I = 0xc

.field public static final v:I = 0xd

.field public static final w:I = 0x63

.field public static final x:Ljava/lang/String; = "extra_type_emprestimo"

.field public static final y:I = 0x0

.field public static final z:I = 0x1


# instance fields
.field private at:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    sput-boolean v1, Lcom/santander/app/MinhaConta;->ap:Z

    .line 35
    sput-boolean v1, Lcom/santander/app/MinhaConta;->aq:Z

    .line 36
    const-string v0, ""

    sput-object v0, Lcom/santander/app/MinhaConta;->ar:Ljava/lang/String;

    .line 37
    sput-boolean v1, Lcom/santander/app/MinhaConta;->as:Z

    .line 41
    const-class v0, Lcom/santander/app/MinhaConta;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/santander/app/MinhaConta;->av:Ljava/lang/String;

    .line 261
    sput v1, Lcom/santander/app/MinhaConta;->aj:I

    .line 262
    const/4 v0, 0x1

    sput v0, Lcom/santander/app/MinhaConta;->ak:I

    .line 263
    const/4 v0, 0x2

    sput v0, Lcom/santander/app/MinhaConta;->al:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Landroid/app/Application;
    .locals 2

    .prologue
    .line 68
    const-class v1, Lcom/santander/app/MinhaConta;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/santander/app/MinhaConta;->ao:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 76
    sput-object p0, Lcom/santander/app/MinhaConta;->ao:Landroid/content/Context;

    .line 77
    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 92
    const-class v1, Lcom/santander/app/MinhaConta;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/santander/app/MinhaConta;->aq:Z

    .line 93
    sput-object p0, Lcom/santander/app/MinhaConta;->ar:Ljava/lang/String;

    .line 94
    sput-boolean p1, Lcom/santander/app/MinhaConta;->as:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit v1

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Z)V
    .locals 2

    .prologue
    .line 84
    const-class v0, Lcom/santander/app/MinhaConta;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/santander/app/MinhaConta;->ap:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit v0

    return-void

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b()Landroid/content/Context;
    .locals 2

    .prologue
    .line 72
    const-class v0, Lcom/santander/app/MinhaConta;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/santander/app/MinhaConta;->ao:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b(Z)V
    .locals 0

    .prologue
    .line 286
    sput-boolean p0, Lcom/santander/app/MinhaConta;->au:Z

    .line 287
    return-void
.end method

.method public static declared-synchronized c()Z
    .locals 2

    .prologue
    .line 80
    const-class v0, Lcom/santander/app/MinhaConta;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/santander/app/MinhaConta;->ap:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    const-class v0, Lcom/santander/app/MinhaConta;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/santander/app/MinhaConta;->ar:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized e()Z
    .locals 2

    .prologue
    .line 98
    const-class v0, Lcom/santander/app/MinhaConta;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/santander/app/MinhaConta;->as:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized f()Z
    .locals 2

    .prologue
    .line 102
    const-class v0, Lcom/santander/app/MinhaConta;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/santander/app/MinhaConta;->aq:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized g()V
    .locals 2

    .prologue
    .line 106
    const-class v1, Lcom/santander/app/MinhaConta;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/santander/app/MinhaConta;->aq:Z

    .line 107
    const-string v0, ""

    sput-object v0, Lcom/santander/app/MinhaConta;->ar:Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    sput-boolean v0, Lcom/santander/app/MinhaConta;->as:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit v1

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static h()Z
    .locals 1

    .prologue
    .line 282
    sget-boolean v0, Lcom/santander/app/MinhaConta;->au:Z

    return v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 290
    const-string v0, "yh7ianl0g0sg"

    .line 291
    const-string v1, "production"

    .line 292
    new-instance v2, Lcom/adjust/sdk/AdjustConfig;

    invoke-direct {v2, p0, v0, v1}, Lcom/adjust/sdk/AdjustConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->onCreate(Lcom/adjust/sdk/AdjustConfig;)V

    .line 295
    new-instance v0, Lfit;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfit;-><init>(Lfis;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/MinhaConta;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 296
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 336
    const-string v0, "SovereignBrasilProfile"

    invoke-virtual {p0, v0, v3}, Lcom/santander/app/MinhaConta;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 338
    const-string v1, "ni"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 339
    if-eqz v1, :cond_0

    .line 340
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 341
    const-string v1, "ni"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 342
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 344
    const-string v0, "APP_NEW_INSTALL"

    const-string v1, "true"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :goto_0
    return-void

    .line 346
    :cond_0
    const-string v0, "APP_NEW_INSTALL"

    const-string v1, "false"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 278
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 279
    return-void
.end method

.method public onChange(Lcom/datami/smi/SmiResult;)V
    .locals 4

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/datami/smi/SmiResult;->getSdState()Lcom/datami/smi/SdState;

    move-result-object v0

    .line 159
    sget-object v1, Lcom/santander/app/MinhaConta;->av:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sponsored data state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sget-object v1, Lcom/datami/smi/SdState;->SD_AVAILABLE:Lcom/datami/smi/SdState;

    if-ne v0, v1, :cond_1

    .line 162
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiq;->g(Z)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    sget-object v1, Lcom/datami/smi/SdState;->SD_NOT_AVAILABLE:Lcom/datami/smi/SdState;

    if-ne v0, v1, :cond_2

    .line 165
    sget-object v0, Lcom/santander/app/MinhaConta;->av:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/datami/smi/SmiResult;->getSdReason()Lcom/datami/smi/SdReason;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiq;->g(Z)V

    goto :goto_0

    .line 167
    :cond_2
    sget-object v1, Lcom/datami/smi/SdState;->WIFI:Lcom/datami/smi/SdState;

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 45
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 47
    sput-object p0, Lcom/santander/app/MinhaConta;->ao:Landroid/content/Context;

    .line 49
    invoke-static {p0, v4}, Lfrq;->a(Landroid/app/Application;Z)V

    .line 50
    const-string v0, "Abertura"

    const-string v1, "Aplicativo"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "Outros_Opcao_Nao_manter_Activities"

    invoke-virtual {p0}, Lcom/santander/app/MinhaConta;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "always_finish_activities"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    const-string v0, "habilitada"

    :goto_0
    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {p0}, Lmyn;->a(Landroid/app/Application;)V

    .line 60
    invoke-direct {p0}, Lcom/santander/app/MinhaConta;->i()V

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/phishingsms/service/PhishingSMSService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/MinhaConta;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 64
    invoke-direct {p0}, Lcom/santander/app/MinhaConta;->j()V

    .line 65
    return-void

    .line 51
    :cond_0
    const-string v0, "nao habilitada"

    goto :goto_0
.end method
