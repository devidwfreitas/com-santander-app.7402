.class public Levq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0xc0de

.field public static final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/lang/String;


# instance fields
.field private final h:Landroid/app/Activity;

.field private i:Landroid/app/Fragment;

.field private j:Landroid/support/v4/app/Fragment;

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    const-class v0, Levq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Levq;->g:Ljava/lang/String;

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "UPC_A"

    aput-object v1, v0, v2

    const-string v1, "UPC_E"

    aput-object v1, v0, v3

    const-string v1, "EAN_8"

    aput-object v1, v0, v4

    const-string v1, "EAN_13"

    aput-object v1, v0, v5

    const-string v1, "RSS_14"

    aput-object v1, v0, v6

    invoke-static {v0}, Levq;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Levq;->b:Ljava/util/Collection;

    .line 52
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "UPC_A"

    aput-object v1, v0, v2

    const-string v1, "UPC_E"

    aput-object v1, v0, v3

    const-string v1, "EAN_8"

    aput-object v1, v0, v4

    const-string v1, "EAN_13"

    aput-object v1, v0, v5

    const-string v1, "CODE_39"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "CODE_93"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CODE_128"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ITF"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "RSS_14"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "RSS_EXPANDED"

    aput-object v2, v0, v1

    .line 53
    invoke-static {v0}, Levq;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Levq;->c:Ljava/util/Collection;

    .line 55
    const-string v0, "QR_CODE"

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Levq;->d:Ljava/util/Collection;

    .line 56
    const-string v0, "DATA_MATRIX"

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Levq;->e:Ljava/util/Collection;

    .line 58
    const/4 v0, 0x0

    sput-object v0, Levq;->f:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Levq;->k:Ljava/util/Map;

    .line 77
    iput-object p1, p0, Levq;->h:Landroid/app/Activity;

    .line 78
    return-void
.end method

.method public static a(Landroid/app/Fragment;)Levq;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 116
    new-instance v0, Levq;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Levq;-><init>(Landroid/app/Activity;)V

    .line 117
    iput-object p0, v0, Levq;->i:Landroid/app/Fragment;

    .line 118
    return-object v0
.end method

.method public static a(Landroid/support/v4/app/Fragment;)Levq;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Levq;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Levq;-><init>(Landroid/app/Activity;)V

    .line 105
    iput-object p0, v0, Levq;->j:Landroid/support/v4/app/Fragment;

    .line 106
    return-object v0
.end method

.method public static a(IILandroid/content/Intent;)Levr;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    .line 300
    const v0, 0xc0de

    if-ne p0, v0, :cond_2

    .line 301
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 302
    const-string v0, "SCAN_RESULT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    const-string v0, "SCAN_RESULT_FORMAT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 304
    const-string v0, "SCAN_RESULT_BYTES"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 305
    const-string v0, "SCAN_RESULT_ORIENTATION"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 306
    if-ne v0, v5, :cond_0

    .line 307
    :goto_0
    const-string v0, "SCAN_RESULT_ERROR_CORRECTION_LEVEL"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 308
    const-string v0, "SCAN_RESULT_IMAGE_PATH"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 309
    new-instance v0, Levr;

    invoke-direct/range {v0 .. v6}, Levr;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :goto_1
    return-object v0

    .line 306
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    .line 316
    :cond_1
    new-instance v0, Levr;

    invoke-direct {v0}, Levr;-><init>()V

    goto :goto_1

    :cond_2
    move-object v0, v4

    .line 318
    goto :goto_1
.end method

