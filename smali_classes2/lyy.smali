.class public Llyy;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lmbc;


# static fields
.field private static final a:Ljava/lang/String; = "response-key"

.field private static final b:I = 0x216d


# instance fields
.field private c:Landroid/media/MediaPlayer;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/text/SimpleDateFormat;

.field private h:I

.field private i:Landroid/os/Handler;

.field private j:Ljava/lang/Runnable;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ImageButton;

.field private m:Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/TextView;

.field private r:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

.field private s:Lkvb;

.field private t:Lmgf;

.field private u:Lmgf;

.field private v:Landroid/os/PowerManager$WakeLock;

.field private w:Landroid/media/MediaRecorder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 56
    iput-object v1, p0, Llyy;->c:Landroid/media/MediaPlayer;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Llyy;->f:Z

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Llyy;->h:I

    .line 76
    iput-object v1, p0, Llyy;->w:Landroid/media/MediaRecorder;

    return-void
.end method

.method static synthetic a(Llyy;I)I
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Llyy;->h:I

    return p1
.end method

.method public static a(Lkvb;)Llyy;
    .locals 3

    .prologue
    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    const-string v1, "response-key"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v1, Llyy;

    invoke-direct {v1}, Llyy;-><init>()V

    .line 91
    invoke-virtual {v1, v0}, Llyy;->setArguments(Landroid/os/Bundle;)V

    .line 92
    return-object v1
.end method

