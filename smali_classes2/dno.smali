.class public Ldno;
.super Ldmu;


# instance fields
.field private final a:Ldob;

.field private b:Ldkp;

.field private c:Ljava/lang/Boolean;

.field private final d:Ldkf;

.field private final e:Ldop;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ldkf;


# direct methods
.method protected constructor <init>(Ldlv;)V
    .locals 2

    invoke-direct {p0, p1}, Ldmu;-><init>(Ldlv;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldno;->f:Ljava/util/List;

    new-instance v0, Ldop;

    invoke-virtual {p1}, Ldlv;->t()Lcvo;

    move-result-object v1

    invoke-direct {v0, v1}, Ldop;-><init>(Lcvo;)V

    iput-object v0, p0, Ldno;->e:Ldop;

    new-instance v0, Ldob;

    invoke-direct {v0, p0}, Ldob;-><init>(Ldno;)V

    iput-object v0, p0, Ldno;->a:Ldob;

    new-instance v0, Ldnp;

    invoke-direct {v0, p0, p1}, Ldnp;-><init>(Ldno;Ldlv;)V

    iput-object v0, p0, Ldno;->d:Ldkf;

    new-instance v0, Ldnw;

    invoke-direct {v0, p0, p1}, Ldnw;-><init>(Ldno;Ldlv;)V

    iput-object v0, p0, Ldno;->g:Ldkf;

    return-void
.end method

.method private D()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldno;->e()V

    iget-object v0, p0, Ldno;->e:Ldop;

    invoke-virtual {v0}, Ldop;->a()V

    iget-object v0, p0, Ldno;->d:Ldkf;

    invoke-virtual {p0}, Ldno;->w()Ldka;

    move-result-object v1

    invoke-virtual {v1}, Ldka;->R()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldkf;->a(J)V

    return-void
.end method

.method private E()Z
    .locals 4

    invoke-virtual {p0}, Ldno;->w()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->V()Z

    invoke-virtual {p0}, Ldno;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Ldno;->n()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private F()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldno;->e()V

    invoke-virtual {p0}, Ldno;->x()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ldno;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v1, "Inactivity, disconnecting from the service"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Ldno;->C()V

    goto :goto_0
.end method

.method private G()V
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldno;->e()V

    invoke-virtual {p0}, Ldno;->A()V

    return-void
.end method

.method private H()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldno;->e()V

    invoke-virtual {p0}, Ldno;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v1, "Processing queued up service tasks"

    iget-object v2, p0, Ldno;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Ldno;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0}, Ldno;->t()Ldlq;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldlq;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldno;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Ldno;->g:Ldkf;

    invoke-virtual {v0}, Ldkf;->c()V

    return-void
.end method

.method static synthetic a(Ldno;)Ldob;
    .locals 1

    iget-object v0, p0, Ldno;->a:Ldob;

    return-object v0
.end method

