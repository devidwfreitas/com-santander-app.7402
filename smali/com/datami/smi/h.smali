.class public final Lcom/datami/smi/h;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/datami/smi/h;->a:I

    iput v0, p0, Lcom/datami/smi/h;->b:I

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/datami/smi/h;->a:I

    iput p1, p0, Lcom/datami/smi/h;->b:I

    return-void
.end method

.method private a()I
    .locals 1

    iget v0, p0, Lcom/datami/smi/h;->b:I

    return v0
.end method

.method private b()I
    .locals 1

    iget v0, p0, Lcom/datami/smi/h;->a:I

    return v0
.end method
