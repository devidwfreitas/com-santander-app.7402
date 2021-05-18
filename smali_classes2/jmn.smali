.class public Ljmn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljmm;


# static fields
.field private static final d:Ljava/lang/String; = "android.location.PROVIDERS_CHANGED"


# instance fields
.field private e:Ldvb;

.field private f:Lcom/google/android/gms/maps/model/LatLng;

.field private g:Landroid/location/Location;

.field private h:Landroid/location/LocationManager;

.field private i:Landroid/location/LocationListener;

.field private j:Ljlu;

.field private k:Ljme;

.field private l:Landroid/content/Context;

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lgrs;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljlq;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/santander/app/components/view/SantanderTextView;

.field private q:Lcom/santander/app/components/view/SantanderTextView;

.field private r:Lcom/santander/app/components/view/SantanderTextView;

.field private s:Lcom/santander/app/components/view/SantanderTextView;

.field private t:Ljlq;

.field private u:Z

.field private v:Landroid/app/Dialog;

.field private w:Ljava/lang/String;

.field private x:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljmn;->u:Z

    .line 82
    new-instance v0, Ljlw;

    invoke-direct {v0, p1, p0}, Ljlw;-><init>(Landroid/content/Context;Ljmm;)V

    iput-object v0, p0, Ljmn;->j:Ljlu;

    .line 83
    iput-object p1, p0, Ljmn;->l:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Ljmn;->w:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljmn;->m:Ljava/util/HashMap;

    move-object v0, p1

    .line 87
    check-cast v0, Lgrs;

    iput-object v0, p0, Ljmn;->n:Lgrs;

    .line 88
    check-cast p1, Ljme;

    iput-object p1, p0, Ljmn;->k:Ljme;

    .line 89
    iget-object v0, p0, Ljmn;->n:Lgrs;

    invoke-virtual {v0}, Lgrs;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f100ca2

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    .line 90
    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/SupportMapFragment;->a(Ldxk;)V

    .line 92
    iget-object v0, p0, Ljmn;->n:Lgrs;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lgrs;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Ljmn;->h:Landroid/location/LocationManager;

    .line 93
    invoke-virtual {p0}, Ljmn;->a()Ljmu;

    move-result-object v0

    iput-object v0, p0, Ljmn;->i:Landroid/location/LocationListener;

    .line 94
    invoke-direct {p0}, Ljmn;->n()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Ljmn;->x:Landroid/content/BroadcastReceiver;

    .line 95
    return-void
.end method

.method static synthetic a(Ljmn;Ljlq;)F
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1}, Ljmn;->b(Ljlq;)F

    move-result v0

    return v0
.end method

.method static synthetic a(Ljmn;)Lgrs;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Ljmn;->n:Lgrs;

    return-object v0
.end method

