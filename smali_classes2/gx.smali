.class public Lgx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgw;


# static fields
.field protected static final a:Ljava/lang/String; = "main"

.field private static b:Ljava/lang/String; = null

.field private static c:Ljava/lang/String; = null

.field private static d:Ljava/lang/String; = null

.field private static final e:Ljava/lang/String; = "tealium_init_count"

.field private static final f:Ljava/lang/String; = "tealium_initialized"

.field private static final g:Ljava/lang/String; = "TealiumService"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method private static a()Lnjn;
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lgy;

    invoke-direct {v0}, Lgy;-><init>()V

    return-object v0
.end method

.method public static a(Landroid/app/Application;Ljava/util/Properties;)V
    .locals 6

    .prologue
    .line 46
    invoke-static {p1}, Lgx;->a(Ljava/util/Properties;)V

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 54
    :cond_0
    sget-object v0, Lgx;->d:Ljava/lang/String;

    sget-object v1, Lgx;->b:Ljava/lang/String;

    sget-object v2, Lgx;->c:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lnkj;->a(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnkj;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lnkj;->j()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lgx;->b()Lnjo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {v0}, Lnkj;->i()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lgx;->c()Lnkd;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    const-string v1, "main"

    invoke-static {v1, v0}, Lnkg;->a(Ljava/lang/String;Lnkj;)Lnkg;

    move-result-object v0

    .line 65
    invoke-static {}, Lgx;->d()Lnjq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnkg;->a(Lnjq;)V

    .line 68
    invoke-virtual {v0}, Lnkg;->e()Lnjz;

    move-result-object v1

    invoke-virtual {v1}, Lnjz;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 69
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "tealium_init_count"

    const-string v4, "tealium_init_count"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 72
    invoke-virtual {v0}, Lnkg;->e()Lnjz;

    move-result-object v0

    invoke-virtual {v0}, Lnjz;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "tealium_initialized"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method private static a(Ljava/util/Properties;)V
    .locals 2

    .prologue
    .line 100
    const-string v0, "profile"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lgv;

    const-string v1, "profile key not found"

    invoke-direct {v0, v1}, Lgv;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    const-string v0, "environment"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 103
    new-instance v0, Lgv;

    const-string v1, "environment key not found"

    invoke-direct {v0, v1}, Lgv;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    const-string v0, "account"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 105
    new-instance v0, Lgv;

    const-string v1, "account key not found"

    invoke-direct {v0, v1}, Lgv;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_2
    const-string v0, "account"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgx;->d:Ljava/lang/String;

    .line 108
    const-string v0, "tealiiumProfile"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgx;->b:Ljava/lang/String;

    .line 109
    const-string v0, "tealiumEnvironment"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgx;->c:Ljava/lang/String;

    .line 110
    return-void
.end method

.method private static b()Lnjo;
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lgz;

    invoke-direct {v0}, Lgz;-><init>()V

    return-object v0
.end method

.method private static c()Lnkd;
    .locals 1

    .prologue
    .line 154
    new-instance v0, Lha;

    invoke-direct {v0}, Lha;-><init>()V

    return-object v0
.end method

.method private static d()Lnjq;
    .locals 3

    .prologue
    .line 178
    new-instance v0, Lhb;

    const-string v1, "logger"

    const-string v2, "Logs dispatches"

    invoke-direct {v0, v1, v2}, Lhb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 81
    const-string v0, "main"

    invoke-static {v0}, Lnkg;->b(Ljava/lang/String;)Lnkg;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lnkg;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 87
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 91
    const-string v0, "main"

    invoke-static {v0}, Lnkg;->b(Ljava/lang/String;)Lnkg;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, p1, p2}, Lnkg;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 97
    :cond_0
    return-void
.end method
