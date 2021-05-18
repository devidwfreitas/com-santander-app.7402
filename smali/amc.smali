.class public Lamc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0x97


# instance fields
.field private final b:Landroid/app/Activity;

.field private final c:Lbr/com/santander/uisdk/comprovante/SantanderComprovante;

.field private d:Landroid/view/View;

.field private final e:Landroid/os/Handler;

.field private final f:Ljava/io/File;

.field private g:Lame;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lbr/com/santander/uisdk/comprovante/SantanderComprovante;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lamc;->b:Landroid/app/Activity;

    .line 48
    iput-object p2, p0, Lamc;->c:Lbr/com/santander/uisdk/comprovante/SantanderComprovante;

    .line 49
    iput-object p3, p0, Lamc;->d:Landroid/view/View;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lamc;->e:Landroid/os/Handler;

    .line 51
    const-string v0, "SantanderComprovante.jpg"

    .line 52
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lamc;->f:Ljava/io/File;

    .line 53
    invoke-direct {p0}, Lamc;->g()V

    .line 54
    return-void
.end method

.method static synthetic a(Lamc;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lamc;->e()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lamc;->b:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lamc;)Ljava/io/File;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lamc;->f:Ljava/io/File;

    return-object v0
.end method

.method static synthetic c(Lamc;)Lbr/com/santander/uisdk/comprovante/SantanderComprovante;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lamc;->c:Lbr/com/santander/uisdk/comprovante/SantanderComprovante;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {p0, v1}, Lamc;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    invoke-direct {p0}, Lamc;->d()V

    .line 81
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 77
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lamc;->b:Landroid/app/Activity;

    const/16 v2, 0x97

    invoke-static {v1, v0, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic d(Lamc;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lamc;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Lamc;->g:Lame;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lamc;->g:Lame;

    invoke-interface {v0}, Lame;->a()V

    .line 92
    :cond_0
    iget-object v0, p0, Lamc;->e:Landroid/os/Handler;

    new-instance v1, Lamd;

    invoke-direct {v1, p0}, Lamd;-><init>(Lamc;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    return-void
.end method

.method static synthetic e(Lamc;)Lame;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lamc;->g:Lame;

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 123
    invoke-direct {p0}, Lamc;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lamc;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    iget-object v1, p0, Lamc;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 127
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lamc;->f:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 128
    return-void
.end method

.method private f()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 131
    iget-object v0, p0, Lamc;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 132
    iget-object v1, p0, Lamc;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 134
    iget-object v2, p0, Lamc;->d:Landroid/view/View;

    invoke-virtual {v2, v4, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 135
    iget-object v2, p0, Lamc;->d:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 136
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lamc;->d:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 139
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 140
    iget-object v2, p0, Lamc;->d:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 141
    return-object v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lamc;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lamc;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 148
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lamc;->c()V

    .line 62
    return-void
.end method

.method public a(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 155
    const/16 v0, 0x97

    if-ne p1, v0, :cond_0

    .line 156
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {p0, v0}, Lamc;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-direct {p0}, Lamc;->d()V

    .line 160
    :cond_0
    return-void
.end method

.method public a(Lame;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lamc;->g:Lame;

    .line 164
    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lamc;->d:Landroid/view/View;

    .line 58
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lamc;->g()V

    .line 152
    return-void
.end method
