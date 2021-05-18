.class Lgry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:J = 0x3a980L

.field private static b:Z

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 149
    sput-boolean v0, Lgry;->b:Z

    .line 150
    sput-boolean v0, Lgry;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lgrt;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lgry;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    sput-boolean v0, Lgry;->b:Z

    .line 154
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    sput-boolean v0, Lgry;->c:Z

    .line 158
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 162
    :cond_0
    :goto_0
    sget-boolean v0, Lgry;->c:Z

    if-nez v0, :cond_1

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    const-wide/32 v0, 0x3a980

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 169
    :goto_1
    sget-boolean v0, Lgry;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "SessionControl"

    const-string v1, "refreshSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v0, 0x0

    sput-boolean v0, Lgry;->b:Z

    .line 173
    :try_start_1
    invoke-static {}, Lhat;->b()Lhbi;

    move-result-object v0

    invoke-virtual {v0}, Lhbi;->c()Lfwu;

    move-result-object v0

    .line 176
    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lgry;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    goto :goto_0

    .line 165
    :catch_1
    move-exception v0

    goto :goto_1

    .line 195
    :cond_1
    return-void
.end method
