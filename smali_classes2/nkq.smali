.class final Lnkq;
.super Ljava/lang/Object;

# interfaces
.implements Lniv;
.implements Lnix;
.implements Lnjd;
.implements Lnjj;
.implements Lnjk;
.implements Lnjm;
.implements Lnjo;


# instance fields
.field private final a:Lnkj;

.field private final b:Lnhp;

.field private final c:Lngq;

.field private final d:[Lnkd;

.field private final e:Lnim;

.field private final f:Lnhc;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnjq;",
            ">;"
        }
    .end annotation
.end field

.field private volatile i:Lnhg;

.field private j:Lnhe;

.field private k:Lnhd;

.field private l:Lnin;

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/String;

.field private volatile p:Z


# direct methods
.method constructor <init>(Lnkj;Lnhp;Lnjz;)V
    .locals 1

    invoke-virtual {p1}, Lnkj;->b()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lngq;->a(Landroid/content/Context;)Lngq;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lnkq;-><init>(Lnkj;Lnhp;Lnjz;Lngq;)V

    return-void
.end method

.method private constructor <init>(Lnkj;Lnhp;Lnjz;Lngq;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnkq;->a:Lnkj;

    invoke-virtual {p3}, Lnjz;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnkq;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lnkj;->o()Lnhc;

    move-result-object v0

    iput-object v0, p0, Lnkq;->f:Lnhc;

    new-instance v0, Lnim;

    invoke-direct {v0, p1}, Lnim;-><init>(Lnkj;)V

    iput-object v0, p0, Lnkq;->e:Lnim;

    invoke-virtual {p1}, Lnkj;->i()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lnkj;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lnkd;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnkd;

    iput-object v0, p0, Lnkq;->d:[Lnkd;

    iput-object p2, p0, Lnkq;->b:Lnhp;

    iput-object p4, p0, Lnkq;->c:Lngq;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnkq;->h:Ljava/util/List;

    invoke-virtual {p1}, Lnkj;->q()Lnin;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnkq;->a(Lnin;)V

    return-void
.end method

.method static synthetic a(Lnkq;)Lnhg;
    .locals 1

    iget-object v0, p0, Lnkq;->i:Lnhg;

    return-object v0
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lnkq;->k:Lnhd;

    if-nez v0, :cond_1

    iget-object v0, p0, Lnkq;->l:Lnin;

    invoke-virtual {v0}, Lnin;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lnhd;

    iget-object v1, p0, Lnkq;->a:Lnkj;

    iget-object v2, p0, Lnkq;->b:Lnhp;

    iget-object v3, p0, Lnkq;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lnhd;-><init>(Lnkj;Lnhp;Ljava/lang/String;)V

    iput-object v0, p0, Lnkq;->k:Lnhd;

    iget-object v0, p0, Lnkq;->b:Lnhp;

    iget-object v1, p0, Lnkq;->k:Lnhd;

    invoke-interface {v0, v1}, Lnhp;->a(Ljava/util/EventListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnkq;->k:Lnhd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnkq;->l:Lnin;

    invoke-virtual {v0}, Lnin;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnkq;->b:Lnhp;

    iget-object v1, p0, Lnkq;->k:Lnhd;

    invoke-interface {v0, v1}, Lnhp;->b(Ljava/util/EventListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnkq;->k:Lnhd;

    goto :goto_0
.end method

.method private a(I)Z
    .locals 2

    iget-object v0, p0, Lnkq;->e:Lnim;

    invoke-virtual {v0}, Lnim;->a()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lnkq;->l:Lnin;

    invoke-virtual {v1}, Lnin;->c()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lnil;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lnkq;->a(I)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p1, :cond_9

    iget-object v4, p0, Lnkq;->f:Lnhc;

    sget v5, Lnkf;->dispatch_queue_debug_queued_batch:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v1

    iget-object v7, p0, Lnkq;->e:Lnim;

    invoke-virtual {v7}, Lnim;->a()I

    move-result v7

    add-int/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    const/4 v0, 0x2

    iget-object v2, p0, Lnkq;->l:Lnin;

    invoke-virtual {v2}, Lnin;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v0

    invoke-virtual {v4, v5, v6}, Lnhc;->b(I[Ljava/lang/Object;)V

    move v0, v3

    :cond_0
    :goto_1
    if-eqz p1, :cond_1

    :goto_2
    iget-object v2, p0, Lnkq;->d:[Lnkd;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lnkq;->d:[Lnkd;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, v0}, Lnkd;->a(Lnil;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_1
    return v0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lnkq;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_0

    iget-object v3, p0, Lnkq;->f:Lnhc;

    sget v4, Lnkf;->dispatch_queue_debug_queued_battery_low:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v3, v4, v2}, Lnhc;->b(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lnkq;->e()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz p1, :cond_9

    iget-object v0, p0, Lnkq;->l:Lnin;

    invoke-virtual {v0}, Lnin;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lnkf;->dispatch_queue_debug_queued_no_wifi:I

    :goto_3
    iget-object v4, p0, Lnkq;->f:Lnhc;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v4, v0, v2}, Lnhc;->b(I[Ljava/lang/Object;)V

    move v0, v3

    goto :goto_1

    :cond_5
    sget v0, Lnkf;->dispatch_queue_debug_queued_no_network:I

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lnkq;->f()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v2

    :goto_4
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lnkq;->f:Lnhc;

    sget v4, Lnkf;->dispatch_queue_debug_queued_dispatcher_not_ready:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v3, v4, v2}, Lnhc;->b(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_4

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    move v0, v3

    goto :goto_1
.end method

.method static synthetic b(Lnkq;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lnkq;->h:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lnkq;->l:Lnin;

    invoke-virtual {v0}, Lnin;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnkq;->i:Lnhg;

    if-nez v0, :cond_1

    new-instance v0, Lnhg;

    iget-object v1, p0, Lnkq;->a:Lnkj;

    iget-object v2, p0, Lnkq;->b:Lnhp;

    invoke-direct {v0, v1, v2}, Lnhg;-><init>(Lnkj;Lnhp;)V

    iput-object v0, p0, Lnkq;->i:Lnhg;

    iget-object v0, p0, Lnkq;->b:Lnhp;

    iget-object v1, p0, Lnkq;->i:Lnhg;

    invoke-interface {v0, v1}, Lnhp;->a(Ljava/util/EventListener;)V

    iget-object v0, p0, Lnkq;->b:Lnhp;

    invoke-direct {p0}, Lnkq;->h()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Lnhp;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lnkq;->i:Lnhg;

    iget-object v1, p0, Lnkq;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lnhg;->a(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnkq;->l:Lnin;

    invoke-virtual {v0}, Lnin;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnkq;->i:Lnhg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnkq;->b:Lnhp;

    iget-object v1, p0, Lnkq;->i:Lnhg;

    invoke-interface {v0, v1}, Lnhp;->b(Ljava/util/EventListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnkq;->i:Lnhg;

    iput-boolean v3, p0, Lnkq;->m:Z

    iput-boolean v3, p0, Lnkq;->n:Z

    goto :goto_0
.end method

.method private c()V
    .locals 5

    iget-object v0, p0, Lnkq;->l:Lnin;

    invoke-virtual {v0}, Lnin;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnkq;->j:Lnhe;

    if-nez v0, :cond_1

    new-instance v0, Lnhe;

    iget-object v1, p0, Lnkq;->a:Lnkj;

    iget-object v2, p0, Lnkq;->b:Lnhp;

    iget-object v3, p0, Lnkq;->f:Lnhc;

    iget-object v4, p0, Lnkq;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lnhe;-><init>(Lnkj;Lnhp;Lnhc;Ljava/lang/String;)V

    iput-object v0, p0, Lnkq;->j:Lnhe;

    iget-object v0, p0, Lnkq;->b:Lnhp;

    iget-object v1, p0, Lnkq;->j:Lnhe;

    invoke-interface {v0, v1}, Lnhp;->a(Ljava/util/EventListener;)V

    iget-object v0, p0, Lnkq;->j:Lnhe;

    iget-object v1, p0, Lnkq;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnhe;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnkq;->l:Lnin;

    invoke-virtual {v0}, Lnin;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnkq;->j:Lnhe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnkq;->b:Lnhp;

    iget-object v1, p0, Lnkq;->j:Lnhe;

    invoke-interface {v0, v1}, Lnhp;->b(Ljava/util/EventListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnkq;->j:Lnhe;

    goto :goto_0
.end method

.method private c(Lnil;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lnkq;->d:[Lnkd;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lnkq;->d:[Lnkd;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lnkd;->a(Lnil;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Lnkq;->f:Lnhc;

    sget v4, Lnkf;->dispatch_queue_debug_format_suppressed_by:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    aput-object p1, v5, v2

    invoke-virtual {v0, v4, v5}, Lnhc;->b(I[Ljava/lang/Object;)V

    move v1, v2

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private d()Z
    .locals 1

    iget-boolean v0, p0, Lnkq;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnkq;->l:Lnin;

    invoke-virtual {v0}, Lnin;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lnkq;->l:Lnin;

    invoke-virtual {v2}, Lnin;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnkq;->c:Lngq;

    invoke-virtual {v2}, Lngq;->a()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lnkq;->c:Lngq;

    invoke-virtual {v2}, Lngq;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private f()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lnkq;->l:Lnin;

    invoke-virtual {v2}, Lnin;->j()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lnkq;->l:Lnin;

    invoke-virtual {v2}, Lnin;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_3

    iget-object v3, p0, Lnkq;->l:Lnin;

    invoke-virtual {v3}, Lnin;->i()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    :goto_1
    return v0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lnkq;->l:Lnin;

    invoke-virtual {v3}, Lnin;->i()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lnkq;->n:Z

    if-nez v3, :cond_1

    :cond_4
    if-eqz v2, :cond_5

    iget-object v2, p0, Lnkq;->l:Lnin;

    invoke-virtual {v2}, Lnin;->i()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lnkq;->m:Z

    if-nez v2, :cond_1

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private g()V
    .locals 5

    iget-object v0, p0, Lnkq;->e:Lnim;

    invoke-virtual {v0}, Lnim;->a()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnkq;->a(Lnil;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnkq;->e:Lnim;

    invoke-virtual {v0}, Lnim;->b()[Lnil;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lnkq;->b:Lnhp;

    new-instance v3, Lnhz;

    aget-object v4, v1, v0

    invoke-direct {v3, v4}, Lnhz;-><init>(Lnil;)V

    invoke-interface {v2, v3}, Lnhp;->b(Lnib;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private h()Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lnkr;

    invoke-direct {v0, p0}, Lnkr;-><init>(Lnkq;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnkq;->m:Z

    iput-boolean p2, p0, Lnkq;->n:Z

    invoke-direct {p0}, Lnkq;->g()V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lnkq;->o:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lnkq;->o:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnkq;->f:Lnhc;

    sget v3, Lnkf;->dispatch_router_join_trace:I

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {v2, v3, v4}, Lnhc;->c(I[Ljava/lang/Object;)V

    :goto_1
    iput-object p1, p0, Lnkq;->o:Ljava/lang/String;

    iget-object v2, p0, Lnkq;->j:Lnhe;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnkq;->j:Lnhe;

    invoke-virtual {v2, p1}, Lnhe;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lnkq;->i:Lnhg;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnkq;->i:Lnhg;

    if-nez p2, :cond_5

    :goto_2
    invoke-virtual {v2, p1, v0}, Lnhg;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnkq;->f:Lnhc;

    sget v3, Lnkf;->dispatch_router_leave_trace:I

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lnkq;->o:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Lnhc;->c(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lnkq;->f:Lnhc;

    sget v3, Lnkf;->dispatch_router_update_trace:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lnkq;->o:Ljava/lang/String;

    aput-object v5, v4, v1

    aput-object p1, v4, v0

    invoke-virtual {v2, v3, v4}, Lnhc;->c(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public a(Lnin;)V
    .locals 3

    iput-object p1, p0, Lnkq;->l:Lnin;

    iget-object v0, p0, Lnkq;->e:Lnim;

    iget-object v1, p0, Lnkq;->l:Lnin;

    invoke-virtual {v1}, Lnin;->b()I

    move-result v1

    iget-object v2, p0, Lnkq;->l:Lnin;

    invoke-virtual {v2}, Lnin;->a()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lnim;->a(IF)V

    iget-object v0, p0, Lnkq;->l:Lnin;

    invoke-virtual {v0}, Lnin;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lnkq;->a()V

    invoke-direct {p0}, Lnkq;->c()V

    invoke-direct {p0}, Lnkq;->b()V

    invoke-direct {p0}, Lnkq;->g()V

    goto :goto_0
.end method

.method public a(Lnjq;)V
    .locals 1

    iget-object v0, p0, Lnkq;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnkq;->i:Lnhg;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lnhg;->a()Lnjx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnjx;->a(Lnjq;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lnkq;->p:Z

    return-void
.end method

.method public b(Lnil;)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lnkq;->c(Lnil;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lnkq;->a(Lnil;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "was_queued"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnil;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnkq;->e:Lnim;

    invoke-virtual {v0, p1}, Lnim;->a(Lnil;)V

    iget-object v0, p0, Lnkq;->b:Lnhp;

    new-instance v1, Lnhx;

    invoke-direct {v1, p1}, Lnhx;-><init>(Lnil;)V

    invoke-interface {v0, v1}, Lnhp;->b(Lnib;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnkq;->e:Lnim;

    invoke-virtual {v0}, Lnim;->a()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lnkq;->e:Lnim;

    invoke-virtual {v0}, Lnim;->b()[Lnil;

    move-result-object v2

    move v0, v1

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lnkq;->b:Lnhp;

    new-instance v4, Lnhz;

    aget-object v5, v2, v0

    invoke-direct {v4, v5}, Lnhz;-><init>(Lnil;)V

    invoke-interface {v3, v4}, Lnhp;->b(Lnib;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "was_queued"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnil;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnkq;->b:Lnhp;

    new-instance v1, Lnhz;

    invoke-direct {v1, p1}, Lnhz;-><init>(Lnil;)V

    invoke-interface {v0, v1}, Lnhp;->b(Lnib;)V

    goto :goto_0
.end method

.method public b(Lnjq;)V
    .locals 1

    iget-object v0, p0, Lnkq;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnkq;->i:Lnhg;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lnhg;->a()Lnjx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnjx;->b(Lnjq;)V

    goto :goto_0
.end method
