.class public Liaw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhzv;
.implements Lhzz;
.implements Liad;
.implements Liah;
.implements Liav;


# static fields
.field public static final a:I = 0x4d2


# instance fields
.field private b:Liam;

.field private c:Lhzu;

.field private d:Liac;

.field private e:Lhzy;

.field private f:Liag;

.field private g:Lmip;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhze;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhzb;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhzp;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lhyz;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation
.end field

.field private m:D

.field private n:Landroid/app/Dialog;

.field private o:Lghu;


# direct methods
.method public constructor <init>(Liam;)V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Liaw;->l:Ljava/util/ArrayList;

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Liaw;->m:D

    .line 98
    iput-object p1, p0, Liaw;->b:Liam;

    .line 99
    new-instance v0, Liae;

    invoke-direct {v0, p0}, Liae;-><init>(Liad;)V

    iput-object v0, p0, Liaw;->d:Liac;

    .line 100
    new-instance v0, Lhzw;

    invoke-direct {v0, p0}, Lhzw;-><init>(Lhzv;)V

    iput-object v0, p0, Liaw;->c:Lhzu;

    .line 101
    new-instance v0, Liaa;

    invoke-direct {v0, p0}, Liaa;-><init>(Lhzz;)V

    iput-object v0, p0, Liaw;->e:Lhzy;

    .line 102
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Liaw;->g:Lmip;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Liaw;->i:Ljava/util/List;

    .line 104
    return-void
.end method

.method static synthetic a(Liaw;D)D
    .locals 1

    .prologue
    .line 75
    iput-wide p1, p0, Liaw;->m:D

    return-wide p1
.end method