.method private static varargs a([Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 326
    iget-object v0, p0, Levq;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 327
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 328
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 330
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 331
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 332
    :cond_0
    instance-of v3, v0, Ljava/lang/Long;

    if-eqz v3, :cond_1

    .line 333
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 334
    :cond_1
    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 335
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 336
    :cond_2
    instance-of v3, v0, Ljava/lang/Double;

    if-eqz v3, :cond_3

    .line 337
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 338
    :cond_3
    instance-of v3, v0, Ljava/lang/Float;

    if-eqz v3, :cond_4

    .line 339
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 340
    :cond_4
    instance-of v3, v0, Landroid/os/Bundle;

    if-eqz v3, :cond_5

    .line 341
    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0

    .line 343
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 346
    :cond_6
    return-void
.end method


# virtual methods
.method public a(I)Levq;
    .locals 2

    .prologue
    .line 159
    if-ltz p1, :cond_0

    .line 160
    const-string v0, "SCAN_CAMERA_ID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Levq;->a(Ljava/lang/String;Ljava/lang/Object;)Levq;

    .line 162
    :cond_0
    return-object p0
.end method

.method public a(J)Levq;
    .locals 3

    .prologue
    .line 211
    const-string v0, "TIMEOUT"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Levq;->a(Ljava/lang/String;Ljava/lang/Object;)Levq;

    .line 212
    return-object p0
.end method

.method public a(Ljava/lang/Class;)Levq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Levq;"
        }
    .end annotation

    .prologue
    .line 94
    iput-object p1, p0, Levq;->m:Ljava/lang/Class;

    .line 95
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Levq;
    .locals 1

    .prologue
    .line 136
    if-eqz p1, :cond_0

    .line 137
    const-string v0, "PROMPT_MESSAGE"

    invoke-virtual {p0, v0, p1}, Levq;->a(Ljava/lang/String;Ljava/lang/Object;)Levq;

    .line 139
    :cond_0
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)Levq;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Levq;->k:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-object p0
.end method

.method public a(Ljava/util/Collection;)Levq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Levq;"
        }
    .end annotation

    .prologue
    .line 194
    iput-object p1, p0, Levq;->l:Ljava/util/Collection;

    .line 195
    return-object p0
.end method

.method public a(Z)Levq;
    .locals 2

    .prologue
    .line 148
    const-string v0, "SCAN_ORIENTATION_LOCKED"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Levq;->a(Ljava/lang/String;Ljava/lang/Object;)Levq;

    .line 149
    return-object p0
.end method

.method protected a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 71
    const-class v0, Lcom/journeyapps/barcodescanner/CaptureActivity;

    return-object v0
.end method

.method protected a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Levq;->i:Landroid/app/Fragment;

    if-eqz v0, :cond_1

    .line 278
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 279
    iget-object v0, p0, Levq;->i:Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v0, p0, Levq;->j:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Levq;->j:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 284
    :cond_2
    iget-object v0, p0, Levq;->h:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected a(Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Levq;->i:Landroid/app/Fragment;

    if-eqz v0, :cond_1

    .line 266
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 267
    iget-object v0, p0, Levq;->i:Landroid/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Levq;->j:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Levq;->j:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 272
    :cond_2
    iget-object v0, p0, Levq;->h:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public b(Z)Levq;
    .locals 2

    .prologue
    .line 172
    const-string v0, "BEEP_ENABLED"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Levq;->a(Ljava/lang/String;Ljava/lang/Object;)Levq;

    .line 173
    return-object p0
.end method

.method public b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Levq;->m:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Levq;->a()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Levq;->m:Ljava/lang/Class;

    .line 84
    :cond_0
    iget-object v0, p0, Levq;->m:Ljava/lang/Class;

    return-object v0
.end method

.method public final b(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Levq;->a(Ljava/util/Collection;)Levq;

    .line 252
    invoke-virtual {p0}, Levq;->d()V

    .line 253
    return-void
.end method

.method public c(Z)Levq;
    .locals 2

    .prologue
    .line 183
    const-string v0, "BARCODE_IMAGE_ENABLED"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Levq;->a(Ljava/lang/String;Ljava/lang/Object;)Levq;

    .line 184
    return-object p0
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Levq;->k:Ljava/util/Map;

    return-object v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Levq;->e()Landroid/content/Intent;

    move-result-object v0

    const v1, 0xc0de

    invoke-virtual {p0, v0, v1}, Levq;->a(Landroid/content/Intent;I)V

    .line 203
    return-void
.end method

.method public e()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 221
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Levq;->h:Landroid/app/Activity;

    invoke-virtual {p0}, Levq;->b()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    const-string v0, "com.google.zxing.client.android.SCAN"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    iget-object v0, p0, Levq;->l:Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    iget-object v0, p0, Levq;->l:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 229
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 230
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 234
    :cond_1
    const-string v0, "SCAN_FORMATS"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    :cond_2
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 238
    const/high16 v0, 0x80000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 239
    invoke-direct {p0, v1}, Levq;->b(Landroid/content/Intent;)V

    .line 240
    return-object v1
.end method
