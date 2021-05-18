.class public Lgrs;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final b:I = 0x83

.field private static final c:I = 0x4d2

.field public static final j:I = 0x1

.field public static final k:I = 0x2

.field public static final l:I = 0x3

.field public static final m:I = 0x4

.field public static final n:I = 0x6

.field public static final o:I = 0x7

.field public static final p:I = 0x8

.field public static final q:I = 0x9

.field public static final r:I = 0xa

.field public static final s:I = 0xb

.field public static final t:I = 0xc

.field public static final u:I = 0xd


# instance fields
.field private a:Landroid/net/Uri;

.field public h:Lgry;

.field public i:Landroid/app/Activity;

.field public v:Lmip;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 240
    const/16 v0, 0x5a

    .line 246
    :goto_0
    return v0

    .line 241
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 242
    const/16 v0, 0xb4

    goto :goto_0

    .line 243
    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 244
    const/16 v0, 0x10e

    goto :goto_0

    .line 246
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 544
    iget-object v0, p0, Lgrs;->i:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lgna;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lgna;

    .line 545
    if-eqz v0, :cond_0

    .line 546
    invoke-interface {v0}, Lgna;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacorrente_extrato"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, p0, Lgrs;->i:Landroid/app/Activity;

    new-instance v1, Lgrx;

    invoke-direct {v1, p0}, Lgrx;-><init>(Lgrs;)V

    const-string v2, "Funcionalidade indisponivel no momento"

    const-string v3, "Ok"

    invoke-static {v0, v1, v2, v3}, Lmxn;->b(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    invoke-virtual {p0}, Lgrs;->m()V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 561
    :try_start_0
    iget-object v0, p0, Lgrs;->i:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 563
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 564
    invoke-static {v0}, Lgpu;->a(Landroid/graphics/Bitmap;)V

    .line 565
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lmym;->a(Landroid/graphics/Bitmap;Landroid/content/Context;Ljava/lang/String;)V

    .line 567
    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lmwe;->a(Landroid/content/Context;IZ)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    :goto_0
    return-void

    .line 568
    :catch_0
    move-exception v0

    .line 569
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;I)V
    .locals 7

    .prologue
    const/16 v6, 0x4d2

    const/16 v5, 0x100

    const/16 v4, 0x83

    const/4 v3, 0x1

    .line 213
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 221
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 228
    if-ne p2, v4, :cond_0

    .line 229
    invoke-direct {p0, v0, v4}, Lgrs;->b(Landroid/content/Intent;I)V

    .line 232
    :cond_0
    if-ne p2, v6, :cond_1

    .line 233
    invoke-direct {p0, v0, v6}, Lgrs;->a(Landroid/content/Intent;I)V

    .line 236
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;IZ)V
    .locals 6

    .prologue
    .line 431
    new-instance v1, Landroid/app/Dialog;

    iget-object v0, p0, Lgrs;->i:Landroid/app/Activity;

    const v2, 0x7f0b0224

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 432
    const v0, 0x7f04027a

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 433
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 434
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x7f0b021e

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 436
    const v0, 0x7f1002da

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 437
    const v2, 0x7f100d61

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 441
    if-nez p3, :cond_0

    .line 442
    const-string v3, "Configura\u00e7\u00f5es"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 443
    new-instance v4, Lgrt;

    invoke-direct {v4, p0, v1}, Lgrt;-><init>(Lgrs;Landroid/app/Dialog;)V

    .line 457
    const-string v0, "Ok"

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 458
    new-instance v5, Lgru;

    invoke-direct {v5, p0, p2, v1}, Lgru;-><init>(Lgrs;ILandroid/app/Dialog;)V

    .line 534
    :goto_0
    iget-object v0, p0, Lgrs;->i:Landroid/app/Activity;

    const-string v2, "Aten\u00e7\u00e3o"

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lmxn;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    .line 535
    return-void

    .line 474
    :cond_0
    const-string v3, "Ok"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 475
    new-instance v4, Lgrv;

    invoke-direct {v4, p0, p2, v1}, Lgrv;-><init>(Lgrs;ILandroid/app/Dialog;)V

    .line 491
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 492
    const-string v0, "Voltar"

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 495
    :cond_1
    new-instance v5, Lgrw;

    invoke-direct {v5, p0, v1, p2}, Lgrw;-><init>(Lgrs;Landroid/app/Dialog;I)V

    goto :goto_0
