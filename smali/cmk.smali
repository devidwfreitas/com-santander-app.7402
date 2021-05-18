.class public Lcmk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected a:J

.field final synthetic b:Lcmh;


# direct methods
.method public constructor <init>(Lcmh;)V
    .locals 2

    .prologue
    .line 143
    iput-object p1, p0, Lcmk;->b:Lcmh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcmk;->a:J

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 198
    iget-wide v0, p0, Lcmk;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 199
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcmk;->a:J

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-wide v0, p0, Lcmk;->a:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcmk;->a:J

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcmk;->b:Lcmh;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcmh;->b(Lcmh;Z)Z

    .line 156
    :cond_0
    :goto_0
    iget-object v0, p0, Lcmk;->b:Lcmh;

    invoke-static {v0}, Lcmh;->a(Lcmh;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcmk;->b:Lcmh;

    invoke-static {v0}, Lcmh;->f(Lcmh;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcmk;->b:Lcmh;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcmh;->a(Lcmh;Z)Z

    .line 159
    iget-object v0, p0, Lcmk;->b:Lcmh;

    invoke-static {v0}, Lcmh;->a(Lcmh;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    const-string v0, "GoogleConversionReporter"

    const-string v1, "Dispatch thread is interrupted."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcmk;->b:Lcmh;

    invoke-static {v0, v5}, Lcmh;->b(Lcmh;Z)Z

    .line 192
    return-void

    .line 161
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcmk;->b:Lcmh;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcmh;->a(Lcmh;Z)Z

    .line 162
    iget-object v0, p0, Lcmk;->b:Lcmh;

    invoke-static {v0}, Lcmh;->f(Lcmh;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcmg;

    .line 163
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    if-eqz v0, :cond_0

    .line 168
    :try_start_4
    iget-object v1, p0, Lcmk;->b:Lcmh;

    .line 169
    invoke-static {v1}, Lcmh;->c(Lcmh;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcmg;->e:Ljava/lang/String;

    iget-object v3, v0, Lcmg;->f:Ljava/lang/String;

    iget-boolean v4, v0, Lcmg;->b:Z

    .line 168
    invoke-static {v1, v2, v3, v4}, Lcmn;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 171
    iget-object v1, p0, Lcmk;->b:Lcmh;

    invoke-static {v1}, Lcmh;->e(Lcmh;)Lcml;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcml;->a(Lcmg;)V

    goto :goto_0

    .line 174
    :cond_2
    iget-object v1, p0, Lcmk;->b:Lcmh;

    invoke-virtual {v1, v0}, Lcmh;->a(Lcmg;)I

    move-result v1

    .line 175
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 176
    iget-object v1, p0, Lcmk;->b:Lcmh;

    invoke-static {v1}, Lcmh;->e(Lcmh;)Lcml;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcml;->a(Lcmg;)V

    .line 177
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcmk;->a:J

    goto :goto_0

    .line 178
    :cond_3
    if-nez v1, :cond_4

    .line 179
    iget-object v1, p0, Lcmk;->b:Lcmh;

    invoke-static {v1}, Lcmh;->e(Lcmh;)Lcml;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcml;->c(Lcmg;)V

    .line 181
    invoke-direct {p0}, Lcmk;->a()V

    .line 182
    iget-wide v0, p0, Lcmk;->a:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    .line 184
    :cond_4
    iget-object v1, p0, Lcmk;->b:Lcmh;

    invoke-static {v1}, Lcmh;->e(Lcmh;)Lcml;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcml;->c(Lcmg;)V

    .line 185
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcmk;->a:J
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method