.method private b(Ljlq;)F
    .locals 4

    .prologue
    .line 414
    new-instance v0, Landroid/location/Location;

    const-string v1, "agencia"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p1}, Ljlq;->l()Ljll;

    move-result-object v1

    invoke-virtual {v1}, Ljll;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 417
    invoke-virtual {p1}, Ljlq;->l()Ljll;

    move-result-object v1

    invoke-virtual {v1}, Ljll;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 419
    iget-object v1, p0, Ljmn;->g:Landroid/location/Location;

    invoke-virtual {v1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    return v0
.end method

.method static synthetic b(Ljmn;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljmn;->k()V

    return-void
.end method

.method private i()V
    .locals 6

    .prologue
    .line 100
    iget-object v0, p0, Ljmn;->f:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 102
    iget-object v0, p0, Ljmn;->h:Landroid/location/LocationManager;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    .line 104
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v1, p0, Ljmn;->f:Lcom/google/android/gms/maps/model/LatLng;

    .line 109
    :cond_0
    iget-object v0, p0, Ljmn;->e:Ldvb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljmn;->f:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_1

    .line 111
    new-instance v0, Ledo;

    invoke-direct {v0}, Ledo;-><init>()V

    iget-object v1, p0, Ljmn;->f:Lcom/google/android/gms/maps/model/LatLng;

    .line 112
    invoke-virtual {v0, v1}, Ledo;->a(Lcom/google/android/gms/maps/model/LatLng;)Ledo;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    .line 113
    invoke-virtual {v0, v1}, Ledo;->a(F)Ledo;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ledo;->a()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 116
    iget-object v1, p0, Ljmn;->e:Ldvb;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ldvb;->d(Z)V

    .line 117
    iget-object v1, p0, Ljmn;->e:Ldvb;

    invoke-virtual {v1}, Ldvb;->m()Ldyk;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ldyk;->c(Z)V

    .line 118
    iget-object v1, p0, Ljmn;->e:Ldvb;

    invoke-static {v0}, Ldva;->a(Lcom/google/android/gms/maps/model/CameraPosition;)Lduz;

    move-result-object v0

    invoke-virtual {v1, v0}, Ldvb;->b(Lduz;)V

    .line 119
    iget-object v0, p0, Ljmn;->n:Lgrs;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljmn;->n:Lgrs;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    :cond_1
    :goto_0
    return-void

    .line 122
    :cond_2
    iget-object v0, p0, Ljmn;->h:Landroid/location/LocationManager;

    iget-object v1, p0, Ljmn;->i:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 123
    iget-object v0, p0, Ljmn;->f:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    iget-object v2, p0, Ljmn;->f:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-virtual {p0, v0, v1, v2, v3}, Ljmn;->a(DD)V

    .line 124
    iget-object v0, p0, Ljmn;->e:Ldvb;

    new-instance v1, Ljmo;

    invoke-direct {v1, p0}, Ljmo;-><init>(Ljmn;)V

    invoke-virtual {v0, v1}, Ldvb;->a(Ldwo;)V

    .line 132
    iget-object v0, p0, Ljmn;->n:Lgrs;

    const v1, 0x7f10037a

    invoke-virtual {v0, v1}, Lgrs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private j()V
    .locals 6

    .prologue
    .line 137
    iget-object v0, p0, Ljmn;->n:Lgrs;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljmn;->n:Lgrs;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Ljmn;->h:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Ljmn;->i:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0
.end method

.method private k()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Ljmn;->v:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Ljmn;->v:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Ljmn;->v:Landroid/app/Dialog;

    .line 378
    :cond_0
    return-void
.end method

.method private l()F
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Ljmn;->t:Ljlq;

    invoke-direct {p0, v0}, Ljmn;->b(Ljlq;)F

    move-result v0

    return v0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Ljmn;->o:Ljava/util/List;

    if-nez v0, :cond_0

    .line 434
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Ljmn;->o:Ljava/util/List;

    new-instance v1, Ljmr;

    invoke-direct {v1, p0}, Ljmr;-><init>(Ljmn;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private n()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 437
    new-instance v0, Ljms;

    invoke-direct {v0, p0}, Ljms;-><init>(Ljmn;)V

    return-object v0
.end method

.method private o()Z
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Ljmn;->h:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljmn;->h:Landroid/location/LocationManager;

    const-string v1, "gps"

    .line 482
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 481
    :goto_0
    return v0

    .line 482
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljmu;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Ljmn;->j:Ljlu;

    invoke-static {v0}, Ljmu;->a(Ljlu;)Ljmu;

    move-result-object v0

    return-object v0
.end method

.method public a(DD)V
    .locals 3

    .prologue
    .line 158
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 160
    iget-object v2, p0, Ljmn;->j:Ljlu;

    invoke-interface {v2, v0, v1}, Ljlu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public a(I)V
    .locals 8

    .prologue
    const v1, 0x7f10037b

    const v7, 0x7f10037e

    const v6, 0x7f10037a

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 383
    packed-switch p1, :pswitch_data_0

    .line 406
    :goto_0
    return-void

    .line 386
    :pswitch_0
    iget-boolean v0, p0, Ljmn;->u:Z

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Ljmn;->n:Lgrs;

    invoke-virtual {v0, v6}, Lgrs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Ljmn;->n:Lgrs;

    invoke-virtual {v0, v1}, Lgrs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Ljmn;->n:Lgrs;

    invoke-virtual {v0, v7}, Lgrs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Ljmn;->n:Lgrs;

    invoke-virtual {v0, v6}, Lgrs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Ljmn;->n:Lgrs;

    const v1, 0x7f10037d

    invoke-virtual {v0, v1}, Lgrs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 393
    :cond_0
    iput-boolean v4, p0, Ljmn;->u:Z

    .line 394
    iget-object v0, p0, Ljmn;->n:Lgrs;

    invoke-virtual {v0, v6}, Lgrs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Ljmn;->n:Lgrs;

    invoke-virtual {v0, v1}, Lgrs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Ljmn;->n:Lgrs;

    invoke-virtual {v0, v7}, Lgrs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    .line 397
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    .line 398
    const v1, 0x4479c000    # 999.0f

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setTranslationY(F)V

    .line 399
    invoke-virtual {v0}, Landroid/support/v7/widget/CardView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 400
    iget-object v0, p0, Ljmn;->n:Lgrs;

    invoke-virtual {v0, v7}, Lgrs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Ljmn;->n:Lgrs;

    invoke-virtual {v0, v6}, Lgrs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Ljmn;->n:Lgrs;

    const v1, 0x7f10037d

    invoke-virtual {v0, v1}, Lgrs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 383
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/location/Location;)V
    .locals 6

    .prologue
    .line 145
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Ljmn;->f:Lcom/google/android/gms/maps/model/LatLng;

    .line 146
    iput-object p1, p0, Ljmn;->g:Landroid/location/Location;

    .line 147
    iget-object v0, p0, Ljmn;->k:Ljme;

    invoke-interface {v0, p1}, Ljme;->a(Landroid/location/Location;)V

    .line 148
    invoke-direct {p0}, Ljmn;->i()V

    .line 149
    return-void
.end method

.method public a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Ljmn;->f:Lcom/google/android/gms/maps/model/LatLng;

    .line 256
    invoke-direct {p0}, Ljmn;->i()V

    .line 257
    return-void
.end method

.method public a(Ldvb;)V
    .locals 1

    .prologue
    .line 279
    iput-object p1, p0, Ljmn;->e:Ldvb;

    .line 280
    iget-object v0, p0, Ljmn;->e:Ldvb;

    invoke-virtual {v0, p0}, Ldvb;->a(Ldwh;)V

    .line 281
    iget-object v0, p0, Ljmn;->e:Ldvb;

    invoke-virtual {v0, p0}, Ldvb;->a(Ldwr;)V

    .line 282
    invoke-direct {p0}, Ljmn;->i()V

    .line 283
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 344
    iget-object v0, p0, Ljmn;->n:Lgrs;

    new-instance v1, Ljmp;

    invoke-direct {v1, p0, p1, p2}, Ljmp;-><init>(Ljmn;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljmq;

    invoke-direct {v2, p0}, Ljmq;-><init>(Ljmn;)V

    .line 365
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v3

    invoke-virtual {v3}, Lmiq;->s()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljmn;->n:Lgrs;

    const v4, 0x7f09013b

    .line 366
    invoke-virtual {v3, v4}, Lgrs;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 367
    :goto_0
    const-string v4, "Continuar"

    const-string v5, "Cancelar"

    .line 344
    invoke-static/range {v0 .. v5}, Lmxn;->b(Landroid/app/Activity;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Ljmn;->v:Landroid/app/Dialog;

    .line 370
    iget-object v0, p0, Ljmn;->v:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 371
    return-void

    .line 366
    :cond_0
    iget-object v3, p0, Ljmn;->n:Lgrs;

    const v4, 0x7f09013a

    .line 367
    invoke-virtual {v3, v4}, Lgrs;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public a(Ljlp;)V
    .locals 10

    .prologue
    const/4 v5, 0x1

    .line 166
    new-instance v1, Ledu;

    invoke-direct {v1}, Ledu;-><init>()V

    .line 167
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljlp;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljlp;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 169
    iget-object v0, p0, Ljmn;->e:Ldvb;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Ljmn;->e:Ldvb;

    invoke-virtual {v0}, Ldvb;->e()V

    .line 172
    iget-object v0, p0, Ljmn;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 174
    invoke-virtual {p1}, Ljlp;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljmn;->o:Ljava/util/List;

    .line 175
    invoke-direct {p0}, Ljmn;->m()V

    .line 177
    iget-object v0, p0, Ljmn;->k:Ljme;

    iget-object v2, p0, Ljmn;->o:Ljava/util/List;

    invoke-interface {v0, v2}, Ljme;->a(Ljava/util/List;)V

    .line 179
    iget-object v0, p0, Ljmn;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0205d8

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 180
    const/high16 v2, 0x41e00000    # 28.0f

    iget-object v3, p0, Ljmn;->l:Landroid/content/Context;

    .line 181
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    const/high16 v3, 0x42200000    # 40.0f

    iget-object v4, p0, Ljmn;->l:Landroid/content/Context;

    .line 182
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 180
    invoke-static {v0, v2, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 185
    iget-object v0, p0, Ljmn;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljlq;

    .line 186
    invoke-virtual {v0}, Ljlq;->l()Ljll;

    move-result-object v4

    invoke-virtual {v4}, Ljll;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 187
    invoke-virtual {v0}, Ljlq;->l()Ljll;

    move-result-object v6

    invoke-virtual {v6}, Ljll;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 188
    new-instance v8, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v8, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v8}, Ledu;->a(Lcom/google/android/gms/maps/model/LatLng;)Ledu;

    .line 189
    new-instance v8, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v8}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v9, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v9, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v8, v9}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v4

    .line 190
    invoke-static {v2}, Ledn;->a(Landroid/graphics/Bitmap;)Ledm;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Ledm;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v4

    .line 192
    iget-object v5, p0, Ljmn;->e:Ldvb;

    invoke-virtual {v5, v4}, Ldvb;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Ledv;

    move-result-object v4

    .line 193
    iget-object v5, p0, Ljmn;->m:Ljava/util/HashMap;

    invoke-virtual {v4}, Ledv;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljlq;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Ljmn;->e:Ldvb;

    invoke-virtual {v1}, Ledu;->a()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Ldva;->a(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lduz;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldvb;->a(Lduz;)V

    .line 202
    :cond_1
    return-void
.end method

.method public a(Ljlq;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/high16 v5, 0x447a0000    # 1000.0f

    const/4 v4, 0x0

    .line 217
    iget-object v0, p0, Ljmn;->n:Lgrs;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 218
    iput-object p1, p0, Ljmn;->t:Ljlq;

    .line 220
    iget-object v0, p0, Ljmn;->n:Lgrs;

    const v1, 0x7f10037a

    invoke-virtual {v0, v1}, Lgrs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Ljmn;->n:Lgrs;

    const v1, 0x7f10037e

    invoke-virtual {v0, v1}, Lgrs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Ljmn;->n:Lgrs;

    const v1, 0x7f100381

    invoke-virtual {v0, v1}, Lgrs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Ljmn;->p:Lcom/santander/app/components/view/SantanderTextView;

    .line 224
    invoke-virtual {p1}, Ljlq;->c()Ljava/lang/String;

    move-result-object v0

    .line 225
    iget-object v1, p0, Ljmn;->p:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v1, v0}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Ljmn;->n:Lgrs;

    const v1, 0x7f100382

    invoke-virtual {v0, v1}, Lgrs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Ljmn;->q:Lcom/santander/app/components/view/SantanderTextView;

    .line 228
    iget-object v0, p0, Ljmn;->q:Lcom/santander/app/components/view/SantanderTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljlq;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljlq;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Ljmn;->n:Lgrs;

    const v1, 0x7f100384

    invoke-virtual {v0, v1}, Lgrs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Ljmn;->r:Lcom/santander/app/components/view/SantanderTextView;

    .line 231
    iget-object v0, p0, Ljmn;->r:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p1}, Ljlq;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Ljmn;->r:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, p0}, Lcom/santander/app/components/view/SantanderTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Ljmn;->n:Lgrs;

    const v1, 0x7f100383

    invoke-virtual {v0, v1}, Lgrs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Ljmn;->s:Lcom/santander/app/components/view/SantanderTextView;

    .line 237
    invoke-direct {p0}, Ljmn;->l()F

    move-result v0

    .line 238
    cmpl-float v1, v0, v5

    if-lez v1, :cond_1

    .line 239
    iget-object v1, p0, Ljmn;->s:Lcom/santander/app/components/view/SantanderTextView;

    const-string v2, "%.2f km"

    new-array v3, v3, [Ljava/lang/Object;

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v1, p0, Ljmn;->s:Lcom/santander/app/components/view/SantanderTextView;

    const-string v2, "%.2f m"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Ledv;)Z
    .locals 5

    .prologue
    .line 261
    const-string v0, "Login_Acao"

    const-string v1, "SelecionarAgencia"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ledv;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljmn;->m:Ljava/util/HashMap;

    invoke-virtual {p1}, Ledv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljmn;->u:Z

    .line 264
    iget-object v0, p0, Ljmn;->m:Ljava/util/HashMap;

    invoke-virtual {p1}, Ledv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 266
    iget-object v0, p0, Ljmn;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljlq;

    .line 267
    invoke-virtual {v0}, Ljlq;->a()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    invoke-virtual {p0, v0}, Ljmn;->a(Ljlq;)V

    .line 274
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Ljmn;->n:Lgrs;

    iget-object v1, p0, Ljmn;->n:Lgrs;

    const v2, 0x7f09072e

    invoke-virtual {v1, v2}, Lgrs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->d(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    .line 207
    invoke-direct {p0}, Ljmn;->j()V

    .line 208
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 334
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 335
    iget-object v1, p0, Ljmn;->n:Lgrs;

    const-string v2, "android.permission.CALL_PHONE"

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v1, p0, Ljmn;->n:Lgrs;

    invoke-virtual {v1, v0}, Lgrs;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Ljmn;->n:Lgrs;

    iget-object v1, p0, Ljmn;->n:Lgrs;

    const v2, 0x7f09043f

    invoke-virtual {v1, v2}, Lgrs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->d(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    .line 213
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 472
    invoke-direct {p0}, Ljmn;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Ljmn;->k:Ljme;

    invoke-interface {v0}, Ljme;->d()V

    .line 474
    invoke-direct {p0}, Ljmn;->j()V

    .line 478
    :goto_0
    return-void

    .line 476
    :cond_0
    iget-object v0, p0, Ljmn;->k:Ljme;

    invoke-interface {v0}, Ljme;->c()V

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 460
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    iget-object v1, p0, Ljmn;->l:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 462
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Ljmn;->k:Ljme;

    invoke-interface {v0}, Ljme;->d()V

    .line 467
    iget-object v0, p0, Ljmn;->k:Ljme;

    invoke-interface {v0}, Ljme;->finish()V

    .line 468
    return-void
.end method

.method public g()V
    .locals 4

    .prologue
    .line 449
    iget-object v0, p0, Ljmn;->l:Landroid/content/Context;

    iget-object v1, p0, Ljmn;->x:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 451
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Ljmn;->l:Landroid/content/Context;

    iget-object v1, p0, Ljmn;->x:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 456
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const v2, 0x7f10037b

    const/16 v1, 0x8

    .line 288
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 290
    :sswitch_0
    iget-object v0, p0, Ljmn;->n:Lgrs;

    invoke-virtual {v0, v2}, Lgrs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    invoke-direct {p0}, Ljmn;->j()V

    goto :goto_0

    .line 295
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljmn;->n:Lgrs;

    const-class v2, Lcom/santander/app/localizadoragencias/presentation/BuscaLocalizadorAgenciaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 296
    iget-object v1, p0, Ljmn;->w:Ljava/lang/String;

    const-string v2, "menu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    const-string v1, "from"

    const-string v2, "menu"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    :goto_1
    iget-object v1, p0, Ljmn;->n:Lgrs;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lgrs;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 299
    :cond_1
    const-string v1, "from"

    const-string v2, "home"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 306
    :sswitch_2
    iget-object v0, p0, Ljmn;->n:Lgrs;

    invoke-virtual {v0, v2}, Lgrs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Ljmn;->e:Ldvb;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Ljmn;->e:Ldvb;

    invoke-virtual {v0}, Ldvb;->a()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->a:Lcom/google/android/gms/maps/model/LatLng;

    iput-object v0, p0, Ljmn;->f:Lcom/google/android/gms/maps/model/LatLng;

    .line 310
    iget-object v0, p0, Ljmn;->f:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    iget-object v2, p0, Ljmn;->f:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-virtual {p0, v0, v1, v2, v3}, Ljmn;->a(DD)V

    goto :goto_0

    .line 315
    :sswitch_3
    iget-object v0, p0, Ljmn;->t:Ljlq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljmn;->n:Lgrs;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Ljmn;->t:Ljlq;

    invoke-virtual {v0}, Ljlq;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljmn;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 322
    :sswitch_4
    iget-object v0, p0, Ljmn;->t:Ljlq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljmn;->n:Lgrs;

    if-eqz v0, :cond_0

    .line 323
    const-string v0, "Outros_Agencias_Acao"

    const-string v1, "TracarRota"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Ljmn;->t:Ljlq;

    invoke-virtual {v0}, Ljlq;->l()Ljll;

    move-result-object v0

    invoke-virtual {v0}, Ljll;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljmn;->t:Ljlq;

    invoke-virtual {v1}, Ljlq;->l()Ljll;

    move-result-object v1

    invoke-virtual {v1}, Ljll;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljmn;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 288
    :sswitch_data_0
    .sparse-switch
        0x7f100379 -> :sswitch_1
        0x7f10037a -> :sswitch_0
        0x7f10037c -> :sswitch_2
        0x7f100384 -> :sswitch_3
        0x7f100385 -> :sswitch_4
    .end sparse-switch
.end method