.end method

.method private b(Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 575
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 576
    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 577
    invoke-static {v0}, Lgpu;->a(Landroid/graphics/Bitmap;)V

    .line 578
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lmym;->a(Landroid/graphics/Bitmap;Landroid/content/Context;Ljava/lang/String;)V

    .line 580
    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lmwe;->a(Landroid/content/Context;IZ)V

    .line 581
    return-void
.end method


# virtual methods
.method public a(I[Ljava/lang/String;[I)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 329
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v0, v4

    .line 331
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 332
    aget v1, p3, v0

    if-ne v1, v5, :cond_0

    .line 333
    aget-object v1, p2, v0

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    :cond_1
    const-string v2, ""

    .line 337
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 338
    const-string v1, ""

    .line 339
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 340
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_2
    move v0, v5

    :goto_2
    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    :goto_3
    move-object v1, v0

    .line 377
    goto :goto_1

    .line 340
    :sswitch_0
    const-string v7, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_2

    :sswitch_1
    const-string v7, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_2

    :sswitch_2
    const-string v7, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_2

    :sswitch_3
    const-string v7, "android.permission.CAMERA"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_2

    :sswitch_4
    const-string v7, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_2

    .line 342
    :pswitch_0
    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " armazenamento"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 345
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", armazenamento"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 348
    :pswitch_1
    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " telefone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 351
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", telefone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 354
    :pswitch_2
    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " localiza\u00e7\u00e3o "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 356
    :cond_5
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-le v0, v3, :cond_6

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " e localiza\u00e7\u00e3o "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 359
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localiza\u00e7\u00e3o"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 362
    :pswitch_3
    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " c\u00e2mera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 365
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", c\u00e2mera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 368
    :pswitch_4
    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contatos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 371
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contatos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 379
    :cond_9
    packed-switch p1, :pswitch_data_1

    :pswitch_5
    move-object v0, v2

    move v1, v3

    .line 421
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    :goto_5
    return-object v0

    .line 381
    :pswitch_6
    iget-object v0, p0, Lgrs;->i:Landroid/app/Activity;

    const-string v2, "android.permission.CAMERA"

    invoke-static {v0, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Se voc\u00ea negar ao aplicativo o acesso \u00e0 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", voc\u00ea n\u00e3o poder\u00e1 realizar tirar foto para o perfil"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 383
    goto :goto_4

    .line 385
    :pswitch_7
    iget-object v0, p0, Lgrs;->i:Landroid/app/Activity;

    const-string v2, "android.permission.CAMERA"

    invoke-static {v0, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Se voc\u00ea negar ao aplicativo o acesso \u00e0 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", voc\u00ea n\u00e3o poder\u00e1 realizar pagamentos usando o leitor de c\u00f3digo de barras"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 387
    goto :goto_4

    .line 389
    :pswitch_8
    iget-object v0, p0, Lgrs;->i:Landroid/app/Activity;

    const-string v2, "android.permission.READ_CONTACTS"

    invoke-static {v0, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Se voc\u00ea negar ao aplicativo o acesso aos "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", voc\u00ea n\u00e3o poder\u00e1 selecionar um n\u00famero a partir de seus contatos para realizar a Recarga"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 391
    goto :goto_4

    .line 393
    :pswitch_9
    iget-object v0, p0, Lgrs;->i:Landroid/app/Activity;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lgrs;->i:Landroid/app/Activity;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 394
    invoke-static {v0, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lgrs;->i:Landroid/app/Activity;

    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 395
    invoke-static {v0, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    move v2, v3

    .line 396
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Se voc\u00ea negar ao aplicativo o acesso ao "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", n\u00e3o ser\u00e1 poss\u00edvel iniciar o aplicativo. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 397
    goto/16 :goto_4

    :cond_b
    move v2, v4

    .line 395
    goto :goto_6

    .line 399
    :pswitch_a
    iget-object v0, p0, Lgrs;->i:Landroid/app/Activity;

    const-string v2, "android.permission.USE_FINGERPRINT"

    invoke-static {v0, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Se voc\u00ea negar ao aplicativo o acesso \u00e0 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", voc\u00ea n\u00e3o poder\u00e1 realizar o login utilizando o touch id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 401
    goto/16 :goto_4

    .line 403
    :pswitch_b
    iget-object v0, p0, Lgrs;->i:Landroid/app/Activity;

    const-string v1, "android.permission.READ_SMS"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lgrs;->i:Landroid/app/Activity;

    const-string v1, "android.permission.RECEIVE_SMS"

    .line 404
    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    move v1, v3

    .line 405
    :goto_7
    const-string v0, "sms_denied"

    goto/16 :goto_4

    :cond_d
    move v1, v4

    .line 404
    goto :goto_7

    .line 408
    :pswitch_c
    iget-object v0, p0, Lgrs;->i:Landroid/app/Activity;

    const-string v2, "android.permission.USE_FINGERPRINT"

    invoke-static {v0, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Se voc\u00ea negar ao aplicativo o acesso \u00e0 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", voc\u00ea n\u00e3o poder\u00e1 realizar a busca de ag\u00eancias por localiza\u00e7\u00e3o"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 410
    goto/16 :goto_4

    .line 412
    :pswitch_d
    iget-object v0, p0, Lgrs;->i:Landroid/app/Activity;

    const-string v2, "android.permission.CAMERA"

    invoke-static {v0, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Se voc\u00ea negar ao aplicativo o acesso \u00e0 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", o app Santander n\u00e3o poder\u00e1 ler QR Codes e nem c\u00f3digo de barras de contas."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 414
    goto/16 :goto_4

    .line 416
    :pswitch_e
    iget-object v0, p0, Lgrs;->i:Landroid/app/Activity;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Se voc\u00ea negar ao aplicativo o acesso ao "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", o app Santander n\u00e3o poder\u00e1 comparilhar."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto/16 :goto_4

    .line 423
    :cond_e
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 424
    :catch_0
    move-exception v0

    .line 425
    const-string v1, "VALIDAR_PERMISSOES"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const-string v0, ""

    goto/16 :goto_5

    .line 340
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1833add0 -> :sswitch_0
        -0x3c1ac56 -> :sswitch_2
        -0x550ba9 -> :sswitch_1
        0x1b9efa65 -> :sswitch_3
        0x75dd2d9c -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 379
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_c
        :pswitch_5
        :pswitch_5
        :pswitch_d
    .end packed-switch
.end method

.method public c(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 584
    invoke-virtual {p0, p1}, Lgrs;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgrs;->c(Ljava/lang/String;)V

    .line 585
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 588
    invoke-virtual {p0}, Lgrs;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 589
    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 591
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 592
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 593
    invoke-static {p0, v0, p1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 595
    :cond_0
    return-void
.end method

.method public i_()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lgrs;->h:Lgry;

    invoke-virtual {v0}, Lgry;->b()V

    .line 140
    return-void
.end method

.method public m()V
    .locals 0

    .prologue
    .line 538
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/16 v2, 0x4d2

    const/16 v1, 0x83

    const/4 v0, -0x1

    .line 203
    if-ne p1, v1, :cond_1

    if-ne p2, v0, :cond_1

    .line 204
    invoke-direct {p0, p3, v1}, Lgrs;->b(Landroid/content/Intent;I)V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    if-ne p1, v2, :cond_0

    if-ne p2, v0, :cond_0

    .line 206
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lgrs;->a:Landroid/net/Uri;

    .line 207
    iget-object v0, p0, Lgrs;->a:Landroid/net/Uri;

    invoke-direct {p0, v0, v2}, Lgrs;->a(Landroid/net/Uri;I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lgrs;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/santander/app/MinhaConta;->a(Landroid/content/Context;)V

    .line 92
    :cond_0
    iput-object p0, p0, Lgrs;->i:Landroid/app/Activity;

    .line 94
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lgrs;->v:Lmip;

    .line 96
    invoke-direct {p0}, Lgrs;->a()V

    .line 97
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 122
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/santander/app/MinhaConta;->a(Z)V

    .line 123
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 252
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 254
    const-string v0, "LOG_PERMISSAO"

    const-string v2, "Passou aqui"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {p0, p1, p2, p3}, Lgrs;->a(I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v3

    .line 260
    const-string v0, ""

    .line 262
    const-string v2, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 263
    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v2, v0, v1

    .line 264
    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 267
    :goto_0
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 269
    const-string v1, "sms_denied"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 271
    const-string v1, "id"

    sget-object v2, Liut;->PROCESSO_INTERROMPIDO:Liut;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 272
    const-string v1, "content"

    const-string v2, "permissaoSms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0, v0}, Lgrs;->startActivity(Landroid/content/Intent;)V

    .line 325
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .line 275
    :cond_1
    invoke-direct {p0, v2, p1, v0}, Lgrs;->a(Ljava/lang/String;IZ)V

    goto :goto_1

    .line 278
    :cond_2
    packed-switch p1, :pswitch_data_0

    :pswitch_1
    goto :goto_1

    .line 280
    :pswitch_2
    invoke-static {}, Lgpu;->e()V

    goto :goto_1

    .line 283
    :pswitch_3
    new-instance v0, Levq;

    invoke-direct {v0, p0}, Levq;-><init>(Landroid/app/Activity;)V

    .line 284
    invoke-virtual {v0, v1}, Levq;->b(Z)Levq;

    .line 285
    const-class v1, Lcom/santander/app/components/view/zxing/CustomScannerActivity;

    invoke-virtual {v0, v1}, Levq;->a(Ljava/lang/Class;)Levq;

    .line 286
    invoke-virtual {v0}, Levq;->d()V

    goto :goto_1

    .line 289
    :pswitch_4
    new-instance v0, Lmxg;

    invoke-direct {v0}, Lmxg;-><init>()V

    .line 290
    iget-object v1, p0, Lgrs;->i:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lmxg;->a(Landroid/app/Activity;)V

    .line 291
    invoke-virtual {v0}, Lmxg;->a()V

    goto :goto_1

    .line 296
    :pswitch_5
    iget-object v0, p0, Lgrs;->i:Landroid/app/Activity;

    check-cast v0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-virtual {v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->o()V

    goto :goto_1

    .line 299
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lgrs;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 302
    :pswitch_7
    iget-object v0, p0, Lgrs;->i:Landroid/app/Activity;

    instance-of v0, v0, Lgro;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lgrs;->i:Landroid/app/Activity;

    check-cast v0, Lgro;

    invoke-interface {v0}, Lgro;->k()V

    goto :goto_1

    .line 307
    :pswitch_8
    invoke-static {}, Lgpu;->h()V

    goto :goto_1

    .line 312
    :pswitch_9
    new-instance v0, Levq;

    invoke-direct {v0, p0}, Levq;-><init>(Landroid/app/Activity;)V

    .line 313
    invoke-virtual {v0, v1}, Levq;->b(Z)Levq;

    .line 314
    invoke-virtual {v0, v4}, Levq;->a(Z)Levq;

    .line 315
    const-class v1, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;

    invoke-virtual {v0, v1}, Levq;->a(Ljava/lang/Class;)Levq;

    .line 316
    sget-object v1, Levq;->d:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Levq;->b(Ljava/util/Collection;)V

    goto :goto_1

    :cond_3
    move-object v2, v0

    move v0, v1

    goto/16 :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 101
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 103
    invoke-static {p0}, Lgpu;->b(Landroid/app/Activity;)V

    .line 104
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/santander/app/MinhaConta;->a(Z)V

    .line 106
    invoke-static {}, Lcom/santander/app/MinhaConta;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/ExitActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 110
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 111
    const-string v1, "errorMessage"

    invoke-static {}, Lcom/santander/app/MinhaConta;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v1, "showHome"

    invoke-static {}, Lcom/santander/app/MinhaConta;->e()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v0}, Lgrs;->startActivity(Landroid/content/Intent;)V

    .line 116
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 128
    const-string v0, "SessionControl"

    const-string v1, "UIdetected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lgrs;->h:Lgry;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lgry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgry;-><init>(Lgrt;)V

    iput-object v0, p0, Lgrs;->h:Lgry;

    .line 131
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lgrs;->h:Lgry;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 133
    :cond_0
    iget-object v0, p0, Lgrs;->h:Lgry;

    invoke-virtual {v0}, Lgry;->a()V

    .line 135
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onUserInteraction()V

    .line 136
    return-void
.end method
