.class public Ldks;
.super Ldmu;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:Ljava/lang/String;


# direct methods
.method constructor <init>(Ldlv;)V
    .locals 0

    invoke-direct {p0, p1}, Ldmu;-><init>(Ldlv;)V

    return-void
.end method


# virtual methods
.method A()I
    .locals 1

    invoke-virtual {p0}, Ldks;->R()V

    iget v0, p0, Ldks;->c:I

    return v0
.end method

.method B()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ldks;->R()V

    iget-object v0, p0, Ldks;->d:Ljava/lang/String;

    return-object v0
.end method

.method C()J
    .locals 2

    invoke-virtual {p0}, Ldks;->w()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->U()J

    move-result-wide v0

    return-wide v0
.end method

.method D()J
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldks;->R()V

    invoke-virtual {p0}, Ldks;->e()V

    iget-wide v0, p0, Ldks;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Ldks;->n:Ldlv;

    invoke-virtual {v0}, Ldlv;->o()Ldou;

    move-result-object v0

    invoke-virtual {p0}, Ldks;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ldks;->n()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldou;->b(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Ldks;->f:J

    :cond_0
    iget-wide v0, p0, Ldks;->f:J

    return-wide v0
.end method

.method E()J
    .locals 2

    invoke-virtual {p0}, Ldks;->R()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method a(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatd;
    .locals 20
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual/range {p0 .. p0}, Ldks;->e()V

    new-instance v3, Lcom/google/android/gms/internal/zzatd;

    invoke-virtual/range {p0 .. p0}, Ldks;->x()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ldks;->y()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Ldks;->z()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Ldks;->A()I

    move-result v2

    int-to-long v7, v2

    invoke-virtual/range {p0 .. p0}, Ldks;->B()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Ldks;->C()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Ldks;->D()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Ldks;->n:Ldlv;

    invoke-virtual {v2}, Ldlv;->G()Z

    move-result v15

    invoke-virtual/range {p0 .. p0}, Ldks;->v()Ldlh;

    move-result-object v2

    iget-boolean v2, v2, Ldlh;->m:Z

    if-nez v2, :cond_0

    const/16 v16, 0x1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Ldks;->v()Ldlh;

    move-result-object v2

    invoke-virtual {v2}, Ldlh;->y()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Ldks;->E()J

    move-result-wide v18

    move-object/from16 v14, p1

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/internal/zzatd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;J)V

    return-object v3

    :cond_0
    const/16 v16, 0x0

    goto :goto_0
.end method

.method protected a()V
    .locals 14

    const-wide/16 v12, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "unknown"

    const-string v2, "Unknown"

    const/high16 v1, -0x80000000

    const-string v0, "Unknown"

    invoke-virtual {p0}, Ldks;->n()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ldks;->n()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    if-nez v7, :cond_4

    invoke-virtual {p0}, Ldks;->u()Ldkw;

    move-result-object v7

    invoke-virtual {v7}, Ldkw;->x()Ldky;

    move-result-object v7

    const-string v8, "PackageManager is null, app identity information might be inaccurate. appId"

    invoke-static {v6}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iput-object v6, p0, Ldks;->a:Ljava/lang/String;

    iput-object v3, p0, Ldks;->d:Ljava/lang/String;

    iput-object v2, p0, Ldks;->b:Ljava/lang/String;

    iput v1, p0, Ldks;->c:I

    iput-object v0, p0, Ldks;->e:Ljava/lang/String;

    iput-wide v12, p0, Ldks;->f:J

    invoke-virtual {p0}, Ldks;->w()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->V()Z

    invoke-virtual {p0}, Ldks;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lddc;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v5

    :goto_1
    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Ldks;->a(Lcom/google/android/gms/common/api/Status;)V

    :cond_1
    if-eqz v0, :cond_c

    invoke-virtual {p0}, Ldks;->w()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->Y()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Ldks;->w()Ldka;

    move-result-object v1

    invoke-virtual {v1}, Ldka;->X()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Ldks;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->B()Ldky;

    move-result-object v0

    const-string v1, "Collection disabled with firebase_analytics_collection_deactivated=1"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    move v0, v4

    :goto_2
    const-string v1, ""

    iput-object v1, p0, Ldks;->h:Ljava/lang/String;

    iput-wide v12, p0, Ldks;->g:J

    invoke-virtual {p0}, Ldks;->w()Ldka;

    move-result-object v1

    invoke-virtual {v1}, Ldka;->V()Z

    :try_start_0
    invoke-static {}, Lddc;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, ""

    :cond_2
    iput-object v1, p0, Ldks;->h:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ldks;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v1, "App package, google app id"

    iget-object v2, p0, Ldks;->a:Ljava/lang/String;

    iget-object v3, p0, Ldks;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_3
    :goto_3
    return-void

    :cond_4
    :try_start_1
    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    :goto_4
    if-nez v3, :cond_7

    const-string v3, "manual_install"

    :cond_5
    :goto_5
    :try_start_2
    invoke-virtual {p0}, Ldks;->n()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    iget-object v2, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v1, v8, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v8

    invoke-virtual {p0}, Ldks;->u()Ldkw;

    move-result-object v8

    invoke-virtual {v8}, Ldkw;->x()Ldky;

    move-result-object v8

    const-string v9, "Error retrieving app installer package name. appId"

    invoke-static {v6}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    const-string v8, "com.android.vending"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v3, ""

    goto :goto_5

    :catch_1
    move-exception v7

    invoke-virtual {p0}, Ldks;->u()Ldkw;

    move-result-object v7

    invoke-virtual {v7}, Ldkw;->x()Ldky;

    move-result-object v7

    const-string v8, "Error retrieving package info. appId, appName"

    invoke-static {v6}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    move v0, v4

    goto/16 :goto_1

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p0}, Ldks;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->B()Ldky;

    move-result-object v0

    const-string v1, "Collection disabled with firebase_analytics_collection_enabled=0"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    move v0, v4

    goto/16 :goto_2

    :cond_a
    if-nez v0, :cond_b

    invoke-virtual {p0}, Ldks;->w()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->Z()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ldks;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->B()Ldky;

    move-result-object v0

    const-string v1, "Collection disabled with google_app_measurement_enable=0"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    move v0, v4

    goto/16 :goto_2

    :cond_b
    invoke-virtual {p0}, Ldks;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v1, "Collection enabled"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    move v0, v5

    goto/16 :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {p0}, Ldks;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "getGoogleAppId or isMeasurementEnabled failed with exception. appId"

    invoke-static {v6}, Ldkw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_c
    move v0, v4

    goto/16 :goto_2
.end method

.method protected a(Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ldks;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v1, "GoogleService failed to initialize (no status)"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ldks;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v1, "GoogleService failed to initialize, status"

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
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

.method x()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ldks;->R()V

    iget-object v0, p0, Ldks;->a:Ljava/lang/String;

    return-object v0
.end method

.method y()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ldks;->R()V

    iget-object v0, p0, Ldks;->h:Ljava/lang/String;

    return-object v0
.end method

.method z()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ldks;->R()V

    iget-object v0, p0, Ldks;->b:Ljava/lang/String;

    return-object v0
.end method
