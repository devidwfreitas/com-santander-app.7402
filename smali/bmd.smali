.class Lbmd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "com.facebook.appevents.SessionInfo.sessionStartTime"

.field private static final b:Ljava/lang/String; = "com.facebook.appevents.SessionInfo.sessionEndTime"

.field private static final c:Ljava/lang/String; = "com.facebook.appevents.SessionInfo.interruptionCount"

.field private static final d:Ljava/lang/String; = "com.facebook.appevents.SessionInfo.sessionId"


# instance fields
.field private e:Ljava/lang/Long;

.field private f:Ljava/lang/Long;

.field private g:I

.field private h:Ljava/lang/Long;

.field private i:Lbmf;

.field private j:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lbmd;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/UUID;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/UUID;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lbmd;->e:Ljava/lang/Long;

    .line 53
    iput-object p2, p0, Lbmd;->f:Ljava/lang/Long;

    .line 54
    iput-object p3, p0, Lbmd;->j:Ljava/util/UUID;

    .line 55
    return-void
.end method

.method public static a()Lbmd;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const-wide/16 v8, 0x0

    .line 64
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v1

    .line 63
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 66
    const-string v2, "com.facebook.appevents.SessionInfo.sessionStartTime"

    invoke-interface {v1, v2, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 67
    const-string v4, "com.facebook.appevents.SessionInfo.sessionEndTime"

    invoke-interface {v1, v4, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 68
    const-string v6, "com.facebook.appevents.SessionInfo.sessionId"

    invoke-interface {v1, v6, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 70
    cmp-long v7, v2, v8

    if-eqz v7, :cond_0

    cmp-long v7, v4, v8

    if-eqz v7, :cond_0

    if-nez v6, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-object v0

    .line 74
    :cond_1
    new-instance v0, Lbmd;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lbmd;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 75
    const-string v2, "com.facebook.appevents.SessionInfo.interruptionCount"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lbmd;->g:I

    .line 76
    invoke-static {}, Lbmf;->a()Lbmf;

    move-result-object v1

    iput-object v1, v0, Lbmd;->i:Lbmf;

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lbmd;->h:Ljava/lang/Long;

    .line 78
    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v0, Lbmd;->j:Ljava/util/UUID;

    goto :goto_0
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 86
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 87
    const-string v1, "com.facebook.appevents.SessionInfo.sessionStartTime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    const-string v1, "com.facebook.appevents.SessionInfo.sessionEndTime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    const-string v1, "com.facebook.appevents.SessionInfo.interruptionCount"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    const-string v1, "com.facebook.appevents.SessionInfo.sessionId"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 93
    invoke-static {}, Lbmf;->b()V

    .line 94
    return-void
.end method


# virtual methods
.method public a(Lbmf;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lbmd;->i:Lbmf;

    .line 142
    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lbmd;->e:Ljava/lang/Long;

    .line 106
    return-void
.end method

.method public b(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lbmd;->f:Ljava/lang/Long;

    .line 110
    return-void
.end method

.method public c()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lbmd;->e:Ljava/lang/Long;

    return-object v0
.end method

.method public d()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lbmd;->f:Ljava/lang/Long;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lbmd;->g:I

    return v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lbmd;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbmd;->g:I

    .line 118
    return-void
.end method

.method public g()J
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lbmd;->h:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lbmd;->h:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public h()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lbmd;->j:Ljava/util/UUID;

    return-object v0
.end method

.method public i()J
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Lbmd;->e:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbmd;->f:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 130
    :cond_0
    const-wide/16 v0, 0x0

    .line 133
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lbmd;->f:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lbmd;->e:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public j()Lbmf;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lbmd;->i:Lbmf;

    return-object v0
.end method

.method public k()V
    .locals 4

    .prologue
    .line 150
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v0

    .line 149
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 152
    const-string v1, "com.facebook.appevents.SessionInfo.sessionStartTime"

    iget-object v2, p0, Lbmd;->e:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 153
    const-string v1, "com.facebook.appevents.SessionInfo.sessionEndTime"

    iget-object v2, p0, Lbmd;->f:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 154
    const-string v1, "com.facebook.appevents.SessionInfo.interruptionCount"

    iget v2, p0, Lbmd;->g:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 155
    const-string v1, "com.facebook.appevents.SessionInfo.sessionId"

    iget-object v2, p0, Lbmd;->j:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 158
    iget-object v0, p0, Lbmd;->i:Lbmf;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lbmd;->i:Lbmf;

    invoke-virtual {v0}, Lbmf;->e()V

    .line 161
    :cond_0
    return-void
.end method
