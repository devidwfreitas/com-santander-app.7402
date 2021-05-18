.class public Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;
.super Lasy;
.source "SourceFile"

# interfaces
.implements Laqn;
.implements Larp;
.implements Larr;
.implements Lasz;
.implements Lata;


# static fields
.field private static a:Lard; = null

.field private static final c:Ljava/lang/String; = "[ChatActivity]"


# instance fields
.field private A:Z

.field private B:Ljava/lang/Object;

.field private b:Ljava/lang/String;

.field private d:Z

.field private e:Landroid/widget/EditText;

.field private f:Landroid/support/v7/widget/RecyclerView;

.field private g:Landroid/support/v7/widget/LinearLayoutManager;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Latb;

.field private m:Lchat/santander/com/modulochatsantander/receiver/ChatEventReceiver;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/support/v7/widget/Toolbar;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/Button;

.field private r:Laqe;

.field private s:Larq;

.field private t:Landroid/widget/FrameLayout;

.field private u:Landroid/webkit/WebView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/ProgressBar;

.field private x:Landroid/widget/LinearLayout;

.field private y:Lasi;

.field private z:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lard;->a()Lard;

    move-result-object v0

    sput-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lasy;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->b:Ljava/lang/String;

    .line 515
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->B:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)Lasi;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->y:Lasi;

    return-object v0
.end method

