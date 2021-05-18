.class public Laqy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Larb;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lapa;

.field private g:Larv;

.field private h:Laqw;

.field private i:Ljava/lang/Integer;

.field private j:Ljava/lang/Integer;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method static synthetic a(Laqy;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Laqy;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Laqy;)Larb;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Laqy;->b:Larb;

    return-object v0
.end method

.method static synthetic c(Laqy;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Laqy;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Laqy;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Laqy;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Laqy;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Laqy;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Laqy;)Larv;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Laqy;->g:Larv;

    return-object v0
.end method

.method static synthetic g(Laqy;)Laqw;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Laqy;->h:Laqw;

    return-object v0
.end method

.method static synthetic h(Laqy;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Laqy;->i:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic i(Laqy;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Laqy;->j:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic j(Laqy;)Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Laqy;->k:Z

    return v0
.end method

.method static synthetic k(Laqy;)Lapa;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Laqy;->f:Lapa;

    return-object v0
.end method


# virtual methods
.method public a()Laqx;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Laqy;->b:Larb;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Laqc;

    const-string v1, "Forne\u00e7a uma implementa\u00e7\u00e3o para ChatSessionToken"

    invoke-direct {v0, v1}, Laqc;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    iget-object v0, p0, Laqy;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 164
    new-instance v0, Laqc;

    const-string v1, "O parametro appNumber nao pode ser nulo"

    invoke-direct {v0, v1}, Laqc;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_1
    iget-object v0, p0, Laqy;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 168
    new-instance v0, Laqc;

    const-string v1, "O parametro Reason nao pode ser nulo"

    invoke-direct {v0, v1}, Laqc;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_2
    iget-object v0, p0, Laqy;->f:Lapa;

    if-nez v0, :cond_3

    .line 172
    new-instance v0, Laqc;

    const-string v1, "O parametro ChaTracking nao pode ser nulo"

    invoke-direct {v0, v1}, Laqc;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_3
    iget-object v0, p0, Laqy;->g:Larv;

    if-nez v0, :cond_4

    .line 176
    new-instance v0, Laqc;

    const-string v1, "O parametro DlCrypto nao pode ser nulo"

    invoke-direct {v0, v1}, Laqc;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_4
    iget-object v0, p0, Laqy;->a:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 180
    new-instance v0, Laqc;

    const-string v1, "O parametro Context nao pode ser nulo"

    invoke-direct {v0, v1}, Laqc;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_5
    iget-object v0, p0, Laqy;->e:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 184
    new-instance v0, Laqc;

    const-string v1, "O parametro Environment nao pode ser nulo"

    invoke-direct {v0, v1}, Laqc;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_6
    iget-object v0, p0, Laqy;->h:Laqw;

    if-nez v0, :cond_7

    .line 188
    new-instance v0, Laqc;

    const-string v1, "O parametro ChatComponentCallback nao pode ser nulo"

    invoke-direct {v0, v1}, Laqc;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_7
    new-instance v0, Laqx;

    invoke-direct {v0, p0}, Laqx;-><init>(Laqy;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;)Laqy;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 103
    iput-object p1, p0, Laqy;->a:Landroid/content/Context;

    .line 104
    return-object p0
.end method

.method public a(Lapa;)Laqy;
    .locals 0
    .param p1    # Lapa;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 128
    iput-object p1, p0, Laqy;->f:Lapa;

    .line 129
    return-object p0
.end method

.method public a(Laqw;)Laqy;
    .locals 0
    .param p1    # Laqw;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 138
    iput-object p1, p0, Laqy;->h:Laqw;

    .line 139
    return-object p0
.end method

.method public a(Larb;)Laqy;
    .locals 0
    .param p1    # Larb;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 108
    iput-object p1, p0, Laqy;->b:Larb;

    .line 109
    return-object p0
.end method

.method public a(Larv;)Laqy;
    .locals 0
    .param p1    # Larv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 133
    iput-object p1, p0, Laqy;->g:Larv;

    .line 134
    return-object p0
.end method

.method public a(Ljava/lang/Integer;)Laqy;
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Laqy;->i:Ljava/lang/Integer;

    .line 144
    return-object p0
.end method

.method public a(Ljava/lang/String;)Laqy;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 113
    iput-object p1, p0, Laqy;->c:Ljava/lang/String;

    .line 114
    return-object p0
.end method

.method public a(Z)Laqy;
    .locals 0

    .prologue
    .line 153
    iput-boolean p1, p0, Laqy;->k:Z

    .line 154
    return-object p0
.end method

.method public b(Ljava/lang/Integer;)Laqy;
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Laqy;->j:Ljava/lang/Integer;

    .line 149
    return-object p0
.end method

.method public b(Ljava/lang/String;)Laqy;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 118
    iput-object p1, p0, Laqy;->d:Ljava/lang/String;

    .line 119
    return-object p0
.end method

.method public c(Ljava/lang/String;)Laqy;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 123
    iput-object p1, p0, Laqy;->e:Ljava/lang/String;

    .line 124
    return-object p0
.end method
