.class public Lhfc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "prefs_emprestimo_manager"

.field private static final b:Ljava/lang/String; = "key_data_renegociacao"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(JJ)J
    .locals 6

    .prologue
    .line 55
    invoke-static {p0, p1}, Lhfc;->a(J)Ljava/util/Calendar;

    move-result-object v2

    .line 56
    invoke-static {p2, p3}, Lhfc;->a(J)Ljava/util/Calendar;

    move-result-object v3

    .line 58
    const-wide/16 v0, 0x0

    .line 59
    :goto_0
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 62
    const-wide/16 v4, 0x7

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 67
    :cond_0
    return-wide v0

    .line 65
    :cond_1
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0
.end method

.method private static a(J)Ljava/util/Calendar;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 45
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 46
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 47
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 48
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 49
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 51
    return-object v0
.end method

.method public static a()V
    .locals 6

    .prologue
    .line 24
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 25
    invoke-static {}, Lhfc;->c()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "key_data_renegociacao"

    .line 26
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 27
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 29
    invoke-static {}, Lgpu;->a()V

    .line 30
    return-void
.end method

.method public static b()Z
    .locals 6

    .prologue
    const-wide/high16 v4, -0x8000000000000000L

    const/4 v0, 0x0

    .line 34
    invoke-static {}, Lhfc;->c()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "key_data_renegociacao"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 35
    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v0

    .line 38
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lhfc;->a(JJ)J

    move-result-wide v2

    .line 40
    const-wide/16 v4, 0x7

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static c()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 71
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    .line 72
    const-string v1, "prefs_emprestimo_manager"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
