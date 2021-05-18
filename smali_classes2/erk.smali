.class public final Lerk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:F = 0.1f

.field private static final c:J = 0xc8L


# instance fields
.field private final d:Landroid/content/Context;

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lerk;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lerk;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lerk;->e:Z

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lerk;->f:Z

    .line 46
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 49
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lerk;->d:Landroid/content/Context;

    .line 50
    return-void
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lerk;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lerk;->e:Z

    .line 65
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lerk;->e:Z

    return v0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lerk;->f:Z

    .line 78
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lerk;->f:Z

    return v0
.end method

.method public declared-synchronized c()V
    .locals 4

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lerk;->e:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lerk;->d()Landroid/media/MediaPlayer;

    .line 84
    :cond_0
    iget-boolean v0, p0, Lerk;->f:Z

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lerk;->d:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 86
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_1
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Landroid/media/MediaPlayer;
    .locals 7

    .prologue
    .line 92
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 93
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 94
    new-instance v1, Lerl;

    invoke-direct {v1, p0}, Lerl;-><init>(Lerk;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 101
    new-instance v1, Lerm;

    invoke-direct {v1, p0}, Lerm;-><init>(Lerk;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 112
    :try_start_0
    iget-object v1, p0, Lerk;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lesb;->zxing_beep:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 114
    :try_start_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 118
    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 119
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 120
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 125
    :goto_0
    return-object v0

    .line 116
    :catchall_0
    move-exception v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    sget-object v2, Lerk;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 125
    const/4 v0, 0x0

    goto :goto_0
.end method
