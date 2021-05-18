.class final Lehe;
.super Ljava/lang/Object;

# interfaces
.implements Lehd;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:I

.field private final c:Lehr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lehr",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(ILehr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lehr",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lehe;->a:Ljava/lang/Object;

    iput p1, p0, Lehe;->b:I

    iput-object p2, p0, Lehe;->c:Lehr;

    return-void
.end method

.method private a()V
    .locals 6

    iget v0, p0, Lehe;->d:I

    iget v1, p0, Lehe;->e:I

    add-int/2addr v0, v1

    iget v1, p0, Lehe;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lehe;->f:Ljava/lang/Exception;

    if-nez v0, :cond_1

    iget-object v0, p0, Lehe;->c:Lehr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lehr;->a(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lehe;->c:Lehr;

    new-instance v1, Ljava/util/concurrent/ExecutionException;

    iget v2, p0, Lehe;->e:I

    iget v3, p0, Lehe;->b:I

    const/16 v4, 0x36

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " out of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " underlying tasks failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lehe;->f:Ljava/lang/Exception;

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lehr;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v1, p0, Lehe;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lehe;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lehe;->e:I

    iput-object p1, p0, Lehe;->f:Ljava/lang/Exception;

    invoke-direct {p0}, Lehe;->a()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    iget-object v1, p0, Lehe;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lehe;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lehe;->d:I

    invoke-direct {p0}, Lehe;->a()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
