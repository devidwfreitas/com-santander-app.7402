.class public Lipn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lipi;


# static fields
.field private static final a:Ljava/lang/String; = "SemaforoCache_Prefs"

.field private static final b:Ljava/lang/String; = "SemaforoCache_Prefs_SemaforoList"


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lipm;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "semaforo_list"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lipm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lipn;->c:Ljava/util/List;

    .line 40
    if-eqz p1, :cond_0

    .line 41
    iget-object v0, p0, Lipn;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 43
    :cond_0
    invoke-direct {p0}, Lipn;->d()V

    .line 44
    return-void
.end method

.method public static a()Lipi;
    .locals 3

    .prologue
    .line 31
    invoke-static {}, Lipn;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 32
    const-string v1, "SemaforoCache_Prefs_SemaforoList"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    new-instance v0, Lipn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lipn;-><init>(Ljava/util/List;)V

    .line 35
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lejm;

    invoke-direct {v1}, Lejm;-><init>()V

    const-class v2, Lipn;

    invoke-virtual {v1, v0, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lipi;

    goto :goto_0
.end method

.method private b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lipm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lipn;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lipn;->c:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private static c()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 67
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SemaforoCache_Prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 71
    invoke-static {}, Lipn;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 73
    const-string v1, "SemaforoCache_Prefs_SemaforoList"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 75
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lipm;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lipo;
        .end annotation
    .end param

    .prologue
    .line 52
    invoke-direct {p0}, Lipn;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lipm;

    .line 53
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lipm;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lipo;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lipn;->a(Ljava/lang/String;)Lipm;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lipm;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
