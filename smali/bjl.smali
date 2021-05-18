.class public Lbjl;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"

# interfaces
.implements Lbka;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/GraphRequest;",
            "Lbkb;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lbiu;

.field private final c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:Lbkb;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lbiu;Ljava/util/Map;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Lbiu;",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/GraphRequest;",
            "Lbkb;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 44
    iput-object p2, p0, Lbjl;->b:Lbiu;

    .line 45
    iput-object p3, p0, Lbjl;->a:Ljava/util/Map;

    .line 46
    iput-wide p4, p0, Lbjl;->f:J

    .line 48
    invoke-static {}, Lbhv;->k()J

    move-result-wide v0

    iput-wide v0, p0, Lbjl;->c:J

    .line 49
    return-void
.end method

.method static synthetic a(Lbjl;)Lbiu;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lbjl;->b:Lbiu;

    return-object v0
.end method

.method private a(J)V
    .locals 7

    .prologue
    .line 52
    iget-object v0, p0, Lbjl;->g:Lbkb;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lbjl;->g:Lbkb;

    invoke-virtual {v0, p1, p2}, Lbkb;->a(J)V

    .line 56
    :cond_0
    iget-wide v0, p0, Lbjl;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lbjl;->d:J

    .line 58
    iget-wide v0, p0, Lbjl;->d:J

    iget-wide v2, p0, Lbjl;->e:J

    iget-wide v4, p0, Lbjl;->c:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-wide v0, p0, Lbjl;->d:J

    iget-wide v2, p0, Lbjl;->f:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 59
    :cond_1
    invoke-direct {p0}, Lbjl;->c()V

    .line 61
    :cond_2
    return-void
.end method

.method static synthetic b(Lbjl;)J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lbjl;->d:J

    return-wide v0
.end method

.method static synthetic c(Lbjl;)J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lbjl;->f:J

    return-wide v0
.end method

.method private c()V
    .locals 7

    .prologue
    .line 64
    iget-wide v0, p0, Lbjl;->d:J

    iget-wide v2, p0, Lbjl;->e:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 65
    iget-object v0, p0, Lbjl;->b:Lbiu;

    invoke-virtual {v0}, Lbiu;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiv;

    .line 66
    instance-of v1, v0, Lbiw;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lbjl;->b:Lbiu;

    invoke-virtual {v1}, Lbiu;->c()Landroid/os/Handler;

    move-result-object v1

    .line 70
    check-cast v0, Lbiw;

    .line 72
    if-nez v1, :cond_1

    .line 73
    iget-object v1, p0, Lbjl;->b:Lbiu;

    iget-wide v2, p0, Lbjl;->d:J

    iget-wide v4, p0, Lbjl;->f:J

    invoke-interface/range {v0 .. v5}, Lbiw;->a(Lbiu;JJ)V

    goto :goto_0

    .line 76
    :cond_1
    new-instance v2, Lbjm;

    invoke-direct {v2, p0, v0}, Lbjm;-><init>(Lbjl;Lbiw;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 89
    :cond_2
    iget-wide v0, p0, Lbjl;->d:J

    iput-wide v0, p0, Lbjl;->e:J

    .line 91
    :cond_3
    return-void
.end method


# virtual methods
.method a()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lbjl;->d:J

    return-wide v0
.end method

.method public a(Lcom/facebook/GraphRequest;)V
    .locals 1

    .prologue
    .line 94
    if-eqz p1, :cond_0

    iget-object v0, p0, Lbjl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbkb;

    :goto_0
    iput-object v0, p0, Lbjl;->g:Lbkb;

    .line 95
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lbjl;->f:J

    return-wide v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 127
    iget-object v0, p0, Lbjl;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbkb;

    .line 128
    invoke-virtual {v0}, Lbkb;->c()V

    goto :goto_0

    .line 131
    :cond_0
    invoke-direct {p0}, Lbjl;->c()V

    .line 132
    return-void
.end method

.method public write(I)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lbjl;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 120
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lbjl;->a(J)V

    .line 121
    return-void
.end method

.method public write([B)V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lbjl;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 108
    array-length v0, p1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lbjl;->a(J)V

    .line 109
    return-void
.end method

.method public write([BII)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lbjl;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 114
    int-to-long v0, p3

    invoke-direct {p0, v0, v1}, Lbjl;->a(J)V

    .line 115
    return-void
.end method