.method private a(Landroid/content/ComponentName;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldno;->e()V

    iget-object v0, p0, Ldno;->b:Ldkp;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Ldno;->b:Ldkp;

    invoke-virtual {p0}, Ldno;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v1, "Disconnected from device MeasurementService"

    invoke-virtual {v0, v1, p1}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ldno;->G()V

    :cond_0
    return-void
.end method

.method static synthetic a(Ldno;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Ldno;->a(Landroid/content/ComponentName;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldno;->e()V

    invoke-virtual {p0}, Ldno;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldno;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Ldno;->w()Ldka;

    move-result-object v2

    invoke-virtual {v2}, Ldka;->ad()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ldno;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v1, "Discarding data. Max runnable queue size reached"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ldno;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldno;->g:Ldkf;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Ldkf;->a(J)V

    invoke-virtual {p0}, Ldno;->A()V

    goto :goto_0
.end method

.method static synthetic b(Ldno;)V
    .locals 0

    invoke-direct {p0}, Ldno;->F()V

    return-void
.end method

.method static synthetic c(Ldno;)Ldkp;
    .locals 1

    iget-object v0, p0, Ldno;->b:Ldkp;

    return-object v0
.end method

.method static synthetic d(Ldno;)V
    .locals 0

    invoke-direct {p0}, Ldno;->D()V

    return-void
.end method


# virtual methods
.method A()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldno;->e()V

    invoke-virtual {p0}, Ldno;->R()V

    invoke-virtual {p0}, Ldno;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldno;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ldno;->v()Ldlh;

    move-result-object v0

    invoke-virtual {v0}, Ldlh;->C()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ldno;->c:Ljava/lang/Boolean;

    iget-object v0, p0, Ldno;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ldno;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v1, "State of service unknown"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Ldno;->B()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ldno;->c:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ldno;->v()Ldlh;

    move-result-object v0

    iget-object v1, p0, Ldno;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Ldlh;->a(Z)V

    :cond_1
    iget-object v0, p0, Ldno;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ldno;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v1, "Using measurement service"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ldno;->a:Ldob;

    invoke-virtual {v0}, Ldob;->a()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Ldno;->E()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ldno;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v1, "Using local app measurement service"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.measurement.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ldno;->n()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Ldno;->w()Ldka;

    move-result-object v3

    invoke-virtual {v3}, Ldka;->V()Z

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Ldno;->a:Ldob;

    invoke-virtual {v1, v0}, Ldob;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Ldno;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v1, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected B()Z
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ldno;->e()V

    invoke-virtual {p0}, Ldno;->R()V

    invoke-virtual {p0}, Ldno;->w()Ldka;

    move-result-object v2

    invoke-virtual {v2}, Ldka;->V()Z

    invoke-virtual {p0}, Ldno;->u()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->D()Ldky;

    move-result-object v2

    const-string v3, "Checking service availability"

    invoke-virtual {v2, v3}, Ldky;->a(Ljava/lang/String;)V

    invoke-static {}, Lcwn;->b()Lcwn;

    move-result-object v2

    invoke-virtual {p0}, Ldno;->n()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcwn;->a(Landroid/content/Context;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Ldno;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->D()Ldky;

    move-result-object v1

    const-string v2, "Service available"

    invoke-virtual {v1, v2}, Ldky;->a(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Ldno;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v2, "Service missing"

    invoke-virtual {v0, v2}, Ldky;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Ldno;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->z()Ldky;

    move-result-object v1

    const-string v2, "Service updating"

    invoke-virtual {v1, v2}, Ldky;->a(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Ldno;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->C()Ldky;

    move-result-object v1

    const-string v2, "Service container out of date"

    invoke-virtual {v1, v2}, Ldky;->a(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Ldno;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->z()Ldky;

    move-result-object v0

    const-string v2, "Service disabled"

    invoke-virtual {v0, v2}, Ldky;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Ldno;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->z()Ldky;

    move-result-object v0

    const-string v2, "Service invalid"

    invoke-virtual {v0, v2}, Ldky;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x9 -> :sswitch_5
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public C()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldno;->e()V

    invoke-virtual {p0}, Ldno;->R()V

    :try_start_0
    invoke-static {}, Lcvf;->a()Lcvf;

    move-result-object v0

    invoke-virtual {p0}, Ldno;->n()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ldno;->a:Ldob;

    invoke-virtual {v0, v1, v2}, Lcvf;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Ldno;->b:Ldkp;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/zzatg;)V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v2, 0x1

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ldno;->e()V

    invoke-virtual {p0}, Ldno;->R()V

    invoke-virtual {p0}, Ldno;->w()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->V()Z

    invoke-virtual {p0}, Ldno;->o()Ldkt;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldkt;->a(Lcom/google/android/gms/internal/zzatg;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v3, v2

    :goto_0
    new-instance v4, Lcom/google/android/gms/internal/zzatg;

    invoke-direct {v4, p1}, Lcom/google/android/gms/internal/zzatg;-><init>(Lcom/google/android/gms/internal/zzatg;)V

    new-instance v0, Ldnz;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ldnz;-><init>(Ldno;ZZLcom/google/android/gms/internal/zzatg;Lcom/google/android/gms/internal/zzatg;)V

    invoke-direct {p0, v0}, Ldno;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/google/android/gms/internal/zzatq;Ljava/lang/String;)V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v2, 0x1

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ldno;->e()V

    invoke-virtual {p0}, Ldno;->R()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Ldno;->w()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->V()Z

    invoke-virtual {p0}, Ldno;->o()Ldkt;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldkt;->a(Lcom/google/android/gms/internal/zzatq;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v3, v2

    :goto_0
    new-instance v0, Ldny;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ldny;-><init>(Ldno;ZZLcom/google/android/gms/internal/zzatq;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ldno;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/google/android/gms/internal/zzauq;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldno;->e()V

    invoke-virtual {p0}, Ldno;->R()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Ldno;->w()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->V()Z

    invoke-virtual {p0}, Ldno;->o()Ldkt;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldkt;->a(Lcom/google/android/gms/internal/zzauq;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ldnr;

    invoke-direct {v1, p0, v0, p1}, Ldnr;-><init>(Ldno;ZLcom/google/android/gms/internal/zzauq;)V

    invoke-direct {p0, v1}, Ldno;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ldkp;)V
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldno;->e()V

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Ldno;->b:Ldkp;

    invoke-direct {p0}, Ldno;->D()V

    invoke-direct {p0}, Ldno;->H()V

    return-void
.end method

.method a(Ldkp;Lcom/google/android/gms/common/internal/safeparcel/zza;)V
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v2, 0x0

    const/16 v4, 0x64

    invoke-virtual {p0}, Ldno;->e()V

    invoke-virtual {p0}, Ldno;->c()V

    invoke-virtual {p0}, Ldno;->R()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Ldno;->w()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->V()Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ldno;->w()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->ah()I

    move v3, v2

    move v1, v4

    :goto_0
    const/16 v0, 0x3e9

    if-ge v3, v0, :cond_5

    if-ne v1, v4, :cond_5

    invoke-virtual {p0}, Ldno;->o()Ldkt;

    move-result-object v0

    invoke-virtual {v0, v4}, Ldkt;->a(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_1
    if-eqz p2, :cond_0

    if-ge v1, v4, :cond_0

    invoke-interface {v5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/safeparcel/zza;

    instance-of v7, v0, Lcom/google/android/gms/internal/zzatq;

    if-eqz v7, :cond_1

    :try_start_0
    check-cast v0, Lcom/google/android/gms/internal/zzatq;

    invoke-virtual {p0}, Ldno;->i()Ldks;

    move-result-object v7

    invoke-virtual {p0}, Ldno;->u()Ldkw;

    move-result-object v8

    invoke-virtual {v8}, Ldkw;->E()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ldks;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatd;

    move-result-object v7

    invoke-interface {p1, v0, v7}, Ldkp;->a(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ldno;->u()Ldkw;

    move-result-object v7

    invoke-virtual {v7}, Ldkw;->x()Ldky;

    move-result-object v7

    const-string v8, "Failed to send event to the service"

    invoke-virtual {v7, v8, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    instance-of v7, v0, Lcom/google/android/gms/internal/zzauq;

    if-eqz v7, :cond_2

    :try_start_1
    check-cast v0, Lcom/google/android/gms/internal/zzauq;

    invoke-virtual {p0}, Ldno;->i()Ldks;

    move-result-object v7

    invoke-virtual {p0}, Ldno;->u()Ldkw;

    move-result-object v8

    invoke-virtual {v8}, Ldkw;->E()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ldks;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatd;

    move-result-object v7

    invoke-interface {p1, v0, v7}, Ldkp;->a(Lcom/google/android/gms/internal/zzauq;Lcom/google/android/gms/internal/zzatd;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Ldno;->u()Ldkw;

    move-result-object v7

    invoke-virtual {v7}, Ldkw;->x()Ldky;

    move-result-object v7

    const-string v8, "Failed to send attribute to the service"

    invoke-virtual {v7, v8, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    instance-of v7, v0, Lcom/google/android/gms/internal/zzatg;

    if-eqz v7, :cond_3

    :try_start_2
    check-cast v0, Lcom/google/android/gms/internal/zzatg;

    invoke-virtual {p0}, Ldno;->i()Ldks;

    move-result-object v7

    invoke-virtual {p0}, Ldno;->u()Ldkw;

    move-result-object v8

    invoke-virtual {v8}, Ldkw;->E()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ldks;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatd;

    move-result-object v7

    invoke-interface {p1, v0, v7}, Ldkp;->a(Lcom/google/android/gms/internal/zzatg;Lcom/google/android/gms/internal/zzatd;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {p0}, Ldno;->u()Ldkw;

    move-result-object v7

    invoke-virtual {v7}, Ldkw;->x()Ldky;

    move-result-object v7

    const-string v8, "Failed to send conditional property to the service"

    invoke-virtual {v7, v8, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p0}, Ldno;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v7, "Discarding data. Unrecognized parcel type."

    invoke-virtual {v0, v7}, Ldky;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_5
    return-void

    :cond_6
    move v1, v2

    goto/16 :goto_1
.end method

.method protected a(Legk;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldno;->e()V

    invoke-virtual {p0}, Ldno;->R()V

    new-instance v0, Ldnv;

    invoke-direct {v0, p0, p1}, Ldnv;-><init>(Ldno;Legk;)V

    invoke-direct {p0, v0}, Ldno;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ldno;->e()V

    invoke-virtual {p0}, Ldno;->R()V

    new-instance v0, Ldnt;

    invoke-direct {v0, p0, p1}, Ldnt;-><init>(Ldno;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-direct {p0, v0}, Ldno;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzatg;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Ldno;->e()V

    invoke-virtual {p0}, Ldno;->R()V

    new-instance v0, Ldoa;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ldoa;-><init>(Ldno;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ldno;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzauq;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Ldno;->e()V

    invoke-virtual {p0}, Ldno;->R()V

    new-instance v0, Ldnq;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Ldnq;-><init>(Ldno;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Ldno;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzauq;",
            ">;>;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Ldno;->e()V

    invoke-virtual {p0}, Ldno;->R()V

    new-instance v0, Ldns;

    invoke-direct {v0, p0, p1, p2}, Ldns;-><init>(Ldno;Ljava/util/concurrent/atomic/AtomicReference;Z)V

    invoke-direct {p0, v0}, Ldno;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic b()V
    .locals 0

    invoke-super {p0}, Ldmu;->b()V

    return-void
.end method

.method public bridge synthetic c()V
    .locals 0

    invoke-super {p0}, Ldmu;->c()V

    return-void
.end method

.method public bridge synthetic d()V
    .locals 0

    invoke-super {p0}, Ldmu;->d()V

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

.method public x()Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldno;->e()V

    invoke-virtual {p0}, Ldno;->R()V

    iget-object v0, p0, Ldno;->b:Ldkp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected y()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldno;->e()V

    invoke-virtual {p0}, Ldno;->R()V

    new-instance v0, Ldnx;

    invoke-direct {v0, p0}, Ldnx;-><init>(Ldno;)V

    invoke-direct {p0, v0}, Ldno;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected z()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldno;->e()V

    invoke-virtual {p0}, Ldno;->R()V

    new-instance v0, Ldnu;

    invoke-direct {v0, p0}, Ldnu;-><init>(Ldno;)V

    invoke-direct {p0, v0}, Ldno;->a(Ljava/lang/Runnable;)V

    return-void
.end method