.method static synthetic a(Liaw;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Liaw;->n:Landroid/app/Dialog;

    return-object p1
.end method

.method private a(I)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 531
    new-instance v0, Liay;

    invoke-direct {v0, p0, p1}, Liay;-><init>(Liaw;I)V

    return-object v0
.end method

.method static synthetic a(Liaw;)Ljava/util/List;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Liaw;->i:Ljava/util/List;

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;)[B
    .locals 3

    .prologue
    .line 224
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 225
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0xa

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 226
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 228
    return-object v0
.end method

.method static synthetic b(Liaw;)D
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Liaw;->m:D

    return-wide v0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 403
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 404
    const-string v0, "android.permission.CAMERA"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 405
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    invoke-static {p0, v0, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 413
    :goto_0
    return-void

    .line 408
    :cond_1
    invoke-static {p0}, Liaw;->c(Landroid/app/Activity;)V

    goto :goto_0

    .line 411
    :cond_2
    invoke-static {p0}, Liaw;->c(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method static synthetic c(Liaw;)Liam;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Liaw;->b:Liam;

    return-object v0
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 416
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 417
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 418
    const v0, 0x7f04019d

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 420
    const v0, 0x7f1007ab

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 421
    new-instance v2, Liax;

    invoke-direct {v2, p0, v1}, Liax;-><init>(Landroid/app/Activity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 433
    return-void
.end method

.method static synthetic d(Liaw;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Liaw;->l()V

    return-void
.end method

.method static synthetic e(Liaw;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Liaw;->n:Landroid/app/Dialog;

    return-object v0
.end method

.method private j()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 570
    .line 572
    iget-object v0, p0, Liaw;->g:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Liaw;->g:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 573
    iget-object v0, p0, Liaw;->g:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->A()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 574
    const/4 v0, 0x1

    .line 578
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 576
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->e()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Liaw;->n:Landroid/app/Dialog;

    .line 583
    iget-object v0, p0, Liaw;->g:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->t()Lgke;

    move-result-object v0

    new-instance v1, Liaz;

    invoke-direct {v1, p0}, Liaz;-><init>(Liaw;)V

    invoke-interface {v0, v1}, Lgke;->a(Lfoh;)V

    .line 593
    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->w()V

    .line 597
    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 110
    iget-object v1, p0, Liaw;->b:Liam;

    invoke-interface {v1}, Liam;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    const-string v0, "Preencha campo Telefone!"

    .line 128
    :cond_0
    :goto_0
    if-nez v0, :cond_9

    .line 129
    invoke-virtual {p0}, Liaw;->c()V

    .line 133
    :goto_1
    return-void

    .line 112
    :cond_1
    iget-object v1, p0, Liaw;->b:Liam;

    invoke-interface {v1}, Liam;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xe

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Liaw;->b:Liam;

    invoke-interface {v1}, Liam;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_3

    .line 113
    :cond_2
    const-string v0, "Telefone inv\u00e1lido! (insira telefone no formato (XX) XXXX-XXXX)"

    goto :goto_0

    .line 114
    :cond_3
    iget-object v1, p0, Liaw;->b:Liam;

    invoke-interface {v1}, Liam;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 115
    const-string v0, "Preencha campo Email!"

    goto :goto_0

    .line 116
    :cond_4
    iget-object v1, p0, Liaw;->b:Liam;

    invoke-interface {v1}, Liam;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmyi;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 117
    const-string v0, "Email inv\u00e1lido! (insira email no formato exemplo@exemplo.com)"

    goto :goto_0

    .line 118
    :cond_5
    iget-object v1, p0, Liaw;->b:Liam;

    invoke-interface {v1}, Liam;->A()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Liaw;->b:Liam;

    invoke-interface {v1}, Liam;->p()Lhzp;

    move-result-object v1

    if-nez v1, :cond_6

    .line 119
    const-string v0, "Preencha campo Servi\u00e7o/Produto!"

    goto :goto_0

    .line 120
    :cond_6
    iget-object v1, p0, Liaw;->b:Liam;

    invoke-interface {v1}, Liam;->x()Lcom/santander/app/components/view/ClickToSelectEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/components/view/ClickToSelectEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 121
    const-string v0, "Selecione o campo Motivo"

    goto :goto_0

    .line 122
    :cond_7
    iget-wide v2, p0, Liaw;->m:D

    iget-object v1, p0, Liaw;->b:Liam;

    invoke-interface {v1}, Liam;->o()Lhzt;

    move-result-object v1

    invoke-virtual {v1}, Lhzt;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-lez v1, :cond_8

    .line 123
    const-string v0, "Tamanho total de todas as imagens juntas n\u00e3o podem ultrapassar 3MB! Favor excluir alguma imagem!"

    goto/16 :goto_0

    .line 124
    :cond_8
    iget-object v1, p0, Liaw;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 125
    const-string v0, "Limite M\u00e1ximo de 3 arquivos para anexar!"

    goto/16 :goto_0

    .line 131
    :cond_9
    invoke-virtual {p0, v0}, Liaw;->b(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public a(IILandroid/content/Intent;Landroid/content/Context;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    const/4 v2, 0x0

    .line 446
    new-instance v0, Lhzb;

    invoke-direct {v0}, Lhzb;-><init>()V

    .line 448
    if-eqz p2, :cond_2

    .line 449
    const/16 v1, 0x4d2

    if-ne p1, v1, :cond_1

    .line 450
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 451
    new-instance v6, Lhzb;

    invoke-direct {v6}, Lhzb;-><init>()V

    .line 454
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lhzb;->c(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 458
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 461
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 462
    new-instance v3, Ljava/io/File;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 465
    :try_start_0
    invoke-static {v3}, Lmxa;->a(Ljava/io/File;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 470
    :goto_0
    invoke-direct {p0, v2}, Liaw;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    .line 472
    array-length v4, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    div-double/2addr v4, v8

    div-double/2addr v4, v8

    .line 473
    invoke-virtual {v6, v4, v5}, Lhzb;->a(D)V

    .line 474
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v0, v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " - "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "%.2f"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    const-string v9, "."

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "MB"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lhzb;->d(Ljava/lang/String;)V

    .line 476
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v6, v0}, Lhzb;->b(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v6, v2}, Lhzb;->a(Landroid/graphics/Bitmap;)V

    .line 479
    invoke-static {v3, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lhzb;->a(Ljava/lang/String;)V

    .line 481
    :try_start_1
    new-instance v0, Lnaf;

    invoke-direct {v0}, Lnaf;-><init>()V

    invoke-virtual {v0, v3}, Lnaf;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lhzb;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 486
    :goto_1
    iget-wide v0, p0, Liaw;->m:D

    add-double/2addr v0, v4

    iput-wide v0, p0, Liaw;->m:D

    :cond_0
    move-object v0, v6

    .line 491
    :cond_1
    iget-object v1, p0, Liaw;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    invoke-virtual {p0}, Liaw;->i()V

    .line 495
    :cond_2
    if-nez p2, :cond_3

    .line 496
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->e()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 498
    :cond_3
    return-void

    .line 466
    :catch_0
    move-exception v3

    .line 467
    const-string v4, "Error"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 482
    :catch_1
    move-exception v0

    .line 483
    const-string v1, "ERROR_SHA"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Liaw;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Liaw;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 438
    invoke-static {p1}, Liaw;->b(Landroid/app/Activity;)V

    .line 442
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->e()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Limite M\u00e1ximo de 3 arquivos para anexar!"

    invoke-static {v0, v1}, Lmxn;->d(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_0
.end method

.method public a(Lhzg;)V
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->d()V

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Liaw;->h:Ljava/util/List;

    .line 293
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lhzg;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 294
    new-instance v2, Lhze;

    invoke-direct {v2}, Lhze;-><init>()V

    .line 295
    invoke-virtual {p1}, Lhzg;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhze;

    invoke-virtual {v0}, Lhze;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lhze;->f(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p1}, Lhzg;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhze;

    invoke-virtual {v0}, Lhze;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lhze;->b(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p1}, Lhzg;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhze;

    invoke-virtual {v0}, Lhze;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lhze;->c(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p1}, Lhzg;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhze;

    invoke-virtual {v0}, Lhze;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lhze;->d(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p1}, Lhzg;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhze;

    invoke-virtual {v0}, Lhze;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lhze;->g(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p1}, Lhzg;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhze;

    invoke-virtual {v0}, Lhze;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lhze;->e(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p1}, Lhzg;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhze;

    invoke-virtual {v0}, Lhze;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lhze;->h(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p1}, Lhzg;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhze;

    invoke-virtual {v0}, Lhze;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lhze;->j(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p1}, Lhzg;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhze;

    invoke-virtual {v0}, Lhze;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lhze;->i(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1}, Lhzg;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhze;

    invoke-virtual {v0}, Lhze;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lhze;->k(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p1}, Lhzg;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhze;

    invoke-virtual {v0}, Lhze;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lhze;->a(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Liaw;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 309
    :cond_0
    iget-object v0, p0, Liaw;->b:Liam;

    iget-object v1, p0, Liaw;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Liam;->a(Ljava/util/List;)V

    .line 310
    return-void
.end method

.method public a(Lhzj;)V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->d()V

    .line 334
    invoke-virtual {p1}, Lhzj;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-virtual {p1}, Lhzj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Liam;->b(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 337
    invoke-virtual {p0}, Liaw;->b()V

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    invoke-virtual {p0}, Liaw;->h()V

    goto :goto_0
.end method

.method public a(Lhzm;)V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->d()V

    .line 265
    invoke-virtual {p0, p1}, Liaw;->c(Lhzm;)V

    .line 266
    return-void
.end method

.method public a(Lhzr;)V
    .locals 3

    .prologue
    .line 364
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->d()V

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Liaw;->j:Ljava/util/List;

    .line 369
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lhzr;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 370
    new-instance v2, Lhzp;

    invoke-direct {v2}, Lhzp;-><init>()V

    .line 371
    invoke-virtual {p1}, Lhzr;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzp;

    invoke-virtual {v0}, Lhzp;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lhzp;->b(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p1}, Lhzr;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzp;

    invoke-virtual {v0}, Lhzp;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lhzp;->a(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p1}, Lhzr;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzp;

    invoke-virtual {v0}, Lhzp;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lhzp;->c(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Liaw;->j:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 377
    :cond_0
    iget-object v0, p0, Liaw;->b:Liam;

    iget-object v1, p0, Liaw;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Liam;->b(Ljava/util/List;)V

    .line 378
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->c()V

    .line 234
    new-instance v0, Lhzi;

    invoke-direct {v0}, Lhzi;-><init>()V

    .line 235
    iget-object v1, p0, Liaw;->g:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzi;->a(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Liaw;->e:Lhzy;

    invoke-interface {v1, v0}, Lhzy;->a(Lhzi;)V

    .line 237
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->c()V

    .line 242
    new-instance v0, Lhzf;

    invoke-direct {v0}, Lhzf;-><init>()V

    .line 243
    iget-object v1, p0, Liaw;->b:Liam;

    invoke-interface {v1}, Liam;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzf;->b(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Liaw;->b:Liam;

    invoke-interface {v1}, Liam;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Liaw;->b:Liam;

    invoke-interface {v1}, Liam;->p()Lhzp;

    move-result-object v1

    invoke-virtual {v1}, Lhzp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzf;->a(Ljava/lang/String;)V

    .line 249
    :cond_0
    iget-object v1, p0, Liaw;->c:Lhzu;

    invoke-interface {v1, v0}, Lhzu;->a(Lhzf;)V

    .line 250
    return-void
.end method

.method public b(Lhzg;)V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->d()V

    .line 315
    if-eqz p1, :cond_2

    .line 316
    invoke-virtual {p1}, Lhzg;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {p1}, Lhzg;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-virtual {p1}, Lhzg;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Liam;->a(Ljava/lang/String;)V

    .line 328
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->b()V

    goto :goto_0

    .line 323
    :cond_1
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->b()V

    goto :goto_0

    .line 326
    :cond_2
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->b()V

    goto :goto_0
.end method

.method public b(Lhzj;)V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->d()V

    .line 347
    if-eqz p1, :cond_2

    .line 348
    invoke-virtual {p1}, Lhzj;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {p1}, Lhzj;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-virtual {p1}, Lhzj;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Liam;->a(Ljava/lang/String;)V

    .line 360
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->b()V

    goto :goto_0

    .line 355
    :cond_1
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->b()V

    goto :goto_0

    .line 358
    :cond_2
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->b()V

    goto :goto_0
.end method

.method public b(Lhzm;)V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->d()V

    .line 271
    if-eqz p1, :cond_2

    .line 272
    invoke-virtual {p1}, Lhzm;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {p1}, Lhzm;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-virtual {p1}, Lhzm;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Liam;->a(Ljava/lang/String;)V

    .line 284
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->b()V

    goto :goto_0

    .line 279
    :cond_1
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->b()V

    goto :goto_0

    .line 282
    :cond_2
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->b()V

    goto :goto_0
.end method

.method public b(Lhzr;)V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->d()V

    .line 383
    if-eqz p1, :cond_2

    .line 384
    invoke-virtual {p1}, Lhzr;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {p1}, Lhzr;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-virtual {p1}, Lhzr;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Liam;->a(Ljava/lang/String;)V

    .line 396
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->b()V

    goto :goto_0

    .line 391
    :cond_1
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->b()V

    goto :goto_0

    .line 394
    :cond_2
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->b()V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->e()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lmxn;->d(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    .line 137
    return-void
.end method

.method public c()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 142
    new-instance v1, Lnaf;

    invoke-direct {v1}, Lnaf;-><init>()V

    .line 144
    iget-object v2, p0, Liaw;->b:Liam;

    invoke-interface {v2}, Liam;->c()V

    .line 145
    new-instance v2, Lhzk;

    invoke-direct {v2}, Lhzk;-><init>()V

    .line 148
    :try_start_0
    iget-object v3, p0, Liaw;->b:Liam;

    invoke-interface {v3}, Liam;->h()Lhze;

    move-result-object v3

    invoke-virtual {v3}, Lhze;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhzk;->g(Ljava/lang/String;)V

    .line 149
    iget-object v3, p0, Liaw;->b:Liam;

    invoke-interface {v3}, Liam;->h()Lhze;

    move-result-object v3

    invoke-virtual {v3}, Lhze;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhzk;->h(Ljava/lang/String;)V

    .line 150
    iget-object v3, p0, Liaw;->b:Liam;

    invoke-interface {v3}, Liam;->h()Lhze;

    move-result-object v3

    invoke-virtual {v3}, Lhze;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhzk;->n(Ljava/lang/String;)V

    .line 151
    iget-object v3, p0, Liaw;->b:Liam;

    invoke-interface {v3}, Liam;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhzk;->j(Ljava/lang/String;)V

    .line 152
    iget-object v3, p0, Liaw;->b:Liam;

    invoke-interface {v3}, Liam;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhzk;->q(Ljava/lang/String;)V

    .line 153
    iget-object v3, p0, Liaw;->b:Liam;

    invoke-interface {v3}, Liam;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhzk;->j(Ljava/lang/String;)V

    .line 154
    iget-object v3, p0, Liaw;->b:Liam;

    invoke-interface {v3}, Liam;->h()Lhze;

    move-result-object v3

    invoke-virtual {v3}, Lhze;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhzk;->k(Ljava/lang/String;)V

    .line 155
    iget-object v3, p0, Liaw;->b:Liam;

    invoke-interface {v3}, Liam;->n()Libo;

    move-result-object v3

    invoke-virtual {v3}, Libo;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhzk;->r(Ljava/lang/String;)V

    .line 156
    iget-object v3, p0, Liaw;->b:Liam;

    invoke-interface {v3}, Liam;->n()Libo;

    move-result-object v3

    invoke-virtual {v3}, Libo;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhzk;->p(Ljava/lang/String;)V

    .line 157
    iget-object v3, p0, Liaw;->b:Liam;

    invoke-interface {v3}, Liam;->h()Lhze;

    move-result-object v3

    invoke-virtual {v3}, Lhze;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhzk;->c(Ljava/lang/String;)V

    .line 158
    iget-object v3, p0, Liaw;->b:Liam;

    invoke-interface {v3}, Liam;->h()Lhze;

    move-result-object v3

    invoke-virtual {v3}, Lhze;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhzk;->d(Ljava/lang/String;)V

    .line 159
    iget-object v3, p0, Liaw;->b:Liam;

    invoke-interface {v3}, Liam;->h()Lhze;

    move-result-object v3

    invoke-virtual {v3}, Lhze;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhzk;->e(Ljava/lang/String;)V

    .line 160
    iget-object v3, p0, Liaw;->b:Liam;

    invoke-interface {v3}, Liam;->h()Lhze;

    move-result-object v3

    invoke-virtual {v3}, Lhze;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhzk;->f(Ljava/lang/String;)V

    .line 161
    iget-object v3, p0, Liaw;->g:Lmip;

    invoke-interface {v3}, Lmip;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhzk;->setTokenSessao(Ljava/lang/String;)V

    .line 163
    iget-object v3, p0, Liaw;->g:Lmip;

    invoke-interface {v3}, Lmip;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->f()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 164
    iget-object v3, p0, Liaw;->g:Lmip;

    invoke-interface {v3}, Lmip;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->f()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhzk;->setAgencia(Ljava/lang/String;)V

    .line 167
    :cond_0
    iget-object v3, p0, Liaw;->g:Lmip;

    invoke-interface {v3}, Lmip;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->g()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 168
    iget-object v3, p0, Liaw;->g:Lmip;

    invoke-interface {v3}, Lmip;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->g()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhzk;->setConta(Ljava/lang/String;)V

    .line 171
    :cond_1
    iget-object v3, p0, Liaw;->g:Lmip;

    invoke-interface {v3}, Lmip;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->k()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 172
    iget-object v3, p0, Liaw;->g:Lmip;

    invoke-interface {v3}, Lmip;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->k()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhzk;->i(Ljava/lang/String;)V

    .line 175
    :cond_2
    iget-object v3, p0, Liaw;->b:Liam;

    if-eqz v3, :cond_3

    iget-object v3, p0, Liaw;->b:Liam;

    invoke-interface {v3}, Liam;->i()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Liaw;->b:Liam;

    invoke-interface {v3}, Liam;->i()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 176
    iget-object v3, p0, Liaw;->b:Liam;

    invoke-interface {v3}, Liam;->i()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhzk;->l(Ljava/lang/String;)V

    .line 179
    :cond_3
    iget-object v3, p0, Liaw;->b:Liam;

    if-eqz v3, :cond_4

    iget-object v3, p0, Liaw;->b:Liam;

    invoke-interface {v3}, Liam;->j()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Liaw;->b:Liam;

    invoke-interface {v3}, Liam;->j()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 180
    iget-object v3, p0, Liaw;->b:Liam;

    invoke-interface {v3}, Liam;->j()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhzk;->m(Ljava/lang/String;)V

    .line 182
    :cond_4
    iget-object v3, p0, Liaw;->b:Liam;

    if-eqz v3, :cond_5

    iget-object v3, p0, Liaw;->b:Liam;

    invoke-interface {v3}, Liam;->k()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Liaw;->b:Liam;

    invoke-interface {v3}, Liam;->k()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 183
    iget-object v3, p0, Liaw;->b:Liam;

    invoke-interface {v3}, Liam;->k()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhzk;->o(Ljava/lang/String;)V

    .line 186
    :cond_5
    iget-object v3, p0, Liaw;->b:Liam;

    invoke-interface {v3}, Liam;->v()Lghu;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 187
    iget-object v3, p0, Liaw;->b:Liam;

    invoke-interface {v3}, Liam;->v()Lghu;

    move-result-object v3

    invoke-virtual {v3}, Lghu;->H()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lhzk;->a(Ljava/lang/String;)V

    .line 191
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 192
    iget-object v1, p0, Liaw;->i:Ljava/util/List;

    if-eqz v1, :cond_7

    iget-object v1, p0, Liaw;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v0

    .line 193
    :goto_0
    iget-object v0, p0, Liaw;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 194
    new-instance v4, Lhyy;

    invoke-direct {v4}, Lhyy;-><init>()V

    .line 195
    iget-object v0, p0, Liaw;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzb;

    invoke-virtual {v0}, Lhzb;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lhyy;->a(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Liaw;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzb;

    invoke-virtual {v0}, Lhzb;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lhyy;->c(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Liaw;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzb;

    invoke-virtual {v0}, Lhzb;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lhyy;->b(Ljava/lang/String;)V

    .line 198
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 202
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 203
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 204
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyy;

    invoke-virtual {v2, v0}, Lhzk;->a(Lhyy;)V

    .line 205
    const/4 v0, 0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyy;

    invoke-virtual {v2, v0}, Lhzk;->b(Lhyy;)V

    .line 206
    const/4 v0, 0x2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyy;

    invoke-virtual {v2, v0}, Lhzk;->c(Lhyy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_8
    :goto_1
    iget-object v0, p0, Liaw;->d:Liac;

    invoke-interface {v0, v2}, Liac;->a(Lhzk;)V

    .line 221
    return-void

    .line 207
    :cond_9
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_a

    .line 208
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyy;

    invoke-virtual {v2, v0}, Lhzk;->a(Lhyy;)V

    .line 209
    const/4 v0, 0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyy;

    invoke-virtual {v2, v0}, Lhzk;->b(Lhyy;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    const-string v1, "ERROR_CRYPTO"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 210
    :cond_a
    :try_start_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_8

    .line 211
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyy;

    invoke-virtual {v2, v0}, Lhzk;->a(Lhyy;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public c(Lhzm;)V
    .locals 3

    .prologue
    .line 614
    new-instance v0, Lhyz;

    invoke-direct {v0}, Lhyz;-><init>()V

    iput-object v0, p0, Liaw;->k:Lhyz;

    .line 615
    iget-object v0, p0, Liaw;->k:Lhyz;

    invoke-virtual {p0, p1}, Liaw;->d(Lhzm;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhyz;->a(Ljava/util/ArrayList;)V

    .line 616
    iget-object v0, p0, Liaw;->k:Lhyz;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lhyz;->d(Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Liaw;->k:Lhyz;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lhyz;->e(Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Liaw;->k:Lhyz;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lhyz;->c(Ljava/lang/String;)V

    .line 620
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Liaw;->b:Liam;

    invoke-interface {v1}, Liam;->e()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 621
    const-string v1, "comprovante"

    iget-object v2, p0, Liaw;->k:Lhyz;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 622
    iget-object v1, p0, Liaw;->b:Liam;

    invoke-interface {v1}, Liam;->e()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 623
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Liaw;->g:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Lhzm;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhzm;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation

    .prologue
    .line 628
    invoke-virtual {p1}, Lhzm;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 629
    new-instance v0, Lgky;

    const-string v1, "Protocolo: "

    invoke-virtual {p1}, Lhzm;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-object v1, p0, Liaw;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    :cond_0
    invoke-virtual {p1}, Lhzm;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 634
    new-instance v0, Lgky;

    const-string v1, "Data limite para contato:"

    invoke-virtual {p1}, Lhzm;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v1, p0, Liaw;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    :cond_1
    invoke-virtual {p1}, Lhzm;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 639
    new-instance v0, Lgky;

    const-string v1, "CPF: "

    invoke-virtual {p1}, Lhzm;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    iget-object v1, p0, Liaw;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    :cond_2
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->v()Lghu;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 644
    new-instance v0, Lgky;

    const-string v1, "Cart\u00e3o: "

    iget-object v2, p0, Liaw;->b:Liam;

    invoke-interface {v2}, Liam;->v()Lghu;

    move-result-object v2

    invoke-virtual {v2}, Lghu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object v1, p0, Liaw;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    new-instance v0, Lgky;

    const-string v1, "Final: "

    iget-object v2, p0, Liaw;->b:Liam;

    invoke-interface {v2}, Liam;->v()Lghu;

    move-result-object v2

    invoke-virtual {v2}, Lghu;->I()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object v1, p0, Liaw;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    :cond_3
    invoke-virtual {p1}, Lhzm;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 652
    new-instance v0, Lgky;

    const-string v1, "Assunto: "

    invoke-virtual {p1}, Lhzm;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object v1, p0, Liaw;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    :cond_4
    invoke-virtual {p1}, Lhzm;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 657
    new-instance v0, Lgky;

    const-string v1, "Motivo: "

    invoke-virtual {p1}, Lhzm;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    iget-object v1, p0, Liaw;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    :cond_5
    iget-object v0, p0, Liaw;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Liaw;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 562
    invoke-direct {p0}, Liaw;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    invoke-direct {p0}, Liaw;->k()V

    .line 567
    :goto_0
    return-void

    .line 565
    :cond_0
    invoke-direct {p0}, Liaw;->l()V

    goto :goto_0
.end method

.method public g()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 601
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->y()Lcom/santander/app/components/view/ClickToSelectEditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/ClickToSelectEditText;->setVisibility(I)V

    .line 603
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->z()Landroid/support/design/widget/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TextInputLayout;->setVisibility(I)V

    .line 604
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->x()Lcom/santander/app/components/view/ClickToSelectEditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/ClickToSelectEditText;->setVisibility(I)V

    .line 605
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->q()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 606
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->r()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 607
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->s()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 608
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->h_()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 609
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->t()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 611
    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->c()V

    .line 256
    new-instance v0, Lhzq;

    invoke-direct {v0}, Lhzq;-><init>()V

    .line 257
    new-instance v1, Liai;

    invoke-direct {v1, p0}, Liai;-><init>(Liah;)V

    iput-object v1, p0, Liaw;->f:Liag;

    .line 259
    iget-object v1, p0, Liaw;->f:Liag;

    invoke-interface {v1, v0}, Liag;->a(Lhzq;)V

    .line 260
    return-void
.end method

.method public i()V
    .locals 9

    .prologue
    const/16 v8, 0x64

    const/4 v5, 0x0

    .line 502
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->e()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    .line 508
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->l()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v4, v5

    .line 510
    :goto_0
    iget-object v0, p0, Liaw;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 512
    const v0, 0x7f040303

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 514
    const v0, 0x7f100fbc

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 515
    const v1, 0x7f100fbe

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 516
    const v2, 0x7f100fbb

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 518
    iget-object v3, p0, Liaw;->i:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhzb;

    invoke-virtual {v3}, Lhzb;->d()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3, v8, v8}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 519
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 521
    invoke-direct {p0, v4}, Liaw;->a(I)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    iget-object v1, p0, Liaw;->i:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhzb;

    invoke-virtual {v1}, Lhzb;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->l()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Liaw;->b:Liam;

    invoke-interface {v0}, Liam;->l()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 510
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 528
    :cond_0
    return-void
.end method
