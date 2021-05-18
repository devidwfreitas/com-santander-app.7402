.class public final Ldce;
.super Lcpt;

# interfaces
.implements Lddh;


# instance fields
.field private final A:Lctz;

.field final c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ldan",
            "<**>;>;"
        }
    .end annotation
.end field

.field d:Ldcz;

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcpf",
            "<*>;",
            "Lcph;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field final g:Lctn;

.field final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcox",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final i:Lcpd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcpd",
            "<+",
            "Ldpx;",
            "Ldpy;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ldej;",
            ">;"
        }
    .end annotation
.end field

.field final k:Ldem;

.field private final l:Ljava/util/concurrent/locks/Lock;

.field private m:Z

.field private final n:Lcty;

.field private o:Lddg;

.field private final p:I

.field private final q:Landroid/content/Context;

.field private final r:Landroid/os/Looper;

.field private volatile s:Z

.field private t:J

.field private u:J

.field private final v:Ldcj;

.field private final w:Lcon;

.field private final x:Lddr;

.field private final y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldax;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lctn;Lcon;Lcpd;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lctn;",
            "Lcon;",
            "Lcpd",
            "<+",
            "Ldpx;",
            "Ldpy;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcox",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcpv;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcpw;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcpf",
            "<*>;",
            "Lcph;",
            ">;II",
            "Ljava/util/ArrayList",
            "<",
            "Ldax;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcpt;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Ldce;->o:Lddg;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Ldce;->c:Ljava/util/Queue;

    const-wide/32 v2, 0x1d4c0

    iput-wide v2, p0, Ldce;->t:J

    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Ldce;->u:J

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Ldce;->f:Ljava/util/Set;

    new-instance v2, Lddr;

    invoke-direct {v2}, Lddr;-><init>()V

    iput-object v2, p0, Ldce;->x:Lddr;

    const/4 v2, 0x0

    iput-object v2, p0, Ldce;->z:Ljava/lang/Integer;

    const/4 v2, 0x0

    iput-object v2, p0, Ldce;->j:Ljava/util/Set;

    new-instance v2, Ldcf;

    invoke-direct {v2, p0}, Ldcf;-><init>(Ldce;)V

    iput-object v2, p0, Ldce;->A:Lctz;

    iput-object p1, p0, Ldce;->q:Landroid/content/Context;

    iput-object p2, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    move/from16 v0, p14

    iput-boolean v0, p0, Ldce;->m:Z

    new-instance v2, Lcty;

    iget-object v3, p0, Ldce;->A:Lctz;

    invoke-direct {v2, p3, v3}, Lcty;-><init>(Landroid/os/Looper;Lctz;)V

    iput-object v2, p0, Ldce;->n:Lcty;

    iput-object p3, p0, Ldce;->r:Landroid/os/Looper;

    new-instance v2, Ldcj;

    invoke-direct {v2, p0, p3}, Ldcj;-><init>(Ldce;Landroid/os/Looper;)V

    iput-object v2, p0, Ldce;->v:Ldcj;

    iput-object p5, p0, Ldce;->w:Lcon;

    move/from16 v0, p11

    iput v0, p0, Ldce;->p:I

    iget v2, p0, Ldce;->p:I

    if-ltz v2, :cond_0

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Ldce;->z:Ljava/lang/Integer;

    :cond_0
    iput-object p7, p0, Ldce;->h:Ljava/util/Map;

    iput-object p10, p0, Ldce;->e:Ljava/util/Map;

    move-object/from16 v0, p13

    iput-object v0, p0, Ldce;->y:Ljava/util/ArrayList;

    new-instance v2, Ldem;

    iget-object v3, p0, Ldce;->e:Ljava/util/Map;

    invoke-direct {v2, v3}, Ldem;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Ldce;->k:Ldem;

    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcpv;

    iget-object v4, p0, Ldce;->n:Lcty;

    invoke-virtual {v4, v2}, Lcty;->a(Lcpv;)V

    goto :goto_0

    :cond_1
    invoke-interface {p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcpw;

    iget-object v4, p0, Ldce;->n:Lcty;

    invoke-virtual {v4, v2}, Lcty;->a(Lcpw;)V

    goto :goto_1

    :cond_2
    iput-object p4, p0, Ldce;->g:Lctn;

    iput-object p6, p0, Ldce;->i:Lcpd;

    return-void
.end method

.method public static a(Ljava/lang/Iterable;Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcph;",
            ">;Z)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcph;

    invoke-interface {v0}, Lcph;->d()Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v3

    :cond_0
    invoke-interface {v0}, Lcph;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    const/4 v3, 0x2

    :cond_2
    :goto_2
    return v3

    :cond_3
    const/4 v3, 0x3

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private a(Lcpt;Ldee;Z)V
    .locals 2

    sget-object v0, Ldfg;->c:Ldfi;

    invoke-interface {v0, p1}, Ldfi;->a(Lcpt;)Lcpy;

    move-result-object v0

    new-instance v1, Ldci;

    invoke-direct {v1, p0, p2, p3, p1}, Ldci;-><init>(Ldce;Ldee;ZLcpt;)V

    invoke-virtual {v0, v1}, Lcpy;->a(Lcqh;)V

    return-void
.end method

.method static synthetic a(Ldce;)V
    .locals 0

    invoke-direct {p0}, Ldce;->t()V

    return-void
.end method

.method static synthetic a(Ldce;Lcpt;Ldee;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldce;->a(Lcpt;Ldee;Z)V

    return-void
.end method

.method private a(Lddi;)V
    .locals 2
    .param p1    # Lddi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Ldce;->p:I

    if-ltz v0, :cond_0

    invoke-static {p1}, Ldah;->a(Lddi;)Ldah;

    move-result-object v0

    iget v1, p0, Ldce;->p:I

    invoke-virtual {v0, v1}, Ldah;->a(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called stopAutoManage but automatic lifecycle management is not enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static b(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "SIGN_IN_MODE_NONE"

    goto :goto_0

    :pswitch_1
    const-string v0, "SIGN_IN_MODE_REQUIRED"

    goto :goto_0

    :pswitch_2
    const-string v0, "SIGN_IN_MODE_OPTIONAL"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Ldce;)V
    .locals 0

    invoke-direct {p0}, Ldce;->u()V

    return-void
.end method

.method static synthetic c(Ldce;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ldce;->q:Landroid/content/Context;

    return-object v0
.end method

.method private c(I)V
    .locals 13

    const/4 v11, 0x1

    const/4 v12, 0x0

    iget-object v0, p0, Ldce;->z:Ljava/lang/Integer;

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ldce;->z:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p0, Ldce;->o:Lddg;

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ldce;->z:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ldce;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldce;->z:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ldce;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x33

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Cannot use sign-in mode: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". Mode was already set to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Ldce;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v12

    move v2, v12

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcph;

    invoke-interface {v0}, Lcph;->d()Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v11

    :cond_3
    invoke-interface {v0}, Lcph;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v11

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Ldce;->z:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_5
    :pswitch_0
    iget-boolean v0, p0, Ldce;->m:Z

    if-eqz v0, :cond_8

    if-nez v1, :cond_8

    new-instance v0, Ldbe;

    iget-object v1, p0, Ldce;->q:Landroid/content/Context;

    iget-object v2, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    iget-object v3, p0, Ldce;->r:Landroid/os/Looper;

    iget-object v4, p0, Ldce;->w:Lcon;

    iget-object v5, p0, Ldce;->e:Ljava/util/Map;

    iget-object v6, p0, Ldce;->g:Lctn;

    iget-object v7, p0, Ldce;->h:Ljava/util/Map;

    iget-object v8, p0, Ldce;->i:Lcpd;

    iget-object v9, p0, Ldce;->y:Ljava/util/ArrayList;

    move-object v10, p0

    move v11, v12

    invoke-direct/range {v0 .. v11}, Ldbe;-><init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcwn;Ljava/util/Map;Lctn;Ljava/util/Map;Lcpd;Ljava/util/ArrayList;Ldce;Z)V

    iput-object v0, p0, Ldce;->o:Lddg;

    goto/16 :goto_0

    :pswitch_1
    if-nez v2, :cond_6

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-eqz v1, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    if-eqz v2, :cond_5

    iget-boolean v0, p0, Ldce;->m:Z

    if-eqz v0, :cond_7

    new-instance v0, Ldbe;

    iget-object v1, p0, Ldce;->q:Landroid/content/Context;

    iget-object v2, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    iget-object v3, p0, Ldce;->r:Landroid/os/Looper;

    iget-object v4, p0, Ldce;->w:Lcon;

    iget-object v5, p0, Ldce;->e:Ljava/util/Map;

    iget-object v6, p0, Ldce;->g:Lctn;

    iget-object v7, p0, Ldce;->h:Ljava/util/Map;

    iget-object v8, p0, Ldce;->i:Lcpd;

    iget-object v9, p0, Ldce;->y:Ljava/util/ArrayList;

    move-object v10, p0

    invoke-direct/range {v0 .. v11}, Ldbe;-><init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcwn;Ljava/util/Map;Lctn;Ljava/util/Map;Lcpd;Ljava/util/ArrayList;Ldce;Z)V

    iput-object v0, p0, Ldce;->o:Lddg;

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Ldce;->q:Landroid/content/Context;

    iget-object v2, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    iget-object v3, p0, Ldce;->r:Landroid/os/Looper;

    iget-object v4, p0, Ldce;->w:Lcon;

    iget-object v5, p0, Ldce;->e:Ljava/util/Map;

    iget-object v6, p0, Ldce;->g:Lctn;

    iget-object v7, p0, Ldce;->h:Ljava/util/Map;

    iget-object v8, p0, Ldce;->i:Lcpd;

    iget-object v9, p0, Ldce;->y:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-static/range {v0 .. v9}, Ldaz;->a(Landroid/content/Context;Ldce;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcwn;Ljava/util/Map;Lctn;Ljava/util/Map;Lcpd;Ljava/util/ArrayList;)Ldaz;

    move-result-object v0

    iput-object v0, p0, Ldce;->o:Lddg;

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ldcm;

    iget-object v1, p0, Ldce;->q:Landroid/content/Context;

    iget-object v3, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    iget-object v4, p0, Ldce;->r:Landroid/os/Looper;

    iget-object v5, p0, Ldce;->w:Lcon;

    iget-object v6, p0, Ldce;->e:Ljava/util/Map;

    iget-object v7, p0, Ldce;->g:Lctn;

    iget-object v8, p0, Ldce;->h:Ljava/util/Map;

    iget-object v9, p0, Ldce;->i:Lcpd;

    iget-object v10, p0, Ldce;->y:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v11, p0

    invoke-direct/range {v0 .. v11}, Ldcm;-><init>(Landroid/content/Context;Ldce;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcwn;Ljava/util/Map;Lctn;Ljava/util/Map;Lcpd;Ljava/util/ArrayList;Lddh;)V

    iput-object v0, p0, Ldce;->o:Lddg;

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private s()V
    .locals 1

    iget-object v0, p0, Ldce;->n:Lcty;

    invoke-virtual {v0}, Lcty;->b()V

    iget-object v0, p0, Ldce;->o:Lddg;

    invoke-interface {v0}, Lddg;->a()V

    return-void
.end method

.method private t()V
    .locals 2

    iget-object v0, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Ldce;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ldce;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private u()V
    .locals 2

    iget-object v0, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Ldce;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ldce;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 3
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v1}, Lcsp;->a(ZLjava/lang/Object;)V

    const-string v0, "TimeUnit must not be null"

    invoke-static {p3, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Ldce;->z:Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget-object v0, p0, Ldce;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldce;->a(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ldce;->z:Ljava/lang/Integer;

    :cond_1
    iget-object v0, p0, Ldce;->z:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Ldce;->c(I)V

    iget-object v0, p0, Ldce;->n:Lcty;

    invoke-virtual {v0}, Lcty;->b()V

    iget-object v0, p0, Ldce;->o:Lddg;

    invoke-interface {v0, p1, p2, p3}, Lddg;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Ldce;->z:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Lcpf;)Lcph;
    .locals 2
    .param p1    # Lcpf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcph;",
            ">(",
            "Lcpf",
            "<TC;>;)TC;"
        }
    .end annotation

    iget-object v0, p0, Ldce;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcph;

    const-string v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public a(Ldan;)Ldan;
    .locals 4
    .param p1    # Ldan;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcpe;",
            "R::",
            "Lcqg;",
            "T:",
            "Ldan",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ldan;->b()Lcpf;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This task can not be enqueued (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcsp;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Ldce;->e:Ljava/util/Map;

    invoke-virtual {p1}, Ldan;->b()Lcpf;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1}, Ldan;->c()Lcox;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ldan;->c()Lcox;

    move-result-object v0

    invoke-virtual {v0}, Lcox;->d()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x41

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GoogleApiClient is not configured to use "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " required for this call."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcsp;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Ldce;->o:Lddg;

    if-nez v0, :cond_2

    iget-object v0, p0, Ldce;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_2
    return-object p1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "the API"

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v0, p0, Ldce;->o:Lddg;

    invoke-interface {v0, p1}, Lddg;->a(Ldan;)Ldan;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    iget-object v0, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Ljava/lang/Object;)Lddn;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(T",
            "L;",
            ")",
            "Lddn",
            "<T",
            "L;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Ldce;->x:Lddr;

    iget-object v1, p0, Ldce;->r:Landroid/os/Looper;

    invoke-virtual {v0, p1, v1}, Lddr;->a(Ljava/lang/Object;Landroid/os/Looper;)Lddn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(I)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    const/16 v1, 0x21

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Illegal sign-in mode: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcsp;->b(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Ldce;->c(I)V

    invoke-direct {p0}, Ldce;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(IZ)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Ldce;->n()V

    :cond_0
    iget-object v0, p0, Ldce;->k:Ldem;

    invoke-virtual {v0}, Ldem;->b()V

    iget-object v0, p0, Ldce;->n:Lcty;

    invoke-virtual {v0, p1}, Lcty;->a(I)V

    iget-object v0, p0, Ldce;->n:Lcty;

    invoke-virtual {v0}, Lcty;->a()V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Ldce;->s()V

    :cond_1
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    :goto_0
    iget-object v0, p0, Ldce;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldce;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldan;

    invoke-virtual {p0, v0}, Ldce;->b(Ldan;)Ldan;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldce;->n:Lcty;

    invoke-virtual {v0, p1}, Lcty;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lddi;

    invoke-direct {v0, p1}, Lddi;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Ldce;->a(Lddi;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, Ldce;->w:Lcon;

    iget-object v1, p0, Ldce;->q:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcon;->b(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ldce;->o()Z

    :cond_0
    invoke-virtual {p0}, Ldce;->m()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldce;->n:Lcty;

    invoke-virtual {v0, p1}, Lcty;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Ldce;->n:Lcty;

    invoke-virtual {v0}, Lcty;->a()V

    :cond_1
    return-void
.end method

.method public a(Lcpv;)V
    .locals 1
    .param p1    # Lcpv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Ldce;->n:Lcty;

    invoke-virtual {v0, p1}, Lcty;->a(Lcpv;)V

    return-void
.end method

.method public a(Lcpw;)V
    .locals 1
    .param p1    # Lcpw;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Ldce;->n:Lcty;

    invoke-virtual {v0, p1}, Lcty;->a(Lcpw;)V

    return-void
.end method

.method public a(Ldej;)V
    .locals 2

    iget-object v0, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Ldce;->j:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ldce;->j:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Ldce;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Lcox;)Z
    .locals 2
    .param p1    # Lcox;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcox",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Ldce;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcox;->c()Lcpf;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Lddz;)Z
    .locals 1

    iget-object v0, p0, Ldce;->o:Lddg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldce;->o:Lddg;

    invoke-interface {v0, p1}, Lddg;->a(Lddz;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ldce;->q:Landroid/content/Context;

    return-object v0
.end method

.method b(Lcpf;)Lcph;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcph;",
            ">(",
            "Lcpf",
            "<*>;)TC;"
        }
    .end annotation

    iget-object v0, p0, Ldce;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcph;

    const-string v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public b(Ldan;)Ldan;
    .locals 4
    .param p1    # Ldan;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcpe;",
            "T:",
            "Ldan",
            "<+",
            "Lcqg;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ldan;->b()Lcpf;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This task can not be executed (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcsp;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Ldce;->e:Ljava/util/Map;

    invoke-virtual {p1}, Ldan;->b()Lcpf;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1}, Ldan;->c()Lcox;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ldan;->c()Lcox;

    move-result-object v0

    invoke-virtual {v0}, Lcox;->d()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x41

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GoogleApiClient is not configured to use "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " required for this call."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcsp;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Ldce;->o:Lddg;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "the API"

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ldce;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ldce;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object v0, p0, Ldce;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ldce;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldan;

    iget-object v1, p0, Ldce;->k:Ldem;

    invoke-virtual {v1, v0}, Ldem;->a(Ldat;)V

    sget-object v1, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Ldan;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_3
    return-object p1

    :cond_4
    :try_start_2
    iget-object v0, p0, Ldce;->o:Lddg;

    invoke-interface {v0, p1}, Lddg;->b(Ldan;)Ldan;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object p1

    iget-object v0, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3
.end method

.method public b(Ldej;)V
    .locals 3

    iget-object v0, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Ldce;->j:Ljava/util/Set;

    if-nez v0, :cond_1

    const-string v0, "GoogleApiClientImpl"

    const-string v1, "Attempted to remove pending transform when no transforms are registered."

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iget-object v0, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Ldce;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "GoogleApiClientImpl"

    const-string v1, "Failed to remove pending transform - this may lead to memory leaks!"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Ldce;->p()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldce;->o:Lddg;

    invoke-interface {v0}, Lddg;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mContext="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Ldce;->q:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mResuming="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Ldce;->s:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mWorkQueue.size()="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Ldce;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    iget-object v0, p0, Ldce;->k:Ldem;

    invoke-virtual {v0, p3}, Ldem;->a(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Ldce;->o:Lddg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldce;->o:Lddg;

    invoke-interface {v0, p1, p2, p3, p4}, Lddg;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Lcox;)Z
    .locals 3
    .param p1    # Lcox;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcox",
            "<*>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Ldce;->j()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Ldce;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcox;->c()Lcpf;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcph;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcph;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public b(Lcpv;)Z
    .locals 1
    .param p1    # Lcpv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Ldce;->n:Lcty;

    invoke-virtual {v0, p1}, Lcty;->b(Lcpv;)Z

    move-result v0

    return v0
.end method

.method public b(Lcpw;)Z
    .locals 1
    .param p1    # Lcpw;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Ldce;->n:Lcty;

    invoke-virtual {v0, p1}, Lcty;->b(Lcpw;)Z

    move-result v0

    return v0
.end method

.method public c()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Ldce;->r:Landroid/os/Looper;

    return-object v0
.end method

.method public c(Lcox;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 3
    .param p1    # Lcox;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcox",
            "<*>;)",
            "Lcom/google/android/gms/common/ConnectionResult;"
        }
    .end annotation

    iget-object v0, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Ldce;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ldce;->m()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot invoke getConnectionResult unless GoogleApiClient is connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ldce;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcox;->c()Lcpf;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldce;->o:Lddg;

    invoke-interface {v0, p1}, Lddg;->a(Lcox;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ldce;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->u:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v0

    :cond_1
    :try_start_2
    const-string v0, "GoogleApiClientImpl"

    invoke-virtual {p0}, Ldce;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GoogleApiClientImpl"

    invoke-virtual {p1}, Lcox;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " requested in getConnectionResult is not connected but is not present in the failed  connections map"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcox;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " was never registered with GoogleApiClient"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public c(Lcpv;)V
    .locals 1
    .param p1    # Lcpv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Ldce;->n:Lcty;

    invoke-virtual {v0, p1}, Lcty;->c(Lcpv;)V

    return-void
.end method

.method public c(Lcpw;)V
    .locals 1
    .param p1    # Lcpw;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Ldce;->n:Lcty;

    invoke-virtual {v0, p1}, Lcty;->c(Lcpw;)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Ldce;->o:Lddg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldce;->o:Lddg;

    invoke-interface {v0}, Lddg;->g()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v1, p0, Ldce;->p:I

    if-ltz v1, :cond_2

    iget-object v1, p0, Ldce;->z:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "Sign-in mode should have been set explicitly by auto-manage."

    invoke-static {v0, v1}, Lcsp;->a(ZLjava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Ldce;->z:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ldce;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Ldce;->z:Ljava/lang/Integer;

    if-nez v0, :cond_3

    iget-object v0, p0, Ldce;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldce;->a(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ldce;->z:Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3
    :try_start_2
    iget-object v0, p0, Ldce;->z:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public f()Lcom/google/android/gms/common/ConnectionResult;
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v3}, Lcsp;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Ldce;->p:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Ldce;->z:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    :goto_1
    const-string v0, "Sign-in mode should have been set explicitly by auto-manage."

    invoke-static {v1, v0}, Lcsp;->a(ZLjava/lang/Object;)V

    :cond_0
    :goto_2
    iget-object v0, p0, Ldce;->z:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Ldce;->c(I)V

    iget-object v0, p0, Ldce;->n:Lcty;

    invoke-virtual {v0}, Lcty;->b()V

    iget-object v0, p0, Ldce;->o:Lddg;

    invoke-interface {v0}, Lddg;->b()Lcom/google/android/gms/common/ConnectionResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v0, p0, Ldce;->z:Ljava/lang/Integer;

    if-nez v0, :cond_4

    iget-object v0, p0, Ldce;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldce;->a(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ldce;->z:Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_4
    :try_start_2
    iget-object v0, p0, Ldce;->z:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Ldce;->k:Ldem;

    invoke-virtual {v0}, Ldem;->a()V

    iget-object v0, p0, Ldce;->o:Lddg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldce;->o:Lddg;

    invoke-interface {v0}, Lddg;->c()V

    :cond_0
    iget-object v0, p0, Ldce;->x:Lddr;

    invoke-virtual {v0}, Lddr;->a()V

    iget-object v0, p0, Ldce;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldan;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ldan;->a(Ldep;)V

    invoke-virtual {v0}, Ldan;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Ldce;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Ldce;->o:Lddg;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    iget-object v0, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return-void

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Ldce;->o()Z

    iget-object v0, p0, Ldce;->n:Lcty;

    invoke-virtual {v0}, Lcty;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1
.end method

.method public h()V
    .locals 0

    invoke-virtual {p0}, Ldce;->g()V

    invoke-virtual {p0}, Ldce;->e()V

    return-void
.end method

.method public i()Lcpy;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Ldce;->j()Z

    move-result v0

    const-string v2, "GoogleApiClient is not connected yet."

    invoke-static {v0, v2}, Lcsp;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Ldce;->z:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Cannot use clearDefaultAccountAndReconnect with GOOGLE_SIGN_IN_API"

    invoke-static {v0, v2}, Lcsp;->a(ZLjava/lang/Object;)V

    new-instance v0, Ldee;

    invoke-direct {v0, p0}, Ldee;-><init>(Lcpt;)V

    iget-object v2, p0, Ldce;->e:Ljava/util/Map;

    sget-object v3, Ldfg;->a:Lcpi;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p0, v0, v1}, Ldce;->a(Lcpt;Ldee;Z)V

    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v2, Ldcg;

    invoke-direct {v2, p0, v1, v0}, Ldcg;-><init>(Ldce;Ljava/util/concurrent/atomic/AtomicReference;Ldee;)V

    new-instance v3, Ldch;

    invoke-direct {v3, p0, v0}, Ldch;-><init>(Ldce;Ldee;)V

    new-instance v4, Lcpu;

    iget-object v5, p0, Ldce;->q:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcpu;-><init>(Landroid/content/Context;)V

    sget-object v5, Ldfg;->b:Lcox;

    invoke-virtual {v4, v5}, Lcpu;->a(Lcox;)Lcpu;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcpu;->a(Lcpv;)Lcpu;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcpu;->a(Lcpw;)Lcpu;

    move-result-object v2

    iget-object v3, p0, Ldce;->v:Ldcj;

    invoke-virtual {v2, v3}, Lcpu;->a(Landroid/os/Handler;)Lcpu;

    move-result-object v2

    invoke-virtual {v2}, Lcpu;->c()Lcpt;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcpt;->e()V

    goto :goto_1
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Ldce;->o:Lddg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldce;->o:Lddg;

    invoke-interface {v0}, Lddg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Ldce;->o:Lddg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldce;->o:Lddg;

    invoke-interface {v0}, Lddg;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method m()Z
    .locals 1

    iget-boolean v0, p0, Ldce;->s:Z

    return v0
.end method

.method n()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Ldce;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Ldce;->s:Z

    iget-object v0, p0, Ldce;->d:Ldcz;

    if-nez v0, :cond_1

    iget-object v0, p0, Ldce;->w:Lcon;

    iget-object v1, p0, Ldce;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ldck;

    invoke-direct {v2, p0}, Ldck;-><init>(Ldce;)V

    invoke-virtual {v0, v1, v2}, Lcon;->a(Landroid/content/Context;Ldda;)Ldcz;

    move-result-object v0

    iput-object v0, p0, Ldce;->d:Ldcz;

    :cond_1
    iget-object v0, p0, Ldce;->v:Ldcj;

    iget-object v1, p0, Ldce;->v:Ldcj;

    invoke-virtual {v1, v3}, Ldcj;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Ldce;->t:J

    invoke-virtual {v0, v1, v2, v3}, Ldcj;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Ldce;->v:Ldcj;

    iget-object v1, p0, Ldce;->v:Ldcj;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ldcj;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Ldce;->u:J

    invoke-virtual {v0, v1, v2, v3}, Ldcj;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method o()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Ldce;->m()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Ldce;->s:Z

    iget-object v0, p0, Ldce;->v:Ldcj;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ldcj;->removeMessages(I)V

    iget-object v0, p0, Ldce;->v:Ldcj;

    invoke-virtual {v0, v1}, Ldcj;->removeMessages(I)V

    iget-object v0, p0, Ldce;->d:Ldcz;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldce;->d:Ldcz;

    invoke-virtual {v0}, Ldcz;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldce;->d:Ldcz;

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method p()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Ldce;->j:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    iget-object v1, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Ldce;->j:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldce;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method q()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const-string v1, ""

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1, v3, v2, v3}, Ldce;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