.method private a(ILandroid/os/Handler;)V
    .locals 6

    .prologue
    .line 461
    new-instance v0, Llzd;

    invoke-direct {v0, p0, p2}, Llzd;-><init>(Llyy;Landroid/os/Handler;)V

    iput-object v0, p0, Llyy;->j:Ljava/lang/Runnable;

    .line 472
    iget-object v0, p0, Llyy;->j:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 474
    new-instance v0, Llze;

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Llze;-><init>(Llyy;JJ)V

    iput-object v0, p0, Llyy;->u:Lmgf;

    .line 487
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 538
    const v0, 0x7f10030d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llyy;->k:Landroid/widget/TextView;

    .line 539
    const v0, 0x7f10091d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Llyy;->l:Landroid/widget/ImageButton;

    .line 540
    const v0, 0x7f10091e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;

    iput-object v0, p0, Llyy;->m:Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;

    .line 541
    const v0, 0x7f10091f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llyy;->n:Landroid/widget/TextView;

    .line 542
    const v0, 0x7f1002d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llyy;->o:Landroid/widget/Button;

    .line 543
    iget-object v0, p0, Llyy;->o:Landroid/widget/Button;

    new-instance v1, Llzg;

    invoke-direct {v1, p0}, Llzg;-><init>(Llyy;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 549
    const v0, 0x7f100920

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llyy;->p:Landroid/widget/Button;

    .line 550
    const v0, 0x7f10038a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llyy;->q:Landroid/widget/TextView;

    .line 552
    iget-object v0, p0, Llyy;->p:Landroid/widget/Button;

    new-instance v1, Llzh;

    invoke-direct {v1, p0}, Llzh;-><init>(Llyy;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 239
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Llyy;->c:Landroid/media/MediaPlayer;

    .line 243
    :try_start_0
    iget-object v0, p0, Llyy;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Llyy;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 245
    iget-object v0, p0, Llyy;->m:Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->a()Landroid/support/v7/widget/AppCompatSeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatSeekBar;->setProgress(I)V

    .line 246
    iget-object v0, p0, Llyy;->m:Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->b()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Llyy;->g:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Llyy;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Llyy;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Llyy;->e()V

    return-void
.end method

.method static synthetic a(Llyy;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Llyy;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Llyy;)Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Llyy;->g:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 380
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 385
    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Llyy;->p:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    const-string v0, "RECORD"

    const-string v1, "ERRO AO EXCLUIR"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static blockView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 528
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 529
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Llzf;

    invoke-direct {v1, p0}, Llzf;-><init>(Landroid/view/View;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 535
    return-void
.end method

.method static synthetic c(Llyy;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Llyy;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 120
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "There is SDCard"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "There is no SDCard"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 130
    invoke-direct {p0}, Llyy;->c()V

    .line 132
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Llyy;->g:Ljava/text/SimpleDateFormat;

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Llyy;->i:Landroid/os/Handler;

    .line 135
    iget-object v0, p0, Llyy;->m:Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;

    invoke-virtual {v0, p0}, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->setListener(Lmbc;)V

    .line 136
    iget-object v0, p0, Llyy;->k:Landroid/widget/TextView;

    iget-object v1, p0, Llyy;->s:Lkvb;

    invoke-virtual {v1}, Lkvb;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Llyy;->l:Landroid/widget/ImageButton;

    new-instance v1, Llyz;

    invoke-direct {v1, p0}, Llyz;-><init>(Llyy;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-direct {p0}, Llyy;->m()Ljava/lang/String;

    move-result-object v0

    .line 148
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0}, Llyy;->j()V

    .line 151
    iget-object v0, p0, Llyy;->p:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Llyy;->m:Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;

    invoke-virtual {v0, v2}, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic d(Llyy;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Llyy;->i()V

    return-void
.end method

.method static synthetic e(Llyy;)Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Llyy;->m:Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;

    return-object v0
.end method

.method private e()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 159
    iget-object v0, p0, Llyy;->r:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "android.permission.WAKE_LOCK"

    aput-object v3, v1, v2

    invoke-static {v0, v4, v1}, Lmhf;->a(Landroid/content/Context;Z[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 161
    const/16 v1, 0x216d

    invoke-virtual {p0, v0, v1}, Llyy;->requestPermissions([Ljava/lang/String;I)V

    .line 181
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Llyy;->p:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Llyy;->o:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 165
    iget-boolean v0, p0, Llyy;->f:Z

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Llyy;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Llyy;->m:Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;

    invoke-virtual {v0, v5}, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->setVisibility(I)V

    .line 169
    invoke-direct {p0}, Llyy;->k()V

    .line 171
    iget-object v0, p0, Llyy;->l:Landroid/widget/ImageButton;

    const v1, 0x7f020472

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 174
    invoke-direct {p0}, Llyy;->h()V

    .line 175
    iput-boolean v4, p0, Llyy;->f:Z

    goto :goto_0

    .line 178
    :cond_1
    invoke-direct {p0}, Llyy;->i()V

    goto :goto_0
.end method

.method static synthetic f(Llyy;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Llyy;->l:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Llyy;->r:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 185
    const/16 v1, 0x1a

    const-string v2, "My Lock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Llyy;->v:Landroid/os/PowerManager$WakeLock;

    .line 186
    iget-object v0, p0, Llyy;->v:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 187
    return-void
.end method

.method static synthetic g(Llyy;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Llyy;->c:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Llyy;->v:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Llyy;->v:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Llyy;->v:Landroid/os/PowerManager$WakeLock;

    .line 194
    :cond_0
    return-void
.end method

.method static synthetic h(Llyy;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Llyy;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method private h()V
    .locals 6

    .prologue
    .line 197
    iget-object v0, p0, Llyy;->t:Lmgf;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Llyy;->t:Lmgf;

    invoke-virtual {v0}, Lmgf;->b()V

    .line 201
    :cond_0
    new-instance v0, Llza;

    invoke-virtual {p0}, Llyy;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Llza;-><init>(Llyy;JJ)V

    iput-object v0, p0, Llyy;->t:Lmgf;

    .line 212
    iget-object v0, p0, Llyy;->t:Lmgf;

    invoke-virtual {v0}, Lmgf;->c()Lmgf;

    .line 213
    return-void
.end method

.method static synthetic i(Llyy;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Llyy;->i:Landroid/os/Handler;

    return-object v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Llyy;->t:Lmgf;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Llyy;->t:Lmgf;

    invoke-virtual {v0}, Lmgf;->b()V

    .line 220
    :cond_0
    invoke-direct {p0}, Llyy;->l()V

    .line 221
    invoke-direct {p0}, Llyy;->j()V

    .line 222
    invoke-direct {p0}, Llyy;->g()V

    .line 223
    return-void
.end method

.method static synthetic j(Llyy;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Llyy;->d:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 226
    iget-object v0, p0, Llyy;->l:Landroid/widget/ImageButton;

    const v1, 0x7f02033e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 227
    iget-object v0, p0, Llyy;->o:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 229
    iget-object v0, p0, Llyy;->n:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Llyy;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Llyy;->a(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Llyy;->m:Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;

    invoke-virtual {v0, v2}, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Llyy;->m:Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;

    const v1, 0x7f020448

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->setImageButtonPlay(I)V

    .line 233
    iput-boolean v3, p0, Llyy;->f:Z

    .line 234
    iput v2, p0, Llyy;->h:I

    .line 235
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Llyy;->l:Landroid/widget/ImageButton;

    invoke-static {v0}, Llyy;->blockView(Landroid/view/View;)V

    .line 257
    iget-object v0, p0, Llyy;->w:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 258
    invoke-direct {p0}, Llyy;->n()V

    .line 262
    :cond_0
    :try_start_0
    iget-object v0, p0, Llyy;->w:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 263
    iget-object v0, p0, Llyy;->w:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 264
    invoke-direct {p0}, Llyy;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    iget-object v0, p0, Llyy;->q:Landroid/widget/TextView;

    const v1, 0x7f09091d

    invoke-virtual {p0, v1}, Llyy;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic k(Llyy;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Llyy;->q()V

    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Llyy;->w:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 276
    :try_start_0
    iget-object v0, p0, Llyy;->w:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 277
    iget-object v0, p0, Llyy;->w:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Llyy;->w:Landroid/media/MediaRecorder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :cond_0
    :goto_0
    iget-object v0, p0, Llyy;->q:Landroid/widget/TextView;

    const v1, 0x7f09026a

    invoke-virtual {p0, v1}, Llyy;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "voices/audio_sinister.m4a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private n()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 401
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llyy;->d:Ljava/lang/String;

    .line 402
    iget-object v0, p0, Llyy;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Llyy;->b(Ljava/lang/String;)V

    .line 403
    invoke-direct {p0}, Llyy;->o()V

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Llyy;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "voices/audio_sinister.m4a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llyy;->d:Ljava/lang/String;

    .line 405
    iget-object v0, p0, Llyy;->w:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 406
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Llyy;->w:Landroid/media/MediaRecorder;

    .line 407
    iget-object v0, p0, Llyy;->w:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 408
    iget-object v0, p0, Llyy;->w:Landroid/media/MediaRecorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 409
    iget-object v0, p0, Llyy;->w:Landroid/media/MediaRecorder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 410
    iget-object v0, p0, Llyy;->w:Landroid/media/MediaRecorder;

    const/16 v1, 0x3e80

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 411
    iget-object v0, p0, Llyy;->w:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 412
    iget-object v0, p0, Llyy;->w:Landroid/media/MediaRecorder;

    iget-object v1, p0, Llyy;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 414
    :cond_0
    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    .line 417
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Llyy;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "voices"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 419
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 421
    :cond_0
    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 444
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Llyy;->c:Landroid/media/MediaPlayer;

    .line 446
    :try_start_0
    iget-object v0, p0, Llyy;->c:Landroid/media/MediaPlayer;

    iget-object v1, p0, Llyy;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Llyy;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 449
    iget-object v0, p0, Llyy;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 450
    iget-object v1, p0, Llyy;->m:Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->a()Landroid/support/v7/widget/AppCompatSeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/AppCompatSeekBar;->setMax(I)V

    .line 452
    iget-object v1, p0, Llyy;->i:Landroid/os/Handler;

    invoke-direct {p0, v0, v1}, Llyy;->a(ILandroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v0

    .line 455
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private q()V
    .locals 6

    .prologue
    .line 495
    invoke-static {}, Lmhg;->a()Lmhg;

    move-result-object v0

    const-string v1, "audio-base64-key"

    invoke-virtual {v0, v1}, Lmhg;->c(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Llyy;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Llyy;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 500
    iget-object v0, p0, Llyy;->d:Ljava/lang/String;

    invoke-static {v0}, Lmhj;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llyy;->e:Ljava/lang/String;

    .line 501
    iget-object v0, p0, Llyy;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 503
    invoke-static {}, Lmhg;->a()Lmhg;

    move-result-object v0

    const-string v1, "audio-base64-key"

    iget-object v2, p0, Llyy;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lmhg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :cond_0
    :goto_0
    new-instance v0, Lkva;

    invoke-direct {v0}, Lkva;-><init>()V

    .line 513
    sget-object v1, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {v1}, Lmhv;->getCoverageId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 514
    sget-object v1, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {v1}, Lmhv;->getCoverageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkva;->b(Ljava/lang/Long;)V

    .line 517
    :cond_1
    sget-object v1, Lkuz;->NEXT:Lkuz;

    invoke-virtual {v0, v1}, Lkva;->a(Lkuz;)V

    .line 518
    iget-object v1, p0, Llyy;->s:Lkvb;

    invoke-virtual {v1}, Lkvb;->q()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkva;->a(Ljava/lang/Integer;)V

    .line 519
    iget-object v1, p0, Llyy;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lkva;->a(Ljava/lang/String;)V

    .line 520
    sget-object v1, Lkuq;->AUDIO:Lkuq;

    invoke-virtual {v0, v1}, Lkva;->a(Lkuq;)V

    .line 523
    iget-object v1, p0, Llyy;->r:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lkva;)V

    .line 525
    return-void

    .line 505
    :cond_2
    const-string v0, "Audio"

    const-string v1, "No Save"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 508
    :cond_3
    const-string v0, ""

    iput-object v0, p0, Llyy;->e:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 291
    iget-object v0, p0, Llyy;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Llyy;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Llyy;->m:Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;

    const v1, 0x7f020448

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->setImageButtonPlay(I)V

    .line 297
    iget-object v0, p0, Llyy;->l:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 298
    iget-object v0, p0, Llyy;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 299
    iget-object v0, p0, Llyy;->u:Lmgf;

    invoke-virtual {v0}, Lmgf;->d()J

    .line 300
    iget-object v0, p0, Llyy;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Llyy;->h:I

    .line 320
    :goto_0
    iget-object v0, p0, Llyy;->c:Landroid/media/MediaPlayer;

    new-instance v1, Llzb;

    invoke-direct {v1, p0}, Llzb;-><init>(Llyy;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 329
    :cond_0
    return-void

    .line 303
    :cond_1
    const-string v0, "Seguros_Sinistro_Acionar_ContarSobreAcontecido_Acao"

    const-string v1, "ReproduzirGravacao"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Llyy;->m:Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;

    const v1, 0x7f02043b

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->setImageButtonPlay(I)V

    .line 305
    iget-object v0, p0, Llyy;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 306
    iget v0, p0, Llyy;->h:I

    if-lez v0, :cond_2

    .line 307
    iget-object v0, p0, Llyy;->c:Landroid/media/MediaPlayer;

    iget v1, p0, Llyy;->h:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 308
    iget-object v0, p0, Llyy;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 309
    iget-object v0, p0, Llyy;->u:Lmgf;

    invoke-virtual {v0}, Lmgf;->e()J

    .line 310
    iput v2, p0, Llyy;->h:I

    goto :goto_0

    .line 313
    :cond_2
    invoke-direct {p0}, Llyy;->p()V

    .line 314
    iget-object v0, p0, Llyy;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 315
    iget-object v0, p0, Llyy;->u:Lmgf;

    invoke-virtual {v0}, Lmgf;->c()Lmgf;

    goto :goto_0
.end method

.method public a(IZ)V
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Llyy;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    if-eqz p2, :cond_0

    .line 370
    iget-object v0, p0, Llyy;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 372
    :cond_0
    iget-object v0, p0, Llyy;->m:Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->b()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Llyy;->g:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Llyy;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    :cond_1
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 333
    iget-object v0, p0, Llyy;->l:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 334
    iget-object v0, p0, Llyy;->r:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    const v1, 0x7f050021

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 335
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 337
    new-instance v1, Llzc;

    invoke-direct {v1, p0}, Llzc;-><init>(Llyy;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 363
    iget-object v1, p0, Llyy;->m:Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 364
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 82
    instance-of v0, p1, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 83
    check-cast p1, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    iput-object p1, p0, Llyy;->r:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    .line 85
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Llyy;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llyy;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "response-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Llyy;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "response-key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkvb;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvb;

    iput-object v0, p0, Llyy;->s:Lkvb;

    .line 103
    :cond_0
    invoke-static {}, Lmhg;->a()Lmhg;

    move-result-object v0

    const-string v1, "audio-base64-key"

    invoke-virtual {v0, v1}, Lmhg;->c(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 112
    const v0, 0x7f0401dd

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 113
    invoke-direct {p0, v0}, Llyy;->a(Landroid/view/View;)V

    .line 114
    invoke-direct {p0}, Llyy;->d()V

    .line 116
    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 567
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 568
    invoke-direct {p0}, Llyy;->i()V

    .line 569
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .prologue
    .line 425
    packed-switch p1, :pswitch_data_0

    .line 439
    :goto_0
    return-void

    .line 429
    :pswitch_0
    iget-object v0, p0, Llyy;->r:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-static {v0, p2}, Lmhf;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-direct {p0}, Llyy;->e()V

    goto :goto_0

    .line 432
    :cond_0
    iget-object v0, p0, Llyy;->r:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {p0}, Llyy;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090462

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 425
    nop

    :pswitch_data_0
    .packed-switch 0x216d
        :pswitch_0
    .end packed-switch
.end method
