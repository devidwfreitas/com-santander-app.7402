.class final Lblw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(JLandroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 157
    iput-wide p1, p0, Lblw;->a:J

    iput-object p3, p0, Lblw;->b:Landroid/content/Context;

    iput-object p4, p0, Lblw;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 160
    invoke-static {}, Lblt;->c()Lbmd;

    move-result-object v0

    if-nez v0, :cond_1

    .line 161
    new-instance v0, Lbmd;

    iget-wide v2, p0, Lblw;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lbmd;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v0}, Lblt;->a(Lbmd;)Lbmd;

    .line 162
    iget-object v0, p0, Lblw;->b:Landroid/content/Context;

    iget-object v1, p0, Lblw;->c:Ljava/lang/String;

    .line 166
    invoke-static {}, Lblt;->d()Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-static {v0, v1, v4, v2}, Lbme;->a(Landroid/content/Context;Ljava/lang/String;Lbmf;Ljava/lang/String;)V

    .line 189
    :cond_0
    :goto_0
    invoke-static {}, Lblt;->c()Lbmd;

    move-result-object v0

    iget-wide v2, p0, Lblw;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbmd;->b(Ljava/lang/Long;)V

    .line 190
    invoke-static {}, Lblt;->c()Lbmd;

    move-result-object v0

    invoke-virtual {v0}, Lbmd;->k()V

    .line 191
    return-void

    .line 167
    :cond_1
    invoke-static {}, Lblt;->c()Lbmd;

    move-result-object v0

    invoke-virtual {v0}, Lbmd;->d()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-wide v0, p0, Lblw;->a:J

    .line 169
    invoke-static {}, Lblt;->c()Lbmd;

    move-result-object v2

    invoke-virtual {v2}, Lbmd;->d()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 170
    invoke-static {}, Lblt;->e()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 173
    iget-object v0, p0, Lblw;->b:Landroid/content/Context;

    iget-object v1, p0, Lblw;->c:Ljava/lang/String;

    .line 176
    invoke-static {}, Lblt;->c()Lbmd;

    move-result-object v2

    .line 177
    invoke-static {}, Lblt;->d()Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-static {v0, v1, v2, v3}, Lbme;->a(Landroid/content/Context;Ljava/lang/String;Lbmd;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lblw;->b:Landroid/content/Context;

    iget-object v1, p0, Lblw;->c:Ljava/lang/String;

    .line 182
    invoke-static {}, Lblt;->d()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-static {v0, v1, v4, v2}, Lbme;->a(Landroid/content/Context;Ljava/lang/String;Lbmf;Ljava/lang/String;)V

    .line 183
    new-instance v0, Lbmd;

    iget-wide v2, p0, Lblw;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lbmd;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v0}, Lblt;->a(Lbmd;)Lbmd;

    goto :goto_0

    .line 184
    :cond_2
    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 185
    invoke-static {}, Lblt;->c()Lbmd;

    move-result-object v0

    invoke-virtual {v0}, Lbmd;->f()V

    goto :goto_0
.end method
