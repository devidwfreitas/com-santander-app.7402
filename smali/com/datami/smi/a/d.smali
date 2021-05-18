.class public Lcom/datami/smi/a/d;
.super Ljava/lang/Thread;


# static fields
.field private static volatile a:Lcom/datami/smi/a/d;

.field private static b:Ljava/lang/Integer;

.field private static c:Ljava/lang/Integer;

.field private static d:Ljava/lang/String;

.field private static e:I

.field private static final u:[B

.field private static v:I


# instance fields
.field private f:Ljava/util/concurrent/BlockingQueue;

.field private g:J

.field private h:I

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field private r:J

.field private s:J

.field private t:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x0

    const/16 v0, 0x175

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/a/d;->u:[B

    const/16 v0, 0x3a

    sput v0, Lcom/datami/smi/a/d;->v:I

    const/4 v0, 0x0

    sput-object v0, Lcom/datami/smi/a/d;->a:Lcom/datami/smi/a/d;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/datami/smi/a/d;->b:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/datami/smi/a/d;->c:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/a/d;->u:[B

    const/16 v2, 0x54

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/a/d;->u:[B

    const/16 v3, 0x10

    aget-byte v2, v2, v3

    or-int/lit16 v3, v2, 0x118

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/d;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/datami/smi/a/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/a/d;->d:Ljava/lang/String;

    const/16 v0, 0x800

    sput v0, Lcom/datami/smi/a/d;->e:I

    return-void

    nop

    :array_0
    .array-data 1
        0x21t
        -0x30t
        -0x1bt
        -0x64t
        0x14t
        -0xet
        0xct
        -0xat
        0x6t
        -0x6t
        -0x46t
        0x54t
        -0xet
        0x8t
        -0x4at
        0x54t
        0x2t
        -0x12t
        0x14t
        0x0t
        -0x52t
        0x55t
        -0xbt
        0xbt
        -0xct
        -0x3t
        0x4t
        -0x3t
        0x6t
        -0x1bt
        0x14t
        0xft
        -0x2t
        -0x1bt
        0x16t
        0x5t
        -0x7t
        -0xet
        -0x10t
        0x13t
        0x10t
        0x2t
        -0x4t
        -0x1bt
        0x16t
        0x5t
        -0x7t
        -0x44t
        -0x4t
        -0xbt
        -0x2t
        0x14t
        -0xet
        0x0t
        -0x43t
        0x42t
        0x16t
        -0xet
        -0x1ft
        0x1bt
        0x14t
        -0xet
        0x13t
        -0x15t
        0x19t
        -0x35t
        0x2dt
        0x0t
        0x1t
        -0x1at
        0x13t
        0x10t
        0x2t
        -0x4t
        -0x4ft
        0x50t
        -0x1t
        -0x32t
        -0x19t
        0xat
        0xat
        -0x3t
        -0xbt
        -0xbt
        0x18t
        -0x25t
        0x14t
        0xft
        -0x2t
        -0x1bt
        0x16t
        0x5t
        -0x7t
        -0xbt
        0x18t
        -0x30t
        0x11t
        -0x13t
        0x2dt
        0x0t
        0x1t
        -0x1at
        0x13t
        0x10t
        0x2t
        -0x4t
        0x3t
        -0x2t
        -0xbt
        0x3t
        0xft
        0x1t
        -0x9t
        0x6t
        -0x6t
        -0x46t
        0x54t
        -0xet
        0x8t
        -0x4at
        0x54t
        0x2t
        -0x12t
        0x14t
        0x0t
        -0x52t
        0x4et
        0x7t
        -0xbt
        -0x2ct
        -0x19t
        0x2dt
        0x7t
        -0x8t
        -0x7t
        0xbt
        -0x46t
        0x4et
        -0x53t
        0x51t
        0x3t
        -0x2t
        -0xbt
        0x3t
        0xft
        0x1t
        -0x52t
        0x56t
        -0x1t
        -0x11t
        0x7t
        -0x1t
        -0x21t
        0x2dt
        0x7t
        -0x6t
        0x7t
        -0x22t
        0x25t
        -0xft
        0x11t
        -0xft
        -0x43t
        -0x3t
        0x6t
        -0x26t
        0x11t
        -0x13t
        0x2dt
        0x0t
        0x1t
        -0x1at
        0x13t
        0x10t
        0x2t
        -0x4t
        0x16t
        -0xet
        -0x14t
        0x14t
        0xft
        -0x2t
        -0x1bt
        0x16t
        0x5t
        -0x7t
        -0x2t
        -0x10t
        0xdt
        -0x1at
        0x14t
        0xft
        -0x2t
        -0x1bt
        0x16t
        0x5t
        -0x7t
        0x1t
        0x3t
        0xbt
        -0x3t
        -0x16t
        0x14t
        0xft
        -0x2t
        -0x1bt
        0x16t
        0x5t
        -0x7t
        -0x44t
        -0xdt
        0x12t
        -0xet
        -0x10t
        0x13t
        0x10t
        0x2t
        -0x4t
        -0x1bt
        0x16t
        0x5t
        -0x7t
        0x8t
        -0x7t
        -0x29t
        0x2dt
        0x0t
        0x1t
        -0x8t
        -0x1t
        0x12t
        -0xat
        0x7t
        0x0t
        0x6t
        -0x4t
        -0xbt
        -0x2t
        0x14t
        -0xet
        0x0t
        -0x43t
        0x42t
        0x16t
        -0xet
        -0x20t
        0x24t
        0xat
        0x2t
        0x2t
        -0x21t
        0x14t
        0xft
        -0x2t
        0x0t
        0x0t
        0x6t
        -0xdt
        -0x10t
        0x16t
        0x5t
        -0x7t
        -0x44t
        0x50t
        -0x1t
        -0x32t
        -0x19t
        -0x2t
        -0x10t
        0xdt
        -0x1at
        0x14t
        0xft
        -0x2t
        -0x1bt
        0x16t
        0x5t
        -0x7t
        -0x44t
        -0x2t
        -0x11t
        0x14t
        0xft
        -0x2t
        -0x1bt
        0x16t
        0x5t
        -0x7t
        -0x44t
        0x16t
        -0xet
        -0x1ft
        0x11t
        -0x13t
        0x2dt
        0x0t
        0x1t
        -0x1at
        0x13t
        0x10t
        0x2t
        -0x4t
        -0x2t
        -0x11t
        0x14t
        0xft
        -0x2t
        -0x1bt
        0x16t
        0x5t
        -0x7t
        -0x4t
        -0xbt
        -0x2t
        0x14t
        -0xet
        0x0t
        -0x43t
        0x42t
        0x16t
        -0xet
        -0x14t
        0x14t
        0xft
        -0x2t
        0x0t
        0x0t
        0x6t
        -0xdt
        -0x10t
        0x16t
        0x5t
        -0x7t
        -0x44t
        0x50t
        -0x1t
        -0x32t
        -0x19t
        0x2dt
        0x7t
        -0x8t
        -0x7t
        0xbt
        -0x46t
        0x4et
        -0x53t
        0x42t
        0x4t
        0x1t
        -0x43t
        0x4ft
        -0x8t
        0x13t
        -0x56t
        0x50t
        -0x1t
        -0x4ct
        0x47t
        0xat
        0x4t
        -0x51t
        0x1t
        0x3t
        0xbt
        -0x3t
        -0x16t
        0x14t
        0xft
        -0x2t
        -0x1bt
        0x16t
        0x5t
        -0x7t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    sget v1, Lcom/datami/smi/a/d;->e:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/datami/smi/a/d;->f:Ljava/util/concurrent/BlockingQueue;

    iput-wide v2, p0, Lcom/datami/smi/a/d;->g:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/datami/smi/a/d;->h:I

    iput-wide v2, p0, Lcom/datami/smi/a/d;->i:J

    iput-wide v4, p0, Lcom/datami/smi/a/d;->j:J

    iput-wide v2, p0, Lcom/datami/smi/a/d;->k:J

    iput-wide v4, p0, Lcom/datami/smi/a/d;->l:J

    iput-wide v2, p0, Lcom/datami/smi/a/d;->m:J

    iput-wide v2, p0, Lcom/datami/smi/a/d;->n:J

    iput-wide v4, p0, Lcom/datami/smi/a/d;->o:J

    iput-wide v2, p0, Lcom/datami/smi/a/d;->p:J

    iput-wide v2, p0, Lcom/datami/smi/a/d;->q:J

    iput-wide v2, p0, Lcom/datami/smi/a/d;->r:J

    iput-wide v2, p0, Lcom/datami/smi/a/d;->s:J

    iput-wide v2, p0, Lcom/datami/smi/a/d;->t:J

    return-void
.end method

.method public static a()Lcom/datami/smi/a/d;
    .locals 2

    sget-object v0, Lcom/datami/smi/a/d;->a:Lcom/datami/smi/a/d;

    if-nez v0, :cond_1

    sget-object v1, Lcom/datami/smi/a/d;->b:Ljava/lang/Integer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/datami/smi/a/d;->a:Lcom/datami/smi/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/datami/smi/a/d;

    invoke-direct {v0}, Lcom/datami/smi/a/d;-><init>()V

    invoke-virtual {v0}, Lcom/datami/smi/a/d;->start()V

    sput-object v0, Lcom/datami/smi/a/d;->a:Lcom/datami/smi/a/d;

    :cond_0
    monitor-exit v1

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    sget-object v6, Lcom/datami/smi/a/d;->u:[B

    new-instance v7, Ljava/lang/String;

    rsub-int v1, p2, 0x169

    add-int/lit8 v3, p1, 0x3

    add-int/lit8 v0, p0, 0x43

    new-array v2, v3, [B

    add-int/lit8 v8, v3, -0x1

    if-nez v6, :cond_1

    move v3, v4

    move v5, v1

    :goto_0
    add-int/2addr v0, v1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v1, v0, -0x1

    :goto_1
    int-to-byte v0, v1

    aput-byte v0, v2, v3

    if-ne v3, v8, :cond_0

    invoke-direct {v7, v2, v4}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    aget-byte v0, v6, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    move v5, v1

    move v1, v0

    goto :goto_1
.end method

.method private a(Lcom/datami/smi/a/f;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/a/d;->u:[B

    const/16 v2, 0x42

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/a/d;->u:[B

    const/16 v3, 0x54

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    or-int/lit16 v3, v2, 0xe8

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/d;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/datami/smi/a/f;->a:Lcom/datami/smi/a/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/datami/smi/a/e;->a:[I

    iget-object v1, p1, Lcom/datami/smi/a/f;->a:Lcom/datami/smi/a/g;

    invoke-virtual {v1}, Lcom/datami/smi/a/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v1, Lcom/datami/smi/a/d;->c:Ljava/lang/Integer;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/datami/smi/a/d;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/datami/smi/a/d;->h:I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_1
    iget-wide v0, p1, Lcom/datami/smi/a/f;->b:J

    invoke-direct {p0, v0, v1}, Lcom/datami/smi/a/d;->g(J)V

    goto :goto_0

    :pswitch_2
    iget-wide v0, p1, Lcom/datami/smi/a/f;->b:J

    invoke-direct {p0, v0, v1}, Lcom/datami/smi/a/d;->h(J)V

    goto :goto_0

    :pswitch_3
    iget-wide v0, p1, Lcom/datami/smi/a/f;->b:J

    invoke-direct {p0, v0, v1}, Lcom/datami/smi/a/d;->i(J)V

    goto :goto_0

    :pswitch_4
    iget-wide v0, p1, Lcom/datami/smi/a/f;->b:J

    invoke-direct {p0, v0, v1}, Lcom/datami/smi/a/d;->j(J)V

    goto :goto_0

    :pswitch_5
    iget-wide v0, p1, Lcom/datami/smi/a/f;->b:J

    invoke-direct {p0, v0, v1}, Lcom/datami/smi/a/d;->k(J)V

    goto :goto_0

    :pswitch_6
    iget-wide v0, p1, Lcom/datami/smi/a/f;->b:J

    invoke-direct {p0, v0, v1}, Lcom/datami/smi/a/d;->l(J)V

    goto :goto_0

    :pswitch_7
    iget-wide v0, p1, Lcom/datami/smi/a/f;->b:J

    invoke-direct {p0, v0, v1}, Lcom/datami/smi/a/d;->m(J)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private b(Lcom/datami/smi/a/f;)V
    .locals 4

    sget v0, Lcom/datami/smi/a/d;->e:I

    iget-object v1, p0, Lcom/datami/smi/a/d;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/datami/smi/a/d;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/datami/smi/a/d;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/a/d;->u:[B

    const/16 v2, 0x13

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/a/d;->u:[B

    const/16 v3, 0x3f

    aget-byte v2, v2, v3

    neg-int v2, v2

    add-int/lit8 v3, v2, 0x2

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/d;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/datami/smi/a/f;->a:Lcom/datami/smi/a/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private d()V
    .locals 6

    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/datami/smi/a/d;->h:I

    iput-wide v2, p0, Lcom/datami/smi/a/d;->i:J

    iput-wide v2, p0, Lcom/datami/smi/a/d;->g:J

    iput-wide v4, p0, Lcom/datami/smi/a/d;->j:J

    iput-wide v2, p0, Lcom/datami/smi/a/d;->k:J

    iput-wide v4, p0, Lcom/datami/smi/a/d;->l:J

    iput-wide v2, p0, Lcom/datami/smi/a/d;->m:J

    iput-wide v2, p0, Lcom/datami/smi/a/d;->q:J

    iput-wide v2, p0, Lcom/datami/smi/a/d;->r:J

    iput-wide v2, p0, Lcom/datami/smi/a/d;->s:J

    iput-wide v2, p0, Lcom/datami/smi/a/d;->t:J

    return-void
.end method

.method private g(J)V
    .locals 7

    sget-object v1, Lcom/datami/smi/a/d;->c:Ljava/lang/Integer;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/datami/smi/a/d;->o:J

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    iput-wide p1, p0, Lcom/datami/smi/a/d;->o:J

    :cond_0
    iget-wide v2, p0, Lcom/datami/smi/a/d;->p:J

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    iput-wide p1, p0, Lcom/datami/smi/a/d;->p:J

    :cond_1
    iget-wide v2, p0, Lcom/datami/smi/a/d;->n:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/datami/smi/a/d;->n:J

    iget-wide v2, p0, Lcom/datami/smi/a/d;->n:J

    cmp-long v0, v2, p1

    if-lez v0, :cond_2

    iget-wide v2, p0, Lcom/datami/smi/a/d;->n:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/datami/smi/a/d;->n:J

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/datami/smi/a/d;->u:[B

    const/16 v3, 0x4d

    aget-byte v2, v2, v3

    neg-int v2, v2

    const/16 v3, 0x1e

    const/16 v4, 0x7e

    invoke-static {v2, v3, v4}, Lcom/datami/smi/a/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/datami/smi/a/d;->n:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private h(J)V
    .locals 7

    sget-object v1, Lcom/datami/smi/a/d;->c:Ljava/lang/Integer;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/datami/smi/a/d;->j:J

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    iput-wide p1, p0, Lcom/datami/smi/a/d;->j:J

    :cond_0
    iget-wide v2, p0, Lcom/datami/smi/a/d;->k:J

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    iput-wide p1, p0, Lcom/datami/smi/a/d;->k:J

    :cond_1
    iget-wide v2, p0, Lcom/datami/smi/a/d;->i:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/datami/smi/a/d;->i:J

    iget-wide v2, p0, Lcom/datami/smi/a/d;->i:J

    cmp-long v0, v2, p1

    if-lez v0, :cond_2

    iget-wide v2, p0, Lcom/datami/smi/a/d;->i:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/datami/smi/a/d;->i:J

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/datami/smi/a/d;->u:[B

    const/16 v3, 0x4d

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/a/d;->u:[B

    const/16 v4, 0x40

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/a/d;->u:[B

    const/16 v5, 0x4d

    aget-byte v4, v4, v5

    neg-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/datami/smi/a/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/datami/smi/a/d;->i:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private i(J)V
    .locals 7

    sget-object v1, Lcom/datami/smi/a/d;->c:Ljava/lang/Integer;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/datami/smi/a/d;->l:J

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    iput-wide p1, p0, Lcom/datami/smi/a/d;->l:J

    :cond_0
    iget-wide v2, p0, Lcom/datami/smi/a/d;->m:J

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    iput-wide p1, p0, Lcom/datami/smi/a/d;->m:J

    :cond_1
    iget-wide v2, p0, Lcom/datami/smi/a/d;->g:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/datami/smi/a/d;->g:J

    iget-wide v2, p0, Lcom/datami/smi/a/d;->g:J

    cmp-long v0, v2, p1

    if-lez v0, :cond_2

    iget-wide v2, p0, Lcom/datami/smi/a/d;->g:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/datami/smi/a/d;->g:J

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/datami/smi/a/d;->u:[B

    const/16 v3, 0x4d

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget v3, Lcom/datami/smi/a/d;->v:I

    ushr-int/lit8 v3, v3, 0x1

    const/16 v4, 0x139

    invoke-static {v2, v3, v4}, Lcom/datami/smi/a/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/datami/smi/a/d;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private j(J)V
    .locals 7

    sget-object v1, Lcom/datami/smi/a/d;->c:Ljava/lang/Integer;

    monitor-enter v1

    :try_start_0
    iput-wide p1, p0, Lcom/datami/smi/a/d;->q:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/datami/smi/a/d;->u:[B

    const/16 v3, 0xf6

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/a/d;->u:[B

    const/16 v4, 0xd

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/a/d;->u:[B

    const/16 v5, 0x14

    aget-byte v4, v4, v5

    neg-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/datami/smi/a/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/datami/smi/a/d;->q:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private k(J)V
    .locals 5

    sget-object v1, Lcom/datami/smi/a/d;->c:Ljava/lang/Integer;

    monitor-enter v1

    :try_start_0
    iput-wide p1, p0, Lcom/datami/smi/a/d;->r:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/datami/smi/a/d;->u:[B

    const/16 v3, 0x4d

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/a/d;->u:[B

    const/16 v4, 0x4f

    aget-byte v3, v3, v4

    or-int/lit8 v4, v3, 0x54

    invoke-static {v2, v3, v4}, Lcom/datami/smi/a/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/datami/smi/a/d;->r:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private l(J)V
    .locals 5

    sget-object v1, Lcom/datami/smi/a/d;->c:Ljava/lang/Integer;

    monitor-enter v1

    :try_start_0
    iput-wide p1, p0, Lcom/datami/smi/a/d;->s:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1e

    sget-object v3, Lcom/datami/smi/a/d;->u:[B

    const/16 v4, 0x17

    aget-byte v3, v3, v4

    const/16 v4, 0xa4

    invoke-static {v2, v3, v4}, Lcom/datami/smi/a/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/datami/smi/a/d;->s:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private m(J)V
    .locals 5

    sget-object v1, Lcom/datami/smi/a/d;->c:Ljava/lang/Integer;

    monitor-enter v1

    :try_start_0
    iput-wide p1, p0, Lcom/datami/smi/a/d;->t:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/datami/smi/a/d;->u:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/a/d;->u:[B

    const/16 v4, 0x70

    aget-byte v3, v3, v4

    neg-int v3, v3

    const/16 v4, 0x144

    invoke-static {v2, v3, v4}, Lcom/datami/smi/a/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/datami/smi/a/d;->t:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private n(J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/datami/smi/a/f;

    sget-object v3, Lcom/datami/smi/a/g;->b:Lcom/datami/smi/a/g;

    const/4 v6, 0x0

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/datami/smi/a/f;-><init>(Lcom/datami/smi/a/d;Lcom/datami/smi/a/g;JLcom/datami/smi/a/e;)V

    invoke-direct {p0, v1}, Lcom/datami/smi/a/d;->b(Lcom/datami/smi/a/f;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/datami/smi/a/f;

    sget-object v3, Lcom/datami/smi/a/g;->c:Lcom/datami/smi/a/g;

    const/4 v6, 0x0

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/datami/smi/a/f;-><init>(Lcom/datami/smi/a/d;Lcom/datami/smi/a/g;JLcom/datami/smi/a/e;)V

    invoke-direct {p0, v1}, Lcom/datami/smi/a/d;->b(Lcom/datami/smi/a/f;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 7

    new-instance v1, Lcom/datami/smi/a/f;

    sget-object v3, Lcom/datami/smi/a/g;->a:Lcom/datami/smi/a/g;

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/datami/smi/a/f;-><init>(Lcom/datami/smi/a/d;Lcom/datami/smi/a/g;JLcom/datami/smi/a/e;)V

    invoke-direct {p0, v1}, Lcom/datami/smi/a/d;->b(Lcom/datami/smi/a/f;)V

    return-void
.end method

.method public final b(J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/datami/smi/a/f;

    sget-object v3, Lcom/datami/smi/a/g;->d:Lcom/datami/smi/a/g;

    const/4 v6, 0x0

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/datami/smi/a/f;-><init>(Lcom/datami/smi/a/d;Lcom/datami/smi/a/g;JLcom/datami/smi/a/e;)V

    invoke-direct {p0, v1}, Lcom/datami/smi/a/d;->b(Lcom/datami/smi/a/f;)V

    goto :goto_0
.end method

.method public final c()Ljava/util/HashMap;
    .locals 10

    const-wide v8, 0x7fffffffffffffffL

    const-wide/16 v6, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/datami/smi/a/d;->u:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/a/d;->u:[B

    const/16 v3, 0x13

    aget-byte v2, v2, v3

    or-int/lit16 v3, v2, 0x97

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/d;->a(III)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/datami/smi/d/c;->a:Lcom/datami/smi/d/c;

    invoke-static {v2}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/datami/smi/a/d;->c:Ljava/lang/Integer;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/datami/smi/a/d;->i:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    const/16 v2, 0x1e

    sget-object v3, Lcom/datami/smi/a/d;->u:[B

    const/16 v4, 0xd

    aget-byte v3, v3, v4

    or-int/lit16 v4, v3, 0xb1

    invoke-static {v2, v3, v4}, Lcom/datami/smi/a/d;->a(III)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/datami/smi/a/d;->i:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-wide v2, p0, Lcom/datami/smi/a/d;->j:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    iget-wide v2, p0, Lcom/datami/smi/a/d;->j:J

    cmp-long v2, v2, v8

    if-gez v2, :cond_1

    sget v2, Lcom/datami/smi/a/d;->v:I

    and-int/lit16 v2, v2, 0xef

    sget-object v3, Lcom/datami/smi/a/d;->u:[B

    const/16 v4, 0xd

    aget-byte v3, v3, v4

    or-int/lit16 v4, v3, 0x146

    invoke-static {v2, v3, v4}, Lcom/datami/smi/a/d;->a(III)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/datami/smi/a/d;->j:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-wide v2, p0, Lcom/datami/smi/a/d;->k:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    sget v2, Lcom/datami/smi/a/d;->v:I

    and-int/lit16 v2, v2, 0xef

    sget-object v3, Lcom/datami/smi/a/d;->u:[B

    const/16 v4, 0xd

    aget-byte v3, v3, v4

    const/16 v4, 0x116

    invoke-static {v2, v3, v4}, Lcom/datami/smi/a/d;->a(III)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/datami/smi/a/d;->k:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget v2, p0, Lcom/datami/smi/a/d;->h:I

    if-lez v2, :cond_3

    const/16 v2, 0x2b

    sget-object v3, Lcom/datami/smi/a/d;->u:[B

    const/16 v4, 0x17

    aget-byte v3, v3, v4

    or-int/lit16 v4, v3, 0x80

    invoke-static {v2, v3, v4}, Lcom/datami/smi/a/d;->a(III)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/datami/smi/a/d;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-wide v2, p0, Lcom/datami/smi/a/d;->g:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_4

    const/16 v2, 0x1e

    sget-object v3, Lcom/datami/smi/a/d;->u:[B

    const/16 v4, 0x17

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/a/d;->u:[B

    const/16 v5, 0x165

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/datami/smi/a/d;->a(III)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/datami/smi/a/d;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-wide v2, p0, Lcom/datami/smi/a/d;->l:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_5

    iget-wide v2, p0, Lcom/datami/smi/a/d;->l:J

    cmp-long v2, v2, v8

    if-gez v2, :cond_5

    sget v2, Lcom/datami/smi/a/d;->v:I

    and-int/lit16 v2, v2, 0xef

    sget-object v3, Lcom/datami/smi/a/d;->u:[B

    const/16 v4, 0x17

    aget-byte v3, v3, v4

    const/16 v4, 0xc6

    invoke-static {v2, v3, v4}, Lcom/datami/smi/a/d;->a(III)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/datami/smi/a/d;->l:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-wide v2, p0, Lcom/datami/smi/a/d;->m:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_6

    sget v2, Lcom/datami/smi/a/d;->v:I

    and-int/lit16 v2, v2, 0xef

    sget-object v3, Lcom/datami/smi/a/d;->u:[B

    const/16 v4, 0x17

    aget-byte v3, v3, v4

    const/16 v4, 0x10c

    invoke-static {v2, v3, v4}, Lcom/datami/smi/a/d;->a(III)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/datami/smi/a/d;->m:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-wide v2, p0, Lcom/datami/smi/a/d;->q:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_7

    sget-object v2, Lcom/datami/smi/a/d;->u:[B

    const/16 v3, 0xf6

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/a/d;->u:[B

    const/16 v4, 0x7f

    aget-byte v3, v3, v4

    sget v4, Lcom/datami/smi/a/d;->v:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/datami/smi/a/d;->a(III)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/datami/smi/a/d;->q:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-wide v2, p0, Lcom/datami/smi/a/d;->r:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_8

    sget-object v2, Lcom/datami/smi/a/d;->u:[B

    const/16 v3, 0x4d

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/a/d;->u:[B

    const/16 v4, 0x70

    aget-byte v3, v3, v4

    neg-int v3, v3

    or-int/lit16 v4, v3, 0xa6

    invoke-static {v2, v3, v4}, Lcom/datami/smi/a/d;->a(III)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/datami/smi/a/d;->r:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-wide v2, p0, Lcom/datami/smi/a/d;->s:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_9

    const/16 v2, 0x1e

    sget-object v3, Lcom/datami/smi/a/d;->u:[B

    const/16 v4, 0x4f

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/a/d;->u:[B

    const/16 v5, 0x13

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/a/d;->a(III)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/datami/smi/a/d;->s:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-wide v2, p0, Lcom/datami/smi/a/d;->t:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_a

    sget-object v2, Lcom/datami/smi/a/d;->u:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/a/d;->u:[B

    const/16 v4, 0xd

    aget-byte v3, v3, v4

    const/16 v4, 0x95

    invoke-static {v2, v3, v4}, Lcom/datami/smi/a/d;->a(III)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/datami/smi/a/d;->t:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const/4 v2, 0x0

    iput v2, p0, Lcom/datami/smi/a/d;->h:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/datami/smi/a/d;->i:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/datami/smi/a/d;->g:J

    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/datami/smi/a/d;->j:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/datami/smi/a/d;->k:J

    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/datami/smi/a/d;->l:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/datami/smi/a/d;->m:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/datami/smi/a/d;->q:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/datami/smi/a/d;->r:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/datami/smi/a/d;->s:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/datami/smi/a/d;->t:J

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c(J)V
    .locals 7

    new-instance v1, Lcom/datami/smi/a/f;

    sget-object v3, Lcom/datami/smi/a/g;->e:Lcom/datami/smi/a/g;

    const/4 v6, 0x0

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/datami/smi/a/f;-><init>(Lcom/datami/smi/a/d;Lcom/datami/smi/a/g;JLcom/datami/smi/a/e;)V

    invoke-direct {p0, v1}, Lcom/datami/smi/a/d;->b(Lcom/datami/smi/a/f;)V

    return-void
.end method

.method public final d(J)V
    .locals 7

    new-instance v1, Lcom/datami/smi/a/f;

    sget-object v3, Lcom/datami/smi/a/g;->f:Lcom/datami/smi/a/g;

    const/4 v6, 0x0

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/datami/smi/a/f;-><init>(Lcom/datami/smi/a/d;Lcom/datami/smi/a/g;JLcom/datami/smi/a/e;)V

    invoke-direct {p0, v1}, Lcom/datami/smi/a/d;->b(Lcom/datami/smi/a/f;)V

    return-void
.end method

.method public final e(J)V
    .locals 7

    new-instance v1, Lcom/datami/smi/a/f;

    sget-object v3, Lcom/datami/smi/a/g;->g:Lcom/datami/smi/a/g;

    const/4 v6, 0x0

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/datami/smi/a/f;-><init>(Lcom/datami/smi/a/d;Lcom/datami/smi/a/g;JLcom/datami/smi/a/e;)V

    invoke-direct {p0, v1}, Lcom/datami/smi/a/d;->b(Lcom/datami/smi/a/f;)V

    return-void
.end method

.method public final f(J)V
    .locals 7

    new-instance v1, Lcom/datami/smi/a/f;

    sget-object v3, Lcom/datami/smi/a/g;->h:Lcom/datami/smi/a/g;

    const/4 v6, 0x0

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/datami/smi/a/f;-><init>(Lcom/datami/smi/a/d;Lcom/datami/smi/a/g;JLcom/datami/smi/a/e;)V

    invoke-direct {p0, v1}, Lcom/datami/smi/a/d;->b(Lcom/datami/smi/a/f;)V

    return-void
.end method

.method public run()V
    .locals 5

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/datami/smi/a/d;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/datami/smi/a/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/datami/smi/a/d;->u:[B

    const/16 v3, 0x42

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/a/d;->u:[B

    const/16 v4, 0x54

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    or-int/lit16 v4, v3, 0xe8

    invoke-static {v2, v3, v4}, Lcom/datami/smi/a/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/datami/smi/a/f;->a:Lcom/datami/smi/a/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/datami/smi/a/e;->a:[I

    iget-object v2, v0, Lcom/datami/smi/a/f;->a:Lcom/datami/smi/a/g;

    invoke-virtual {v2}, Lcom/datami/smi/a/g;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v1, Lcom/datami/smi/a/d;->c:Ljava/lang/Integer;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v0, p0, Lcom/datami/smi/a/d;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/datami/smi/a/d;->h:I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/datami/smi/a/d;->u:[B

    const/16 v1, 0x13

    aget-byte v0, v0, v1

    or-int/lit8 v1, v0, 0x1e

    const/16 v2, 0xe6

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/d;->a(III)Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/a/d;->u:[B

    const/16 v1, 0x9d

    aget-byte v0, v0, v1

    neg-int v0, v0

    sget-object v1, Lcom/datami/smi/a/d;->u:[B

    const/16 v2, 0x3f

    aget-byte v1, v1, v2

    neg-int v1, v1

    const/16 v2, 0x165

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/d;->a(III)Ljava/lang/String;

    return-void

    :pswitch_1
    :try_start_3
    iget-wide v0, v0, Lcom/datami/smi/a/f;->b:J

    invoke-direct {p0, v0, v1}, Lcom/datami/smi/a/d;->g(J)V

    goto :goto_0

    :pswitch_2
    iget-wide v0, v0, Lcom/datami/smi/a/f;->b:J

    invoke-direct {p0, v0, v1}, Lcom/datami/smi/a/d;->h(J)V

    goto :goto_0

    :pswitch_3
    iget-wide v0, v0, Lcom/datami/smi/a/f;->b:J

    invoke-direct {p0, v0, v1}, Lcom/datami/smi/a/d;->i(J)V

    goto :goto_0

    :pswitch_4
    iget-wide v0, v0, Lcom/datami/smi/a/f;->b:J

    invoke-direct {p0, v0, v1}, Lcom/datami/smi/a/d;->j(J)V

    goto :goto_0

    :pswitch_5
    iget-wide v0, v0, Lcom/datami/smi/a/f;->b:J

    invoke-direct {p0, v0, v1}, Lcom/datami/smi/a/d;->k(J)V

    goto/16 :goto_0

    :pswitch_6
    iget-wide v0, v0, Lcom/datami/smi/a/f;->b:J

    invoke-direct {p0, v0, v1}, Lcom/datami/smi/a/d;->l(J)V

    goto/16 :goto_0

    :pswitch_7
    iget-wide v0, v0, Lcom/datami/smi/a/f;->b:J

    invoke-direct {p0, v0, v1}, Lcom/datami/smi/a/d;->m(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
