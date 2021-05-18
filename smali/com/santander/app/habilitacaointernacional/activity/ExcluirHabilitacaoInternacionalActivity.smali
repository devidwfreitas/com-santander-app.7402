.class public Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Ljava/io/Serializable;
.implements Lnez;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final b:J = 0x1L


# instance fields
.field private A:Landroid/app/Activity;

.field private B:Lghu;

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lghu;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lioi;",
            ">;"
        }
    .end annotation
.end field

.field private E:Landroid/widget/Button;

.field private F:I

.field public a:Landroid/app/Dialog;

.field private c:Landroid/widget/ListView;

.field private d:Linu;

.field private e:I

.field private final f:Ljava/lang/String;

.field private g:Limk;

.field private w:Lcom/santander/app/widget/Indicator;

.field private x:Landroid/support/v4/view/ViewPager;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 61
    const-string v0, "ExcluirHabilitacaoInternacionalActivity"

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->f:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->a:Landroid/app/Dialog;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->D:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;)Limk;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->g:Limk;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;Linu;)Linu;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->d:Linu;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lioi;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lioi;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 293
    if-eqz p1, :cond_3

    .line 295
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 297
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 298
    new-instance v3, Lioi;

    invoke-direct {v3}, Lioi;-><init>()V

    .line 299
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    invoke-virtual {v0}, Lioi;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lioi;->a(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    invoke-virtual {v0}, Lioi;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lioi;->b(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    invoke-virtual {v0}, Lioi;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lioi;->c(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    invoke-virtual {v0}, Lioi;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lioi;->d(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    invoke-virtual {v0}, Lioi;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lioi;->e(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    invoke-virtual {v0}, Lioi;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lioi;->f(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    invoke-virtual {v0}, Lioi;->e()Z

    move-result v0

    invoke-virtual {v3, v0}, Lioi;->a(Z)V

    .line 307
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    invoke-virtual {v0}, Lioi;->c()Ljava/lang/String;

    move-result-object v0

    .line 310
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 312
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    invoke-virtual {v0}, Lioi;->d()Ljava/lang/String;

    move-result-object v0

    .line 313
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 320
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    invoke-virtual {v0}, Lioi;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 321
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    invoke-virtual {v0}, Lioi;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 323
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    invoke-virtual {v0}, Lioi;->f()Ljava/lang/String;

    move-result-object v0

    .line 324
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 326
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    invoke-virtual {v0}, Lioi;->g()Ljava/lang/String;

    move-result-object v0

    .line 327
    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v5, v3

    move-object v3, v0

    .line 330
    :goto_1
    invoke-virtual {p0}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnaq;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    const/4 v0, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_0
    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 378
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v9, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v9, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v9, v9, v8

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lioi;->c(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v10, v2

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v11, v10, v7

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lioi;->d(Ljava/lang/String;)V

    .line 381
    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    .line 383
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v5, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v5, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v5, v5, v8

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lioi;->e(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v3, v2

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v9, v3, v7

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v3, v3, v8

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 386
    invoke-virtual {v0, v3}, Lioi;->f(Ljava/lang/String;)V

    .line 297
    :cond_1
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 330
    :sswitch_0
    const-string v12, "dd/MM/yyyy"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    move v0, v2

    goto/16 :goto_2

    :sswitch_1
    const-string v12, "MM/dd/yyyy"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    move v0, v7

    goto/16 :goto_2

    :sswitch_2
    const-string v12, "yyyy/MM/dd"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    move v0, v8

    goto/16 :goto_2

    .line 333
    :pswitch_0
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v9, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v9, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v9, v9, v8

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lioi;->c(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v10, v2

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v11, v10, v7

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lioi;->d(Ljava/lang/String;)V

    .line 336
    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    .line 338
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v5, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v5, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v5, v5, v8

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lioi;->e(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v3, v2

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v9, v3, v7

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v3, v3, v8

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 341
    invoke-virtual {v0, v3}, Lioi;->f(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 348
    :pswitch_1
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v9, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v9, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v9, v9, v8

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lioi;->c(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v10, v7

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v11, v10, v2

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lioi;->d(Ljava/lang/String;)V

    .line 351
    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    .line 353
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v5, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v5, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v5, v5, v8

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lioi;->e(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v3, v7

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v9, v3, v2

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v3, v3, v8

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 356
    invoke-virtual {v0, v3}, Lioi;->f(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 363
    :pswitch_2
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v9, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v9, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v9, v9, v2

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lioi;->c(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v10, v8

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v11, v10, v7

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lioi;->d(Ljava/lang/String;)V

    .line 366
    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    .line 368
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v5, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v5, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v5, v5, v2

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lioi;->e(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v3, v8

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v9, v3, v7

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v3, v3, v2

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 371
    invoke-virtual {v0, v3}, Lioi;->f(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    move-object v4, v6

    .line 397
    :cond_3
    return-object v4

    :cond_4
    move-object v3, v4

    move-object v5, v4

    goto/16 :goto_1

    .line 330
    :sswitch_data_0
    .sparse-switch
        -0x26c91540 -> :sswitch_0
        -0x61c4540 -> :sswitch_2
        0x7c669100 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static synthetic a(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;I)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->d(I)V

    return-void
.end method

.method public static synthetic b(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->x:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->D:Ljava/util/ArrayList;

    return-object p1
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 130
    const/16 v2, 0x50

    .line 131
    const/4 v0, 0x0

    move v3, v2

    move-object v2, v0

    move v0, v1

    .line 132
    :goto_0
    iget-object v5, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->d:Linu;

    invoke-virtual {v5}, Linu;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 134
    iget-object v5, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->d:Linu;

    iget-object v6, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v5, v0, v2, v6}, Linu;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 135
    if-nez v0, :cond_0

    .line 136
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v4, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    :cond_0
    invoke-virtual {v2, v4, v1}, Landroid/view/View;->measure(II)V

    .line 138
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v3, v5

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v1

    iget-object v2, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->d:Linu;

    invoke-virtual {v2}, Linu;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 144
    iget-object v1, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    .line 146
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->A:Landroid/app/Activity;

    return-object v0
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 149
    const v0, 0x7f100a26

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->x:Landroid/support/v4/view/ViewPager;

    .line 151
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->x:Landroid/support/v4/view/ViewPager;

    new-instance v1, Limx;

    invoke-direct {v1, p0}, Limx;-><init>(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 165
    const v0, 0x7f100a27

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Indicator;

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->w:Lcom/santander/app/widget/Indicator;

    .line 166
    const v0, 0x7f1004c8

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->z:Landroid/widget/ImageView;

    .line 167
    const v0, 0x7f1004c9

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->y:Landroid/widget/ImageView;

    .line 168
    new-instance v0, Limk;

    iget-object v2, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->x:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->w:Lcom/santander/app/widget/Indicator;

    iget-object v4, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->z:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->y:Landroid/widget/ImageView;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Limk;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lcom/santander/app/widget/Indicator;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->g:Limk;

    .line 176
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->z:Landroid/widget/ImageView;

    new-instance v1, Limy;

    invoke-direct {v1, p0}, Limy;-><init>(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->y:Landroid/widget/ImageView;

    new-instance v1, Limz;

    invoke-direct {v1, p0}, Limz;-><init>(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->g:Limk;

    iget v1, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->F:I

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Limk;->a(ILjava/lang/Boolean;)V

    .line 204
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->g:Limk;

    invoke-virtual {v0, p0}, Limk;->a(Lnez;)V

    .line 205
    new-instance v0, Linb;

    invoke-direct {v0, p0}, Linb;-><init>(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;)V

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Linb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 206
    return-void
.end method

.method private d(I)V
    .locals 3

    .prologue
    .line 403
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 404
    const v0, 0x7f040188

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 405
    const v0, 0x7f100772

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 407
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 408
    const-string v2, "N\u00e3o existem viagens cadastradas."

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    :cond_0
    :goto_0
    const v0, 0x7f1005ed

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SegmentTextView;

    .line 413
    const-string v2, "Alerta"

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SegmentTextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    const v0, 0x7f100783

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 415
    new-instance v2, Lina;

    invoke-direct {v2, p0, v1}, Lina;-><init>(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 422
    return-void

    .line 409
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 410
    const-string v2, "Selecione uma viagem antes de continuar."

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static synthetic d(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->b()V

    return-void
.end method

.method public static synthetic e(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;)Linu;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->d:Linu;

    return-object v0
.end method

.method public static synthetic f(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method public static synthetic g(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->E:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lioi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 210
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->d:Linu;

    invoke-virtual {v0}, Linu;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->d:Linu;

    invoke-virtual {v0, v1}, Linu;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    .line 212
    invoke-virtual {v0}, Lioi;->h()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 216
    :cond_1
    return-object v2
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 450
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 454
    iput p1, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->e:I

    .line 455
    new-instance v0, Linb;

    invoke-direct {v0, p0}, Linb;-><init>(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Linb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 456
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f04021c

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->setContentView(I)V

    .line 79
    iput-object p0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->A:Landroid/app/Activity;

    .line 80
    invoke-virtual {p0}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 81
    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 82
    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 83
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 86
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->e()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->C:Ljava/util/List;

    .line 87
    if-eqz v2, :cond_1

    .line 88
    const-string v0, "cartoe"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lghu;

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->B:Lghu;

    .line 89
    const-string v0, "indiceCartaoSelecionado"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->F:I

    .line 96
    :cond_0
    :goto_0
    const v0, 0x7f090515

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 98
    const v0, 0x7f1009d7

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->E:Landroid/widget/Button;

    .line 99
    const v0, 0x7f100a4a

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->c:Landroid/widget/ListView;

    .line 101
    invoke-direct {p0}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->c()V

    .line 102
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->E:Landroid/widget/Button;

    new-instance v1, Limw;

    invoke-direct {v1, p0}, Limw;-><init>(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->C:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->B:Lghu;

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 428
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 434
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->x:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->e:I

    .line 441
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->x:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lhau;->c(I)V

    .line 443
    new-instance v0, Linb;

    invoke-direct {v0, p0}, Linb;-><init>(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Linb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 444
    return-void
.end method
