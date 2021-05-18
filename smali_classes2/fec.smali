.class public Lfec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lfeo;

.field private c:Lfen;

.field private d:Lfej;

.field private e:Landroid/os/Handler;

.field private f:Lfeq;

.field private g:Z

.field private h:Lfel;

.field private i:Ljava/lang/Runnable;

.field private j:Ljava/lang/Runnable;

.field private k:Ljava/lang/Runnable;

.field private l:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lfec;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfec;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfec;->g:Z

    .line 27
    new-instance v0, Lfel;

    invoke-direct {v0}, Lfel;-><init>()V

    iput-object v0, p0, Lfec;->h:Lfel;

    .line 176
    new-instance v0, Lfef;

    invoke-direct {v0, p0}, Lfef;-><init>(Lfec;)V

    iput-object v0, p0, Lfec;->i:Ljava/lang/Runnable;

    .line 189
    new-instance v0, Lfeg;

    invoke-direct {v0, p0}, Lfeg;-><init>(Lfec;)V

    iput-object v0, p0, Lfec;->j:Ljava/lang/Runnable;

    .line 205
    new-instance v0, Lfeh;

    invoke-direct {v0, p0}, Lfeh;-><init>(Lfec;)V

    iput-object v0, p0, Lfec;->k:Ljava/lang/Runnable;

    .line 219
    new-instance v0, Lfei;

    invoke-direct {v0, p0}, Lfei;-><init>(Lfec;)V

    iput-object v0, p0, Lfec;->l:Ljava/lang/Runnable;

    .line 37
    invoke-static {}, Lfdw;->a()V

    .line 39
    invoke-static {}, Lfeo;->a()Lfeo;

    move-result-object v0

    iput-object v0, p0, Lfec;->b:Lfeo;

    .line 40
    new-instance v0, Lfej;

    invoke-direct {v0, p1}, Lfej;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfec;->d:Lfej;

    .line 41
    iget-object v0, p0, Lfec;->d:Lfej;

    iget-object v1, p0, Lfec;->h:Lfel;

    invoke-virtual {v0, v1}, Lfej;->a(Lfel;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lfej;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfec;->g:Z

    .line 27
    new-instance v0, Lfel;

    invoke-direct {v0}, Lfel;-><init>()V

    iput-object v0, p0, Lfec;->h:Lfel;

    .line 176
    new-instance v0, Lfef;

    invoke-direct {v0, p0}, Lfef;-><init>(Lfec;)V

    iput-object v0, p0, Lfec;->i:Ljava/lang/Runnable;

    .line 189
    new-instance v0, Lfeg;

    invoke-direct {v0, p0}, Lfeg;-><init>(Lfec;)V

    iput-object v0, p0, Lfec;->j:Ljava/lang/Runnable;

    .line 205
    new-instance v0, Lfeh;

    invoke-direct {v0, p0}, Lfeh;-><init>(Lfec;)V

    iput-object v0, p0, Lfec;->k:Ljava/lang/Runnable;

    .line 219
    new-instance v0, Lfei;

    invoke-direct {v0, p0}, Lfei;-><init>(Lfec;)V

    iput-object v0, p0, Lfec;->l:Ljava/lang/Runnable;

    .line 50
    invoke-static {}, Lfdw;->a()V

    .line 52
    iput-object p1, p0, Lfec;->d:Lfej;

    .line 53
    return-void
.end method

.method static synthetic a(Lfec;)Lfej;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lfec;->d:Lfej;

    return-object v0
.end method

.method static synthetic a(Lfec;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lfec;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lfec;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lfec;->e:Landroid/os/Handler;

    sget v1, Lerz;->zxing_camera_error:I

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 238
    :cond_0
    return-void
.end method

.method static synthetic b(Lfec;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lfec;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lfec;)Lfdu;
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lfec;->l()Lfdu;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lfec;)Lfen;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lfec;->c:Lfen;

    return-object v0
.end method

.method static synthetic e(Lfec;)Lfeo;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lfec;->b:Lfeo;

    return-object v0
.end method

.method static synthetic k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lfec;->a:Ljava/lang/String;

    return-object v0
.end method

.method private l()Lfdu;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lfec;->d:Lfej;

    invoke-virtual {v0}, Lfej;->i()Lfdu;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 171
    iget-boolean v0, p0, Lfec;->g:Z

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CameraInstance is not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lfeq;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lfec;->f:Lfeq;

    return-object v0
.end method

.method public a(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lfec;->e:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lfen;

    invoke-direct {v0, p1}, Lfen;-><init>(Landroid/view/SurfaceHolder;)V

    invoke-virtual {p0, v0}, Lfec;->a(Lfen;)V

    .line 70
    return-void
.end method

.method public a(Lfel;)V
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lfec;->g:Z

    if-nez v0, :cond_0

    .line 87
    iput-object p1, p0, Lfec;->h:Lfel;

    .line 88
    iget-object v0, p0, Lfec;->d:Lfej;

    invoke-virtual {v0, p1}, Lfej;->a(Lfel;)V

    .line 90
    :cond_0
    return-void
.end method

.method public a(Lfen;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lfec;->c:Lfen;

    .line 74
    return-void
.end method

.method public a(Lfeq;)V
    .locals 1

    .prologue
    .line 56
    iput-object p1, p0, Lfec;->f:Lfeq;

    .line 57
    iget-object v0, p0, Lfec;->d:Lfej;

    invoke-virtual {v0, p1}, Lfej;->a(Lfeq;)V

    .line 58
    return-void
.end method

.method public a(Lfev;)V
    .locals 2

    .prologue
    .line 160
    invoke-direct {p0}, Lfec;->m()V

    .line 162
    iget-object v0, p0, Lfec;->b:Lfeo;

    new-instance v1, Lfee;

    invoke-direct {v1, p0, p1}, Lfee;-><init>(Lfec;Lfev;)V

    invoke-virtual {v0, v1}, Lfeo;->a(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Lfdw;->a()V

    .line 135
    iget-boolean v0, p0, Lfec;->g:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lfec;->b:Lfeo;

    new-instance v1, Lfed;

    invoke-direct {v1, p0, p1}, Lfed;-><init>(Lfec;Z)V

    invoke-virtual {v0, v1}, Lfeo;->a(Ljava/lang/Runnable;)V

    .line 143
    :cond_0
    return-void
.end method

.method public b()Lfel;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lfec;->h:Lfel;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lfec;->d:Lfej;

    invoke-virtual {v0}, Lfej;->f()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 146
    invoke-static {}, Lfdw;->a()V

    .line 148
    iget-boolean v0, p0, Lfec;->g:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lfec;->b:Lfeo;

    iget-object v1, p0, Lfec;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lfeo;->a(Ljava/lang/Runnable;)V

    .line 152
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfec;->g:Z

    .line 153
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 111
    invoke-static {}, Lfdw;->a()V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfec;->g:Z

    .line 115
    iget-object v0, p0, Lfec;->b:Lfeo;

    iget-object v1, p0, Lfec;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lfeo;->b(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Lfdw;->a()V

    .line 120
    invoke-direct {p0}, Lfec;->m()V

    .line 122
    iget-object v0, p0, Lfec;->b:Lfeo;

    iget-object v1, p0, Lfec;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lfeo;->a(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 126
    invoke-static {}, Lfdw;->a()V

    .line 127
    invoke-direct {p0}, Lfec;->m()V

    .line 129
    iget-object v0, p0, Lfec;->b:Lfeo;

    iget-object v1, p0, Lfec;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lfeo;->a(Ljava/lang/Runnable;)V

    .line 130
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lfec;->g:Z

    return v0
.end method

.method protected h()Lfej;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lfec;->d:Lfej;

    return-object v0
.end method

.method protected i()Lfeo;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lfec;->b:Lfeo;

    return-object v0
.end method

.method protected j()Lfen;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lfec;->c:Lfen;

    return-object v0
.end method
