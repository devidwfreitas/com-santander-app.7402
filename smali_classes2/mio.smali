.class public Lmio;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:[B

.field private d:[B

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:Lknw;

.field private h:Lknw;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lmio;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lmio;

    invoke-direct {v0}, Lmio;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lmio;->e:Landroid/graphics/Bitmap;

    .line 88
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lmio;->b:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public a(Lknw;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lmio;->g:Lknw;

    .line 56
    return-void
.end method

.method public a([B)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lmio;->c:[B

    .line 72
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lmio;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lmio;->f:Landroid/graphics/Bitmap;

    .line 96
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lmio;->a:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public b(Lknw;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lmio;->h:Lknw;

    .line 64
    return-void
.end method

.method public b([B)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lmio;->d:[B

    .line 80
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lmio;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lknw;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lmio;->g:Lknw;

    return-object v0
.end method

.method public e()Lknw;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lmio;->h:Lknw;

    return-object v0
.end method

.method public f()[B
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lmio;->c:[B

    return-object v0
.end method

.method public g()[B
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lmio;->d:[B

    return-object v0
.end method

.method public h()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lmio;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public i()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lmio;->f:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public j()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lmio;->d:[B

    .line 100
    iput-object v0, p0, Lmio;->f:Landroid/graphics/Bitmap;

    .line 101
    iput-object v0, p0, Lmio;->b:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lmio;->c:[B

    .line 106
    iput-object v0, p0, Lmio;->e:Landroid/graphics/Bitmap;

    .line 107
    iput-object v0, p0, Lmio;->a:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    :try_start_0
    iget-object v0, p0, Lmio;->c:[B

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lmio;->c:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    :try_start_0
    iget-object v0, p0, Lmio;->d:[B

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lmio;->d:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 137
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
