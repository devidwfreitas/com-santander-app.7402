.class public abstract Ldsa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ldsa",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Ldsn;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ldsf;

.field private f:Ljava/lang/Integer;

.field private g:Ldsd;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ldsi;

.field private m:Ldps;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ldsf;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Ldsn;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ldsn;

    invoke-direct {v0}, Ldsn;-><init>()V

    :goto_0
    iput-object v0, p0, Ldsa;->a:Ldsn;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldsa;->h:Z

    iput-boolean v2, p0, Ldsa;->i:Z

    iput-boolean v2, p0, Ldsa;->j:Z

    iput-boolean v2, p0, Ldsa;->k:Z

    iput-object v1, p0, Ldsa;->m:Ldps;

    iput p1, p0, Ldsa;->b:I

    iput-object p2, p0, Ldsa;->c:Ljava/lang/String;

    iput-object p3, p0, Ldsa;->e:Ldsf;

    new-instance v0, Ldrr;

    invoke-direct {v0}, Ldrr;-><init>()V

    invoke-virtual {p0, v0}, Ldsa;->a(Ldsi;)Ldsa;

    invoke-static {p2}, Ldsa;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ldsa;->d:I

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Ldsa;)Ldsn;
    .locals 1

    iget-object v0, p0, Ldsa;->a:Ldsn;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Ldsa;->b:I

    return v0
.end method

.method public a(Ldsa;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldsa",
            "<TT;>;)I"
        }
    .end annotation

    invoke-virtual {p0}, Ldsa;->m()Ldsc;

    move-result-object v0

    invoke-virtual {p1}, Ldsa;->m()Ldsc;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ldsa;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Ldsa;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Ldsc;->ordinal()I

    move-result v1

    invoke-virtual {v0}, Ldsc;->ordinal()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public final a(I)Ldsa;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ldsa",
            "<*>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ldsa;->f:Ljava/lang/Integer;

    return-object p0
.end method

.method public a(Ldps;)Ldsa;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldps;",
            ")",
            "Ldsa",
            "<*>;"
        }
    .end annotation

    iput-object p1, p0, Ldsa;->m:Ldps;

    return-object p0
.end method

.method public a(Ldsd;)Ldsa;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldsd;",
            ")",
            "Ldsa",
            "<*>;"
        }
    .end annotation

    iput-object p1, p0, Ldsa;->g:Ldsd;

    return-object p0
.end method

.method public a(Ldsi;)Ldsa;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldsi;",
            ")",
            "Ldsa",
            "<*>;"
        }
    .end annotation

    iput-object p1, p0, Ldsa;->l:Ldsi;

    return-object p0
.end method

.method protected abstract a(Ldry;)Ldse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldry;",
            ")",
            "Ldse",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected a(Ldsl;)Ldsl;
    .locals 0

    return-object p1
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public b()I
    .locals 1

    iget v0, p0, Ldsa;->d:I

    return v0
.end method

.method public b(Ldsl;)V
    .locals 1

    iget-object v0, p0, Ldsa;->e:Ldsf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldsa;->e:Ldsf;

    invoke-interface {v0, p1}, Ldsf;->a(Ldsl;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Ldsn;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldsa;->a:Ldsn;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Ldsn;->a(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldsa;->c:Ljava/lang/String;

    return-object v0
.end method

.method c(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Ldsa;->g:Ldsd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldsa;->g:Ldsd;

    invoke-virtual {v0, p0}, Ldsd;->b(Ldsa;)V

    :cond_0
    sget-boolean v0, Ldsn;->a:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_2

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Ldsb;

    invoke-direct {v3, p0, p1, v0, v1}, Ldsb;-><init>(Ldsa;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Ldsa;->a:Ldsn;

    invoke-virtual {v2, p1, v0, v1}, Ldsn;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Ldsa;->a:Ldsn;

    invoke-virtual {p0}, Ldsa;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldsn;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ldsa;

    invoke-virtual {p0, p1}, Ldsa;->a(Ldsa;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ldsa;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ldps;
    .locals 1

    iget-object v0, p0, Ldsa;->m:Ldps;

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ldsa;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ldsa;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Ldsa;->h:Z

    return v0
.end method

.method public m()Ldsc;
    .locals 1

    sget-object v0, Ldsc;->zzT:Ldsc;

    return-object v0
.end method

.method public final n()I
    .locals 1

    iget-object v0, p0, Ldsa;->l:Ldsi;

    invoke-interface {v0}, Ldsi;->a()I

    move-result v0

    return v0
.end method

.method public o()Ldsi;
    .locals 1

    iget-object v0, p0, Ldsa;->l:Ldsi;

    return-object v0
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldsa;->j:Z

    return-void
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Ldsa;->j:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ldsa;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ldsa;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ldsa;->m()Ldsc;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldsa;->f:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
