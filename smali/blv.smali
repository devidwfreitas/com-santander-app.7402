.class final Lblv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Lbmf;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;JLbmf;)V
    .locals 1

    .prologue
    .line 121
    iput-object p1, p0, Lblv;->a:Landroid/content/Context;

    iput-object p2, p0, Lblv;->b:Ljava/lang/String;

    iput-wide p3, p0, Lblv;->c:J

    iput-object p5, p0, Lblv;->d:Lbmf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 124
    invoke-static {}, Lblt;->c()Lbmd;

    move-result-object v0

    if-nez v0, :cond_1

    .line 126
    invoke-static {}, Lbmd;->a()Lbmd;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    .line 128
    iget-object v1, p0, Lblv;->a:Landroid/content/Context;

    iget-object v2, p0, Lblv;->b:Ljava/lang/String;

    .line 132
    invoke-static {}, Lblt;->d()Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-static {v1, v2, v0, v3}, Lbme;->a(Landroid/content/Context;Ljava/lang/String;Lbmd;Ljava/lang/String;)V

    .line 135
    :cond_0
    new-instance v0, Lbmd;

    iget-wide v2, p0, Lblv;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbmd;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v0}, Lblt;->a(Lbmd;)Lbmd;

    .line 137
    invoke-static {}, Lblt;->c()Lbmd;

    move-result-object v0

    iget-object v1, p0, Lblv;->d:Lbmf;

    invoke-virtual {v0, v1}, Lbmd;->a(Lbmf;)V

    .line 138
    iget-object v0, p0, Lblv;->a:Landroid/content/Context;

    iget-object v1, p0, Lblv;->b:Ljava/lang/String;

    iget-object v2, p0, Lblv;->d:Lbmf;

    .line 142
    invoke-static {}, Lblt;->d()Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-static {v0, v1, v2, v3}, Lbme;->a(Landroid/content/Context;Ljava/lang/String;Lbmf;Ljava/lang/String;)V

    .line 144
    :cond_1
    return-void
.end method