.method public static synthetic a(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 890
    const-string v0, "Chat Santander"

    invoke-static {v0, p1, p0}, Lase;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 892
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 703
    const/4 v1, 0x0

    .line 705
    if-eqz p2, :cond_2

    .line 707
    invoke-static {p2}, Lase;->b(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 710
    new-instance v1, Larj;

    invoke-static {p2}, Lase;->a(Ljava/io/File;)Laqa;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Larj;-><init>(Ljava/io/File;Laqa;)V

    .line 712
    invoke-virtual {v1}, Larj;->c()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Larj;->c(Ljava/lang/String;)V

    .line 715
    invoke-static {v4, v1}, Lase;->a(Ljava/lang/String;Larj;)Lark;

    move-result-object v1

    .line 716
    invoke-virtual {v1, v0}, Lark;->c(Z)V

    .line 718
    sget-object v2, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v2, v1}, Lard;->c(Lark;)V

    .line 750
    :goto_0
    if-eqz v0, :cond_0

    .line 752
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lchat/santander/com/modulochatsantander/tasks/ChatTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 753
    sget-object v1, Laps;->by:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 754
    invoke-virtual {p0, v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 756
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v0, v4}, Lard;->h(Ljava/lang/String;)V

    .line 759
    :cond_0
    invoke-virtual {p0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->i()V

    .line 760
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->l:Latb;

    invoke-virtual {v0}, Latb;->notifyDataSetChanged()V

    .line 761
    return-void

    .line 724
    :cond_1
    const-string v0, "Chat Santander"

    const-string v2, "Desculpe, n\u00e3o conseguimos receber esse arquivo. Ele deve estar em XLS, XLSX, PPT, PPTX, DOC, DOCX ou PDF."

    invoke-static {v0, v2, p0}, Lase;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    move v0, v1

    goto :goto_0

    .line 730
    :cond_2
    sget-boolean v2, Laps;->bw:Z

    if-eqz v2, :cond_3

    .line 731
    iput-object v4, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->b:Ljava/lang/String;

    .line 734
    :cond_3
    iget-object v2, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->b:Ljava/lang/String;

    invoke-static {v2}, Lase;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 735
    invoke-static {p1}, Lase;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 738
    :cond_4
    invoke-static {p1, v4}, Lase;->a(Ljava/lang/String;Larj;)Lark;

    move-result-object v1

    .line 739
    invoke-virtual {v1, v0}, Lark;->c(Z)V

    .line 741
    sget-object v2, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v2, v1}, Lard;->c(Lark;)V

    .line 744
    iput-object p1, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->b:Ljava/lang/String;

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lark;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 649
    const-string v0, "[ChatActivity]"

    const-string v1, "controlStatusTyping 1 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v0}, Lard;->F()Ljava/util/List;

    move-result-object v0

    .line 653
    invoke-static {v0}, Lase;->d(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 655
    invoke-static {v1}, Lase;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 656
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lask;

    invoke-direct {v3, p0, v1}, Lask;-><init>(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;Ljava/lang/String;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 665
    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 666
    const-string v0, "[ChatActivity]"

    const-string v1, "controlStatusTyping 2 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    .line 670
    invoke-virtual {v0}, Lark;->i()Z

    move-result v2

    if-nez v2, :cond_0

    .line 671
    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v2

    sget-object v3, Lapu;->TypingStarted:Lapu;

    if-eq v2, v3, :cond_1

    .line 672
    invoke-virtual {v0}, Lark;->c()Lapu;

    move-result-object v2

    sget-object v3, Lapu;->TypingStopped:Lapu;

    if-ne v2, v3, :cond_0

    .line 675
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lark;->a(Z)V

    goto :goto_1

    .line 662
    :cond_2
    iget-object v2, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 679
    :cond_3
    return-void
.end method

.method public static synthetic a(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;Z)Z
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->d:Z

    return p1
.end method

.method public static synthetic b(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)Latb;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->l:Latb;

    return-object v0
.end method

.method public static synthetic b(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;Z)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 492
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lchat/santander/com/modulochatsantander/tasks/TextWatcherTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 493
    const-string v1, "TEXT_WATCHER_TASK_EVENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 494
    invoke-virtual {p0, v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 495
    return-void
.end method

.method public static synthetic c(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->f:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private c(Z)V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 600
    if-eqz p1, :cond_1

    sget v0, Lapo;->digitar_msg:I

    move v3, v0

    .line 602
    :goto_0
    if-eqz p1, :cond_2

    const v0, 0x106000b

    :goto_1
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 605
    iget-object v5, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->n:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 607
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 609
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 610
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->h:Landroid/widget/ImageView;

    sget v4, Laph;->ico_squadchat_send_enable:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 612
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 613
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 615
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v0}, Lard;->M()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lase;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->e:Landroid/widget/EditText;

    sget-object v3, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v3}, Lard;->M()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 619
    :cond_0
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->i:Landroid/widget/ImageView;

    sget v3, Laph;->ico_squadchat_attach:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 620
    if-eqz p1, :cond_4

    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v0}, Lard;->G()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 621
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 626
    :goto_3
    return-void

    .line 600
    :cond_1
    sget v0, Lapo;->waiting_message:I

    move v3, v0

    goto :goto_0

    .line 602
    :cond_2
    sget v0, Lapf;->colorBackgroundChat:I

    goto :goto_1

    :cond_3
    move v0, v2

    .line 605
    goto :goto_2

    .line 624
    :cond_4
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method public static synthetic d(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->m()V

    return-void
.end method

.method public static synthetic e(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->d:Z

    return v0
.end method

.method public static synthetic f(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic g(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic h(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)Laqe;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->r:Laqe;

    return-object v0
.end method

.method public static synthetic i(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic j()Lard;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    return-object v0
.end method

.method private l()V
    .locals 3

    .prologue
    .line 127
    new-instance v0, Larq;

    invoke-direct {v0}, Larq;-><init>()V

    iput-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->s:Larq;

    .line 128
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->s:Larq;

    invoke-virtual {v0, p0}, Larq;->a(Larr;)V

    .line 129
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->s:Larq;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    .line 238
    invoke-direct {p0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->p()V

    .line 241
    invoke-direct {p0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->q()V

    .line 243
    invoke-direct {p0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-direct {p0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->u()V

    .line 252
    :goto_0
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    const/4 v1, 0x0

    const-string v2, "[ChatActivity]"

    invoke-virtual {v0, v1, v2}, Lard;->a(ZLjava/lang/String;)V

    .line 254
    return-void

    .line 248
    :cond_0
    invoke-direct {p0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->o()V

    goto :goto_0
.end method

.method private n()Z
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v0}, Lard;->r()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v0}, Lard;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    .line 258
    invoke-virtual {v0}, Lard;->r()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lase;->g(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 257
    :goto_0
    return v0

    .line 258
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 265
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->q:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    invoke-direct {p0, v2}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->c(Z)V

    .line 270
    return-void
.end method

.method private p()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 277
    invoke-virtual {p0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 279
    sget v0, Lapi;->toolbar:I

    invoke-virtual {p0, v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->o:Landroid/support/v7/widget/Toolbar;

    .line 280
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->o:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0, v3}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a(Landroid/support/v7/widget/Toolbar;Z)V

    .line 282
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v0}, Lard;->N()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->o:Landroid/support/v7/widget/Toolbar;

    sget-object v2, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v2}, Lard;->N()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 286
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    .line 287
    invoke-virtual {v0}, Lard;->O()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 288
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v0}, Lard;->O()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 291
    :cond_1
    sget v0, Lapf;->colorPrimaryCP:I

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 292
    new-instance v1, Laqe;

    const-string v2, "Santander"

    invoke-direct {v1, p0, p0, v2, v0}, Laqe;-><init>(Landroid/app/Activity;Laqn;Ljava/lang/String;I)V

    iput-object v1, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->r:Laqe;

    .line 295
    sget v0, Lapi;->typing_tv:I

    invoke-virtual {p0, v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->n:Landroid/widget/TextView;

    .line 298
    sget v0, Lapi;->tv_mensagem:I

    invoke-virtual {p0, v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->e:Landroid/widget/EditText;

    .line 299
    sget v0, Lapi;->managers_tv:I

    invoke-virtual {p0, v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->k:Landroid/widget/TextView;

    .line 300
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->k:Landroid/widget/TextView;

    sget-object v1, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v1}, Lard;->r()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lase;->e(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    sget v0, Lapi;->chat_rv:I

    invoke-virtual {p0, v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->f:Landroid/support/v7/widget/RecyclerView;

    .line 304
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 307
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->g:Landroid/support/v7/widget/LinearLayoutManager;

    .line 308
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->g:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 311
    new-instance v0, Latb;

    sget-object v1, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v1}, Lard;->r()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0, p0}, Latb;-><init>(Landroid/content/Context;Ljava/util/List;Lata;Lasz;)V

    iput-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->l:Latb;

    .line 312
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->l:Latb;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 314
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->f:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Laso;

    invoke-direct {v1, p0}, Laso;-><init>(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 329
    sget v0, Lapi;->view_waiting_connection:I

    invoke-virtual {p0, v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->j:Landroid/view/View;

    .line 331
    sget v0, Lapi;->send_bt:I

    invoke-virtual {p0, v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->h:Landroid/widget/ImageView;

    .line 332
    sget v0, Lapi;->attach_bt:I

    invoke-virtual {p0, v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->i:Landroid/widget/ImageView;

    .line 333
    sget v0, Lapi;->linear_layout_chat_ui:I

    invoke-virtual {p0, v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->p:Landroid/widget/LinearLayout;

    .line 335
    sget v0, Lapi;->button_reconnect_chat:I

    invoke-virtual {p0, v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->q:Landroid/widget/Button;

    .line 336
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->q:Landroid/widget/Button;

    new-instance v1, Lasq;

    invoke-direct {v1, p0}, Lasq;-><init>(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v0}, Lard;->M()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lase;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 366
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->e:Landroid/widget/EditText;

    sget-object v1, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v1}, Lard;->M()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 369
    :cond_2
    sget v0, Lapi;->toolbar_feedbackloop_fl:I

    invoke-virtual {p0, v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->z:Landroid/widget/FrameLayout;

    .line 370
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v0}, Lard;->N()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 371
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->z:Landroid/widget/FrameLayout;

    sget-object v1, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    .line 372
    invoke-virtual {v1}, Lard;->N()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 371
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 374
    :cond_3
    sget v0, Lapi;->feedback_loop_frame_layout:I

    invoke-virtual {p0, v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->t:Landroid/widget/FrameLayout;

    .line 375
    sget v0, Lapi;->feedback_loop_wb:I

    invoke-virtual {p0, v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->u:Landroid/webkit/WebView;

    .line 376
    sget v0, Lapi;->finish_feedback_loop_tv:I

    invoke-virtual {p0, v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->v:Landroid/widget/TextView;

    .line 377
    sget v0, Lapi;->loading_feedback_loop_pb:I

    invoke-virtual {p0, v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->w:Landroid/widget/ProgressBar;

    .line 378
    sget v0, Lapi;->conversa_ll:I

    invoke-virtual {p0, v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->x:Landroid/widget/LinearLayout;

    .line 379
    new-instance v0, Lasi;

    iget-object v1, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->w:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->u:Landroid/webkit/WebView;

    invoke-direct {v0, v1, v2}, Lasi;-><init>(Landroid/widget/ProgressBar;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->y:Lasi;

    .line 381
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->l:Latb;

    invoke-virtual {v0}, Latb;->notifyDataSetChanged()V

    .line 383
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->e:Landroid/widget/EditText;

    new-instance v1, Last;

    invoke-direct {v1, p0}, Last;-><init>(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    return-void
.end method

.method private q()V
    .locals 4

    .prologue
    .line 398
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v0}, Lard;->v()Z

    move-result v0

    if-nez v0, :cond_1

    .line 399
    invoke-direct {p0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->s()V

    .line 406
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->A:Z

    .line 409
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 410
    new-instance v1, Lasu;

    invoke-direct {v1, p0}, Lasu;-><init>(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)V

    .line 418
    iget-object v2, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->e:Landroid/widget/EditText;

    new-instance v3, Lasv;

    invoke-direct {v3, p0, v0, v1}, Lasv;-><init>(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 450
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->i:Landroid/widget/ImageView;

    new-instance v1, Lasw;

    invoke-direct {v1, p0}, Lasw;-><init>(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->h:Landroid/widget/ImageView;

    new-instance v1, Lasx;

    invoke-direct {v1, p0}, Lasx;-><init>(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    return-void

    .line 400
    :cond_1
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v0}, Lard;->j()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 401
    invoke-static {}, Lase;->b()V

    .line 402
    invoke-direct {p0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->t()V

    goto :goto_0
.end method

.method private r()V
    .locals 3

    .prologue
    .line 502
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->e:Landroid/widget/EditText;

    .line 503
    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 504
    return-void
.end method

.method private s()V
    .locals 2

    .prologue
    .line 510
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v0}, Lard;->b()V

    .line 511
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lchat/santander/com/modulochatsantander/tasks/StartSession;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 512
    invoke-virtual {p0, v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 513
    return-void
.end method

.method private t()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 591
    invoke-direct {p0, v2}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->c(Z)V

    .line 592
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->e:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 593
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->q:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->p:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 595
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v0, v2}, Lard;->f(Z)V

    .line 596
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->l:Latb;

    invoke-virtual {v0}, Latb;->notifyDataSetChanged()V

    .line 597
    return-void
.end method

.method private u()V
    .locals 2

    .prologue
    .line 632
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 633
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->j:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 634
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->c(Z)V

    .line 636
    :cond_0
    return-void
.end method

.method private v()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 811
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v0}, Lard;->r()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lase;->f(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 812
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    const-string v1, "[ChatActivity]"

    invoke-virtual {v0, v2, v1}, Lard;->a(ZLjava/lang/String;)V

    .line 814
    :cond_0
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    const-string v1, "[ChatActivity]"

    invoke-virtual {v0, v2, v1}, Lard;->b(ZLjava/lang/String;)V

    .line 815
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v0, v2}, Lard;->a(Z)V

    .line 816
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lard;->a(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)V

    .line 817
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 821
    invoke-virtual {p0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->i()V

    .line 822
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->l:Latb;

    invoke-virtual {v0}, Latb;->notifyDataSetChanged()V

    .line 823
    return-void
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 779
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    const/4 v1, 0x0

    const-string v2, "[ChatActivity]"

    invoke-virtual {v0, v1, v2}, Lard;->b(ZLjava/lang/String;)V

    .line 780
    packed-switch p1, :pswitch_data_0

    .line 797
    :goto_0
    :pswitch_0
    return-void

    .line 793
    :pswitch_1
    const-string v0, "Chat Santander"

    const-string v1, "Desculpe, n\u00e3o conseguimos receber esse arquivo. Ele deve estar em XLS, XLSX, PPT, PPTX, DOC, DOCX ou PDF."

    invoke-static {v0, v1, p0}, Lase;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 780
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lasi;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1021
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->x:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1022
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->t:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1024
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v0}, Lard;->T()Ljava/lang/String;

    move-result-object v0

    .line 1026
    iget-object v1, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->y:Lasi;

    invoke-virtual {v1, v0}, Lasi;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1027
    iget-object v1, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->w:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1028
    iget-object v1, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->u:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1029
    iget-object v1, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->u:Landroid/webkit/WebView;

    invoke-static {v1, p1}, Lcom/ca/android/app/CaMDOWebView;->setWebViewClient(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V

    .line 1030
    iget-object v1, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->u:Landroid/webkit/WebView;

    invoke-static {v1, v0}, Lcom/ca/android/app/CaMDOWebView;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1033
    :cond_0
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->v:Landroid/widget/TextView;

    new-instance v1, Lasm;

    invoke-direct {v1, p0}, Lasm;-><init>(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1047
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v0, v2}, Lard;->f(Z)V

    .line 1048
    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 766
    if-eqz p1, :cond_0

    .line 768
    const-string v0, "[ChatActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI to send :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    const/4 v1, 0x0

    const-string v2, "[ChatActivity]"

    invoke-virtual {v0, v1, v2}, Lard;->b(ZLjava/lang/String;)V

    .line 770
    const-string v0, ""

    invoke-direct {p0, v0, p1}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 775
    :goto_0
    return-void

    .line 773
    :cond_0
    const-string v0, "[ChatActivity]"

    const-string v1, "URI : is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 827
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 828
    const-string v0, "[ChatActivity]"

    const-string v1, "onDisconnectEvent : showErrorMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-static {}, Lase;->b()V

    .line 830
    invoke-virtual {p0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->i()V

    .line 831
    invoke-direct {p0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->t()V

    .line 840
    :cond_0
    :goto_0
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->l:Latb;

    invoke-virtual {v0}, Latb;->notifyDataSetChanged()V

    .line 841
    return-void

    .line 833
    :cond_1
    iget-boolean v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->A:Z

    if-nez v0, :cond_0

    .line 834
    iput-boolean v1, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->A:Z

    .line 835
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-static {v0}, Lase;->c(Lard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v0, v1}, Lard;->f(Z)V

    goto :goto_0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 870
    invoke-virtual {p0, p1}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->i(I)V

    .line 871
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 845
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->e:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 846
    invoke-virtual {p0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->i()V

    .line 847
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->l:Latb;

    invoke-virtual {v0}, Latb;->notifyDataSetChanged()V

    .line 848
    return-void
.end method

.method public c(I)V
    .locals 2

    .prologue
    .line 875
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v0}, Lard;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    .line 876
    invoke-virtual {v0}, Lark;->o()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v1

    invoke-virtual {v1}, Larj;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 877
    :cond_0
    const-string v0, "Como voc\u00ea pediu, cancelamos o envio do seu arquivo, ok?"

    invoke-direct {p0, v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a(Ljava/lang/String;)V

    .line 881
    :cond_1
    :goto_0
    return-void

    .line 878
    :cond_2
    invoke-virtual {v0}, Lark;->v()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 879
    :cond_3
    const-string v0, "Ops, houve uma falha de conex\u00e3o com a internet e n\u00e3o conseguimos concluir o envio do arquivo. Pode tentar novamente?"

    invoke-direct {p0, v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 852
    const-string v0, "[ChatActivity]"

    const-string v1, "onMessageErrorDefault"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-static {}, Lase;->b()V

    .line 854
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->l:Latb;

    invoke-virtual {v0}, Latb;->notifyDataSetChanged()V

    .line 855
    return-void
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 886
    invoke-virtual {p0, p1}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->j(I)V

    .line 887
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 866
    return-void
.end method

.method public e(I)V
    .locals 0

    .prologue
    .line 896
    invoke-virtual {p0, p1}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->i(I)V

    .line 897
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 859
    invoke-virtual {p0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->finish()V

    .line 860
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lard;->a(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)V

    .line 861
    return-void
.end method

.method public f(I)V
    .locals 0

    .prologue
    .line 901
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 919
    return-void
.end method

.method public g(I)V
    .locals 0

    .prologue
    .line 905
    invoke-virtual {p0, p1}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->j(I)V

    .line 906
    return-void
.end method

.method public h()V
    .locals 3

    .prologue
    .line 923
    invoke-direct {p0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 924
    const-string v0, "Chat Santander"

    const-string v1, "Ops, houve uma falha na conex\u00e3o com a internet. Voc\u00ea pode tentar novamente?"

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Lase;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 926
    :cond_0
    return-void
.end method

.method public h(I)V
    .locals 1

    .prologue
    .line 910
    const/4 v0, 0x1

    invoke-static {v0}, Laqr;->a(Z)V

    .line 911
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->r:Laqe;

    invoke-virtual {v0}, Laqe;->b()V

    .line 912
    invoke-virtual {p0, p1}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->k(I)V

    .line 913
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->l:Latb;

    invoke-virtual {v0}, Latb;->notifyDataSetChanged()V

    .line 914
    return-void
.end method

.method public i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 522
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    if-eqz v0, :cond_2

    .line 524
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v0}, Lard;->r()Ljava/util/List;

    move-result-object v0

    .line 529
    invoke-static {v0}, Lase;->g(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 532
    sget-object v1, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v1}, Lard;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    invoke-static {v0}, Lase;->q(Ljava/util/List;)V

    .line 537
    :cond_0
    sget-object v1, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v1, v2}, Lard;->b(Z)V

    .line 539
    sget-object v1, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v1}, Lard;->G()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 540
    iget-object v1, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 545
    :goto_0
    invoke-direct {p0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->u()V

    .line 555
    :cond_1
    iget-object v1, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->l:Latb;

    invoke-virtual {v1, v0}, Latb;->a(Ljava/util/List;)V

    .line 556
    iget-object v1, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->l:Latb;

    invoke-virtual {v1}, Latb;->notifyDataSetChanged()V

    .line 559
    iget-object v1, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->l:Latb;

    invoke-virtual {v2}, Latb;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 563
    iget-object v1, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->k:Landroid/widget/TextView;

    invoke-static {v0}, Lase;->e(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    invoke-direct {p0, v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a(Ljava/util/List;)V

    .line 585
    :cond_2
    return-void

    .line 542
    :cond_3
    iget-object v1, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->i:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public i(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 929
    if-ltz p1, :cond_0

    .line 930
    invoke-static {}, Lard;->a()Lard;

    move-result-object v0

    invoke-virtual {v0}, Lard;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    .line 931
    invoke-virtual {v0, v3}, Lark;->e(Z)V

    .line 932
    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v1

    invoke-virtual {v1, v3}, Larj;->e(Z)V

    .line 933
    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v1

    invoke-virtual {v1, v2}, Larj;->b(Z)V

    .line 934
    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0, v2}, Larj;->g(Z)V

    .line 935
    invoke-virtual {p0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->i()V

    .line 936
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->l:Latb;

    invoke-virtual {v0}, Latb;->notifyDataSetChanged()V

    .line 938
    :cond_0
    return-void
.end method

.method public j(I)V
    .locals 8

    .prologue
    .line 942
    :try_start_0
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v0}, Lard;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    .line 943
    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->c()Ljava/io/File;

    move-result-object v5

    .line 945
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 947
    invoke-static {v5}, Laqr;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 948
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lapk;->frame_preview:I

    const/4 v2, 0x0

    .line 949
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 950
    new-instance v6, Landroid/support/v7/app/AppCompatDialog;

    sget v1, Lapp;->blackTheme:I

    invoke-direct {v6, p0, v1}, Landroid/support/v7/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 953
    invoke-virtual {v6, v0}, Landroid/support/v7/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    .line 954
    const-string v0, "Preview"

    invoke-virtual {v6, v0}, Landroid/support/v7/app/AppCompatDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 955
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/support/v7/app/AppCompatDialog;->setCanceledOnTouchOutside(Z)V

    .line 957
    sget v0, Lapi;->preview_title_tv:I

    invoke-virtual {v6, v0}, Landroid/support/v7/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 958
    sget v1, Lapi;->image_preview:I

    invoke-virtual {v6, v1}, Landroid/support/v7/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 959
    sget v2, Lapi;->image_confirm:I

    invoke-virtual {v6, v2}, Landroid/support/v7/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 960
    sget v3, Lapi;->image_cancel:I

    invoke-virtual {v6, v3}, Landroid/support/v7/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 961
    sget v4, Lapi;->close_image_preview_tv:I

    invoke-virtual {v6, v4}, Landroid/support/v7/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 963
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 964
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 965
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 967
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laqs;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 968
    if-eqz v0, :cond_0

    .line 969
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 971
    new-instance v0, Lasl;

    invoke-direct {v0, p0, v6}, Lasl;-><init>(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;Landroid/support/v7/app/AppCompatDialog;)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 978
    :cond_0
    invoke-virtual {v6}, Landroid/support/v7/app/AppCompatDialog;->show()V

    .line 999
    :goto_0
    return-void

    .line 980
    :cond_1
    invoke-static {p0, v5}, Laqr;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 981
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laqr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 982
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 983
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 984
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 985
    const v0, 0x10000001

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 988
    :try_start_1
    invoke-virtual {p0, v2}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 989
    :catch_0
    move-exception v0

    .line 990
    :try_start_2
    const-string v0, "Desculpe, n\u00e3o conseguimos abrir o arquivo, pois o seu celular n\u00e3o tem um aplicativo para esse tipo de arquivo."

    invoke-direct {p0, v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 996
    :catch_1
    move-exception v0

    .line 997
    const-string v0, "Desculpe, n\u00e3o conseguimos abrir o arquivo, pois o seu celular n\u00e3o tem um aplicativo para esse tipo de arquivo."

    invoke-direct {p0, v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 994
    :cond_2
    :try_start_3
    const-string v0, "Desculpe, n\u00e3o conseguimos mais abrir o arquivo, pois ele n\u00e3o est\u00e1 salvo no seu celular."

    invoke-direct {p0, v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public k(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1002
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->r:Laqe;

    invoke-virtual {v0}, Laqe;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v0}, Lard;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lark;

    .line 1004
    invoke-virtual {v0, v2}, Lark;->e(Z)V

    .line 1005
    invoke-virtual {v0, v2}, Lark;->h(Z)V

    .line 1006
    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v1

    invoke-virtual {v1, v2}, Larj;->e(Z)V

    .line 1007
    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v1

    invoke-virtual {v1, v2}, Larj;->b(Z)V

    .line 1008
    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v1

    invoke-virtual {v1, v3}, Larj;->g(Z)V

    .line 1009
    invoke-virtual {v0}, Lark;->l()Larj;

    move-result-object v1

    invoke-virtual {v1, v2}, Larj;->a(I)V

    .line 1010
    invoke-virtual {v0, v3}, Lark;->g(Z)V

    .line 1011
    invoke-virtual {p0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->i()V

    .line 1012
    iget-object v1, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->l:Latb;

    invoke-virtual {v1}, Latb;->notifyDataSetChanged()V

    .line 1014
    invoke-static {}, Lary;->b()Lary;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lary;->a(Lark;Z)V

    .line 1015
    invoke-virtual {p0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->i()V

    .line 1016
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->l:Latb;

    invoke-virtual {v0}, Latb;->notifyDataSetChanged()V

    .line 1018
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->l:Latb;

    invoke-virtual {v0}, Latb;->notifyDataSetChanged()V

    .line 684
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v0}, Lard;->H()Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 685
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v0, p0}, Lard;->a(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)V

    .line 687
    :cond_0
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->r:Laqe;

    invoke-virtual {v0, p1, p2, p3}, Laqe;->a(IILandroid/content/Intent;)V

    .line 688
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 801
    invoke-super {p0}, Lasy;->onBackPressed()V

    .line 803
    invoke-direct {p0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->v()V

    .line 805
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v0}, Lard;->Q()Lapa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 806
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v0}, Lard;->Q()Lapa;

    move-result-object v0

    invoke-interface {v0}, Lapa;->b()V

    .line 808
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 117
    invoke-super {p0, p1}, Lasy;->onCreate(Landroid/os/Bundle;)V

    .line 118
    sget v0, Lapk;->activity_chat:I

    invoke-virtual {p0, v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->setContentView(I)V

    .line 120
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v0, p0}, Lard;->a(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)V

    .line 121
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    const/4 v1, 0x0

    const-string v2, "[ChatActivity]"

    invoke-virtual {v0, v1, v2}, Lard;->b(ZLjava/lang/String;)V

    .line 122
    invoke-direct {p0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->m()V

    .line 123
    invoke-direct {p0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->l()V

    .line 124
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lapl;->menu_chat:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 181
    invoke-super {p0, p1}, Lasy;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->s:Larq;

    invoke-virtual {p0, v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 136
    invoke-super {p0}, Lasy;->onDestroy()V

    .line 137
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 186
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 187
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 188
    invoke-virtual {p0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->onBackPressed()V

    move v0, v6

    .line 229
    :goto_0
    return v0

    .line 190
    :cond_0
    sget v1, Lapi;->action_finish_chat:I

    if-ne v0, v1, :cond_2

    .line 191
    invoke-direct {p0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->r()V

    .line 193
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v0}, Lard;->Q()Lapa;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 194
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v0}, Lard;->Q()Lapa;

    move-result-object v0

    invoke-interface {v0}, Lapa;->c()V

    .line 197
    :cond_1
    sget v0, Lapo;->finish_chat_title:I

    invoke-virtual {p0, v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v0, Lapo;->finish_chat_message:I

    .line 198
    invoke-virtual {p0, v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lapo;->chat_finish:I

    invoke-virtual {p0, v0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lasj;

    invoke-direct {v4, p0}, Lasj;-><init>(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)V

    new-instance v5, Lasn;

    invoke-direct {v5, p0}, Lasn;-><init>(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)V

    move-object v0, p0

    .line 197
    invoke-static/range {v0 .. v5}, Lase;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    move v0, v6

    .line 227
    goto :goto_0

    .line 229
    :cond_2
    invoke-super {p0, p1}, Lasy;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 149
    invoke-super {p0}, Lasy;->onPause()V

    .line 150
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lase;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    iget-object v1, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lard;->h(Ljava/lang/String;)V

    .line 153
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .prologue
    .line 692
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->r:Laqe;

    invoke-static {}, Laqr;->e()Z

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Laqe;->a(I[Ljava/lang/String;[IZ)V

    .line 693
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 1058
    invoke-super {p0}, Lasy;->onRestart()V

    .line 1059
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->l:Latb;

    invoke-virtual {v0}, Latb;->notifyDataSetChanged()V

    .line 1060
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    invoke-virtual {v0, p0}, Lard;->a(Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;)V

    .line 174
    invoke-super {p0, p1}, Lasy;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 175
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->l:Latb;

    invoke-virtual {v0}, Latb;->notifyDataSetChanged()V

    .line 176
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Lasy;->onResume()V

    .line 143
    invoke-virtual {p0}, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->i()V

    .line 144
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->l:Latb;

    invoke-virtual {v0}, Latb;->notifyDataSetChanged()V

    .line 145
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0, p1}, Lasy;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 168
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->l:Latb;

    invoke-virtual {v0}, Latb;->notifyDataSetChanged()V

    .line 169
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 1052
    invoke-super {p0}, Lasy;->onStart()V

    .line 1053
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->l:Latb;

    invoke-virtual {v0}, Latb;->notifyDataSetChanged()V

    .line 1054
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Lasy;->onStop()V

    .line 158
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lase;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    sget-object v0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->a:Lard;

    iget-object v1, p0, Lchat/santander/com/modulochatsantander/view/activities/ChatActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lard;->h(Ljava/lang/String;)V

    .line 161
    :cond_0
    return-void
.end method
