.class public Ldnk;
.super Ldmu;


# instance fields
.field protected a:Ldnn;

.field private volatile b:Legk;

.field private c:Legk;

.field private d:J

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/Activity;",
            "Ldnn;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Legi;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Legk;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ldlv;)V
    .locals 1

    invoke-direct {p0, p1}, Ldmu;-><init>(Ldlv;)V

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Ldnk;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ldnk;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x24

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Ldnn;Z)V
    .locals 9
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v8, 0x0

    iget-object v1, p0, Ldnk;->b:Legk;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldnk;->b:Legk;

    :goto_0
    if-eqz v1, :cond_4

    new-instance v0, Legk;

    invoke-direct {v0, v1}, Legk;-><init>(Legk;)V

    move-object v1, v0

    :goto_1
    iput-boolean v2, p0, Ldnk;->g:Z

    :try_start_0
    iget-object v0, p0, Ldnk;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Legi;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0, v1, p2}, Legi;->a(Legk;Legk;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    and-int/2addr v0, v2

    :goto_3
    move v2, v0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Ldnk;->c:Legk;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Ldnk;->m()Lcvo;

    move-result-object v1

    invoke-interface {v1}, Lcvo;->b()J

    move-result-wide v4

    iget-wide v6, p0, Ldnk;->d:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    cmp-long v1, v4, v6

    if-gez v1, :cond_5

    iget-object v1, p0, Ldnk;->c:Legk;

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {p0}, Ldnk;->u()Ldkw;

    move-result-object v4

    invoke-virtual {v4}, Ldkw;->x()Ldky;

    move-result-object v4

    const-string v5, "onScreenChangeCallback threw exception"

    invoke-virtual {v4, v5, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v2

    goto :goto_3

    :cond_1
    iput-boolean v8, p0, Ldnk;->g:Z

    :goto_4
    if-eqz v2, :cond_3

    iget-object v0, p2, Ldnn;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldnk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Ldnn;->c:Ljava/lang/String;

    :cond_2
    new-instance v0, Ldnn;

    invoke-direct {v0, p2}, Ldnn;-><init>(Ldnn;)V

    iget-object v1, p0, Ldnk;->b:Legk;

    iput-object v1, p0, Ldnk;->c:Legk;

    invoke-virtual {p0}, Ldnk;->m()Lcvo;

    move-result-object v1

    invoke-interface {v1}, Lcvo;->b()J

    move-result-wide v2

    iput-wide v2, p0, Ldnk;->d:J

    iput-object v0, p0, Ldnk;->b:Legk;

    invoke-virtual {p0}, Ldnk;->t()Ldlq;

    move-result-object v1

    new-instance v2, Ldnl;

    invoke-direct {v2, p0, p3, v0}, Ldnl;-><init>(Ldnk;ZLdnn;)V

    invoke-virtual {v1, v2}, Ldlq;->a(Ljava/lang/Runnable;)V

    :cond_3
    return-void

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {p0}, Ldnk;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v3, "onScreenChangeCallback loop threw exception"

    invoke-virtual {v1, v3, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-boolean v8, p0, Ldnk;->g:Z

    goto :goto_4

    :catchall_0
    move-exception v0

    iput-boolean v8, p0, Ldnk;->g:Z

    throw v0

    :cond_4
    move-object v1, v0

    goto/16 :goto_1

    :cond_5
    move-object v1, v0

    goto/16 :goto_0
.end method

.method static synthetic a(Ldnk;Ldnn;)V
    .locals 0

    invoke-direct {p0, p1}, Ldnk;->a(Ldnn;)V

    return-void
.end method

.method private a(Ldnn;)V
    .locals 4
    .param p1    # Ldnn;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldnk;->f()Ldjs;

    move-result-object v0

    invoke-virtual {p0}, Ldnk;->m()Lcvo;

    move-result-object v1

    invoke-interface {v1}, Lcvo;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldjs;->a(J)V

    invoke-virtual {p0}, Ldnk;->s()Ldok;

    move-result-object v0

    iget-boolean v1, p1, Ldnn;->a:Z

    invoke-virtual {v0, v1}, Ldok;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Ldnn;->a:Z

    :cond_0
    return-void
.end method

.method public static a(Legk;Landroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    const-string v0, "_sc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Legk;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "_sn"

    iget-object v1, p0, Legk;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "_sc"

    iget-object v1, p0, Legk;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_si"

    iget-wide v2, p0, Legk;->d:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method


# virtual methods
.method a(Landroid/app/Activity;)Ldnn;
    .locals 6
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ldnk;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldnn;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldnk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ldnn;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ldnk;->q()Ldou;

    move-result-object v3

    invoke-virtual {v3}, Ldou;->x()J

    move-result-wide v4

    invoke-direct {v0, v2, v1, v4, v5}, Ldnn;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Ldnk;->e:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "com.google.firebase.analytics.screen_service"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ldnk;->a(Landroid/app/Activity;)Ldnn;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Ldnn;->d:J

    const-string v2, "name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ldnn;->b:Ljava/lang/String;

    const-string v2, "referrer_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ldnn;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x24L
            min = 0x1L
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x24L
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const/4 v1, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ldnk;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->z()Ldky;

    move-result-object v0

    const-string v1, "setCurrentScreen must be called with a non-null activity"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ldnk;->t()Ldlq;

    move-result-object v0

    invoke-virtual {v0}, Ldlq;->x()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ldnk;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->z()Ldky;

    move-result-object v0

    const-string v1, "setCurrentScreen must be called from the main thread"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Ldnk;->g:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ldnk;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->z()Ldky;

    move-result-object v0

    const-string v1, "Cannot call setCurrentScreen from onScreenChangeCallback"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ldnk;->b:Legk;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ldnk;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->z()Ldky;

    move-result-object v0

    const-string v1, "setCurrentScreen cannot be called while no activity active"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ldnk;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ldnk;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->z()Ldky;

    move-result-object v0

    const-string v1, "setCurrentScreen must be called with an activity in the activity lifecycle"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-nez p3, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldnk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_5
    iget-object v0, p0, Ldnk;->b:Legk;

    iget-object v0, v0, Legk;->c:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v0, p0, Ldnk;->b:Legk;

    iget-object v0, v0, Legk;->b:Ljava/lang/String;

    if-nez v0, :cond_6

    if-eqz p2, :cond_7

    :cond_6
    iget-object v0, p0, Ldnk;->b:Legk;

    iget-object v0, v0, Legk;->b:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Ldnk;->b:Legk;

    iget-object v0, v0, Legk;->b:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v0, v1

    :goto_1
    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Ldnk;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->A()Ldky;

    move-result-object v0

    const-string v1, "setCurrentScreen cannot be called with the same class and name"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    :cond_9
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ldnk;->w()Ldka;

    move-result-object v2

    invoke-virtual {v2}, Ldka;->B()I

    move-result v2

    if-le v0, v2, :cond_b

    :cond_a
    invoke-virtual {p0}, Ldnk;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->z()Ldky;

    move-result-object v0

    const-string v1, "Invalid screen name length in setCurrentScreen. Length"

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    if-eqz p3, :cond_d

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_c

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ldnk;->w()Ldka;

    move-result-object v2

    invoke-virtual {v2}, Ldka;->B()I

    move-result v2

    if-le v0, v2, :cond_d

    :cond_c
    invoke-virtual {p0}, Ldnk;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->z()Ldky;

    move-result-object v0

    const-string v1, "Invalid class name length in setCurrentScreen. Length"

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Ldnk;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->D()Ldky;

    move-result-object v2

    const-string v3, "Setting current screen to name, class"

    if-nez p2, :cond_e

    const-string v0, "null"

    :goto_2
    invoke-virtual {v2, v3, v0, p3}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ldnn;

    invoke-virtual {p0}, Ldnk;->q()Ldou;

    move-result-object v2

    invoke-virtual {v2}, Ldou;->x()J

    move-result-wide v2

    invoke-direct {v0, p2, p3, v2, v3}, Ldnn;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v2, p0, Ldnk;->e:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Ldnk;->a(Landroid/app/Activity;Ldnn;Z)V

    goto/16 :goto_0

    :cond_e
    move-object v0, p2

    goto :goto_2
.end method

.method public a(Legi;)V
    .locals 2
    .param p1    # Legi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Ldnk;->c()V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ldnk;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->z()Ldky;

    move-result-object v0

    const-string v1, "Attempting to register null OnScreenChangeCallback"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldnk;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldnk;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Legk;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldnk;->e()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldnk;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldnk;->i:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iput-object p1, p0, Ldnk;->i:Ljava/lang/String;

    iput-object p2, p0, Ldnk;->h:Legk;

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic b()V
    .locals 0

    invoke-super {p0}, Ldmu;->b()V

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-virtual {p0, p1}, Ldnk;->a(Landroid/app/Activity;)Ldnn;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ldnk;->a(Landroid/app/Activity;Ldnn;Z)V

    invoke-virtual {p0}, Ldnk;->f()Ldjs;

    move-result-object v0

    invoke-virtual {v0}, Ldjs;->a()V

    return-void
.end method

.method public b(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 6
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ldnk;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldnn;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "id"

    iget-wide v4, v0, Ldnn;->d:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "name"

    iget-object v3, v0, Ldnn;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "referrer_name"

    iget-object v0, v0, Ldnn;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.google.firebase.analytics.screen_service"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public b(Legi;)V
    .locals 1
    .param p1    # Legi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Ldnk;->c()V

    iget-object v0, p0, Ldnk;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic c()V
    .locals 0

    invoke-super {p0}, Ldmu;->c()V

    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-virtual {p0, p1}, Ldnk;->a(Landroid/app/Activity;)Ldnn;

    move-result-object v0

    iget-object v1, p0, Ldnk;->b:Legk;

    iput-object v1, p0, Ldnk;->c:Legk;

    invoke-virtual {p0}, Ldnk;->m()Lcvo;

    move-result-object v1

    invoke-interface {v1}, Lcvo;->b()J

    move-result-wide v2

    iput-wide v2, p0, Ldnk;->d:J

    const/4 v1, 0x0

    iput-object v1, p0, Ldnk;->b:Legk;

    invoke-virtual {p0}, Ldnk;->t()Ldlq;

    move-result-object v1

    new-instance v2, Ldnm;

    invoke-direct {v2, p0, v0}, Ldnm;-><init>(Ldnk;Ldnn;)V

    invoke-virtual {v1, v2}, Ldlq;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic d()V
    .locals 0

    invoke-super {p0}, Ldmu;->d()V

    return-void
.end method

.method public d(Landroid/app/Activity;)V
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Ldnk;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic e()V
    .locals 0

    invoke-super {p0}, Ldmu;->e()V

    return-void
.end method

.method public bridge synthetic f()Ldjs;
    .locals 1

    invoke-super {p0}, Ldmu;->f()Ldjs;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()Ldjy;
    .locals 1

    invoke-super {p0}, Ldmu;->g()Ldjy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Ldmw;
    .locals 1

    invoke-super {p0}, Ldmu;->h()Ldmw;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i()Ldks;
    .locals 1

    invoke-super {p0}, Ldmu;->i()Ldks;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j()Ldkh;
    .locals 1

    invoke-super {p0}, Ldmu;->j()Ldkh;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k()Ldno;
    .locals 1

    invoke-super {p0}, Ldmu;->k()Ldno;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l()Ldnk;
    .locals 1

    invoke-super {p0}, Ldmu;->l()Ldnk;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m()Lcvo;
    .locals 1

    invoke-super {p0}, Ldmu;->m()Lcvo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic n()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Ldmu;->n()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o()Ldkt;
    .locals 1

    invoke-super {p0}, Ldmu;->o()Ldkt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic p()Ldkb;
    .locals 1

    invoke-super {p0}, Ldmu;->p()Ldkb;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic q()Ldou;
    .locals 1

    invoke-super {p0}, Ldmu;->q()Ldou;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic r()Ldlp;
    .locals 1

    invoke-super {p0}, Ldmu;->r()Ldlp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic s()Ldok;
    .locals 1

    invoke-super {p0}, Ldmu;->s()Ldok;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic t()Ldlq;
    .locals 1

    invoke-super {p0}, Ldmu;->t()Ldlq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u()Ldkw;
    .locals 1

    invoke-super {p0}, Ldmu;->u()Ldkw;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic v()Ldlh;
    .locals 1

    invoke-super {p0}, Ldmu;->v()Ldlh;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic w()Ldka;
    .locals 1

    invoke-super {p0}, Ldmu;->w()Ldka;

    move-result-object v0

    return-object v0
.end method

.method public x()Ldnn;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldnk;->R()V

    invoke-virtual {p0}, Ldnk;->e()V

    iget-object v0, p0, Ldnk;->a:Ldnn;

    return-object v0
.end method

.method public y()Legk;
    .locals 2

    invoke-virtual {p0}, Ldnk;->c()V

    iget-object v1, p0, Ldnk;->b:Legk;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Legk;

    invoke-direct {v0, v1}, Legk;-><init>(Legk;)V

    goto :goto_0
.end method
