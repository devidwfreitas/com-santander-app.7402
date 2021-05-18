.class public Lmxc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "clipboard_codigo_barras_prefs"

.field private static final b:Ljava/lang/String; = "clipboard_codigo_barras_prefs_codigo_barras"


# instance fields
.field private c:Lmxb;

.field private d:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lmxb;

    invoke-direct {v0, p1}, Lmxb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmxc;->c:Lmxb;

    .line 63
    const-string v0, "clipboard_codigo_barras_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lmxc;->d:Landroid/content/SharedPreferences;

    .line 64
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lmxc;->d:Landroid/content/SharedPreferences;

    const-string v1, "clipboard_codigo_barras_prefs_codigo_barras"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lmxc;->b()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_0

    .line 70
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_0

    .line 71
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_1

    .line 72
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    .line 72
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lmxc;->c:Lmxb;

    invoke-virtual {v0}, Lmxb;->a()Ljava/lang/CharSequence;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\D+"

    const-string v2, ""

    .line 79
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0}, Lmxc;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lmxc;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "clipboard_codigo_barras_prefs_codigo_barras"

    .line 89
    invoke-virtual {p0}, Lmxc;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
