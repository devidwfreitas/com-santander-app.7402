.class Lnlb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[B

.field final synthetic c:Z

.field final synthetic d:I

.field final synthetic e:Lnla;


# direct methods
.method constructor <init>(Lnla;Ljava/lang/String;[BZI)V
    .locals 0

    iput-object p1, p0, Lnlb;->e:Lnla;

    iput-object p2, p0, Lnlb;->a:Ljava/lang/String;

    iput-object p3, p0, Lnlb;->b:[B

    iput-boolean p4, p0, Lnlb;->c:Z

    iput p5, p0, Lnlb;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    const-string v0, "GET"

    iget-object v1, p0, Lnlb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnlb;->e:Lnla;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lnla;->a(Lnla;J)J

    iget-object v0, p0, Lnlb;->e:Lnla;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lnla;->b(Lnla;J)J

    iget-object v0, p0, Lnlb;->e:Lnla;

    invoke-static {v0}, Lnla;->a(Lnla;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lnlb;->b:[B

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-boolean v1, p0, Lnlb;->c:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnlb;->e:Lnla;

    invoke-static {v1, v0}, Lnla;->a(Lnla;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lnlb;->e:Lnla;

    invoke-static {v1}, Lnla;->b(Lnla;)Lnhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnhc;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_3
    iget-object v1, p0, Lnlb;->e:Lnla;

    invoke-static {v1, v0}, Lnla;->b(Lnla;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "HEAD"

    iget-object v1, p0, Lnlb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnlb;->e:Lnla;

    iget v1, p0, Lnlb;->d:I

    invoke-static {v0, v1}, Lnla;->a(Lnla;I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
