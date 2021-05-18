.class public Lfdl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lfec;

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;

.field private e:Lfdi;

.field private f:Landroid/os/Handler;

.field private g:Landroid/graphics/Rect;

.field private h:Z

.field private final i:Ljava/lang/Object;

.field private final j:Landroid/os/Handler$Callback;

.field private final k:Lfev;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lfdl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfdl;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lfec;Lfdi;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfdl;->h:Z

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lfdl;->i:Ljava/lang/Object;

    .line 34
    new-instance v0, Lfdm;

    invoke-direct {v0, p0}, Lfdm;-><init>(Lfdl;)V

    iput-object v0, p0, Lfdl;->j:Landroid/os/Handler$Callback;

    .line 101
    new-instance v0, Lfdn;

    invoke-direct {v0, p0}, Lfdn;-><init>(Lfdl;)V

    iput-object v0, p0, Lfdl;->k:Lfev;

    .line 48
    invoke-static {}, Lfdw;->a()V

    .line 50
    iput-object p1, p0, Lfdl;->b:Lfec;

    .line 51
    iput-object p2, p0, Lfdl;->e:Lfdi;

    .line 52
    iput-object p3, p0, Lfdl;->f:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method static synthetic a(Lfdl;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lfdl;->e()V

    return-void
.end method

.method static synthetic a(Lfdl;Lfdv;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lfdl;->b(Lfdv;)V

    return-void
.end method

.method static synthetic b(Lfdl;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lfdl;->i:Ljava/lang/Object;

    return-object v0
.end method

.method private b(Lfdv;)V
    .locals 8

    .prologue
    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 143
    const/4 v0, 0x0

    .line 144
    iget-object v1, p0, Lfdl;->g:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Lfdv;->a(Landroid/graphics/Rect;)V

    .line 145
    invoke-virtual {p0, p1}, Lfdl;->a(Lfdv;)Leqd;

    move-result-object v1

    .line 147
    if-eqz v1, :cond_0

    .line 148
    iget-object v0, p0, Lfdl;->e:Lfdi;

    invoke-virtual {v0, v1}, Lfdi;->a(Leqd;)Leqm;

    move-result-object v0

    .line 151
    :cond_0
    if-eqz v0, :cond_3

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 154
    sget-object v1, Lfdl;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found barcode in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v2, v4, v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v1, p0, Lfdl;->f:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 156
    new-instance v1, Lfcq;

    invoke-direct {v1, v0, p1}, Lfcq;-><init>(Leqm;Lfdv;)V

    .line 157
    iget-object v0, p0, Lfdl;->f:Landroid/os/Handler;

    sget v2, Lerz;->zxing_decode_succeeded:I

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 158
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 159
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 160
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 168
    :cond_1
    :goto_0
    iget-object v0, p0, Lfdl;->f:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lfdl;->e:Lfdi;

    invoke-virtual {v0}, Lfdi;->b()Ljava/util/List;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lfdl;->f:Landroid/os/Handler;

    sget v2, Lerz;->zxing_possible_result_points:I

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 173
    :cond_2
    invoke-direct {p0}, Lfdl;->e()V

    .line 174
    return-void

    .line 163
    :cond_3
    iget-object v0, p0, Lfdl;->f:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lfdl;->f:Landroid/os/Handler;

    sget v1, Lerz;->zxing_decode_failed:I

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method static synthetic c(Lfdl;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lfdl;->h:Z

    return v0
.end method

.method static synthetic d(Lfdl;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lfdl;->d:Landroid/os/Handler;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lfdl;->b:Lfec;

    invoke-virtual {v0}, Lfec;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lfdl;->b:Lfec;

    iget-object v1, p0, Lfdl;->k:Lfev;

    invoke-virtual {v0, v1}, Lfec;->a(Lfev;)V

    .line 131
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lfdv;)Leqd;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lfdl;->g:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lfdv;->g()Leqi;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Lfdi;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lfdl;->e:Lfdi;

    return-object v0
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lfdl;->g:Landroid/graphics/Rect;

    .line 69
    return-void
.end method

.method public a(Lfdi;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lfdl;->e:Lfdi;

    .line 61
    return-void
.end method

.method public b()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lfdl;->g:Landroid/graphics/Rect;

    return-object v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 77
    invoke-static {}, Lfdw;->a()V

    .line 79
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lfdl;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lfdl;->c:Landroid/os/HandlerThread;

    .line 80
    iget-object v0, p0, Lfdl;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 81
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lfdl;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lfdl;->j:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lfdl;->d:Landroid/os/Handler;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfdl;->h:Z

    .line 83
    invoke-direct {p0}, Lfdl;->e()V

    .line 84
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 92
    invoke-static {}, Lfdw;->a()V

    .line 94
    iget-object v1, p0, Lfdl;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lfdl;->h:Z

    .line 96
    iget-object v0, p0, Lfdl;->d:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lfdl;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 98
    monitor-exit v1

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
