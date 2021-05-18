.class final Lcom/datami/smi/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final b:[B

.field private static c:I


# instance fields
.field final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/e;->b:[B

    const/16 v0, 0x88

    sput v0, Lcom/datami/smi/e;->c:I

    return-void

    :array_0
    .array-data 1
        0x22t
        0x62t
        0x52t
        -0x69t
        -0x32t
        0x16t
        -0x1t
        -0xat
        -0x3t
        0xct
        -0x5t
        0x2t
        0x4ft
        -0x47t
        0x8t
        -0xct
        0xbt
        -0x7t
        0x8t
        0x2t
        0x45t
        -0x19t
        0x1bt
        0xct
        -0x6t
        -0x7t
        0xft
        -0x4t
        0x8t
        0x48t
        -0x54t
        0x3t
        0xft
        -0xct
        0x53t
        -0x4ct
        0x9t
        -0xdt
        0x1t
        0x13t
        -0x5t
        0x3t
        -0x8t
        -0x8t
        0x5t
        0xdt
        0xbt
        -0x19t
        0x5t
        0x27t
        -0x31t
        0x3t
        0x0t
        0x6t
        0x3t
        0x1at
        -0x1at
        0xft
        -0x11t
        0x0t
        0x14t
        -0x5t
    .end array-data
.end method

.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/datami/smi/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/String;

    add-int/lit8 v3, p1, 0x3

    rsub-int/lit8 v0, p2, 0x3c

    add-int/lit8 v1, p0, 0x45

    sget-object v7, Lcom/datami/smi/e;->b:[B

    new-array v2, v3, [B

    add-int/lit8 v8, v3, -0x1

    if-nez v7, :cond_1

    move v3, v4

    move v5, v0

    :goto_0
    neg-int v0, v0

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v5, v5, 0x1

    :goto_1
    int-to-byte v0, v1

    aput-byte v0, v2, v3

    if-ne v3, v8, :cond_0

    invoke-direct {v6, v2, v4}, Ljava/lang/String;-><init>([BI)V

    return-object v6

    :cond_0
    aget-byte v0, v7, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    move v5, v0

    goto :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/16 v3, 0x3a

    const/4 v6, 0x0

    sget-object v0, Lcom/datami/smi/e;->b:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    and-int/lit8 v1, v0, 0x78

    add-int/lit8 v2, v1, 0x2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/e;->a(III)Ljava/lang/String;

    const/16 v0, 0x2e

    sget-object v1, Lcom/datami/smi/e;->b:[B

    aget-byte v1, v1, v3

    neg-int v1, v1

    const/16 v2, 0x25

    invoke-static {v0, v1, v2}, Lcom/datami/smi/e;->a(III)Ljava/lang/String;

    invoke-static {}, Lcom/datami/smi/c;->f()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {}, Lcom/datami/smi/c;->f()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    invoke-static {}, Lcom/datami/smi/c;->g()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/datami/smi/c;->g()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/datami/smi/c;->g()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v6}, Lcom/datami/smi/c;->a(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :goto_0
    invoke-static {}, Lcom/datami/smi/b/m;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/datami/smi/e;->a:I

    sget-object v1, Lcom/datami/smi/SdState;->SD_AVAILABLE:Lcom/datami/smi/SdState;

    invoke-virtual {v1}, Lcom/datami/smi/SdState;->getStatusCode()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_1
    sget-object v0, Lcom/datami/smi/c;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/datami/smi/c;->a(Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/datami/smi/c;->a(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    invoke-static {}, Lcom/datami/smi/c;->g()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_2
    invoke-static {}, Lcom/datami/smi/b/m;->r()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/datami/smi/c;->c(Landroid/content/Context;)V

    :cond_3
    :goto_1
    invoke-static {}, Lcom/datami/smi/c;->j()I

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/datami/smi/e;->b:[B

    const/16 v2, 0x1a

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/e;->b:[B

    const/16 v3, 0x34

    aget-byte v2, v2, v3

    invoke-static {v1, v2, v2}, Lcom/datami/smi/e;->a(III)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/datami/smi/e;->b:[B

    const/16 v4, 0x34

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/e;->b:[B

    const/16 v5, 0x3a

    aget-byte v4, v4, v5

    neg-int v4, v4

    const/16 v5, 0x38

    invoke-static {v3, v4, v5}, Lcom/datami/smi/e;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/datami/smi/c;->a(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/datami/smi/c;->a(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    throw v0

    :cond_4
    invoke-static {}, Lcom/datami/smi/c;->h()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/datami/smi/c;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/datami/smi/c;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/datami/smi/c;->i()Z

    goto :goto_1
.end method
