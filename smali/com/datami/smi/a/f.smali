.class final Lcom/datami/smi/a/f;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/datami/smi/a/g;

.field b:J

.field final synthetic c:Lcom/datami/smi/a/d;


# direct methods
.method private constructor <init>(Lcom/datami/smi/a/d;Lcom/datami/smi/a/g;J)V
    .locals 3

    iput-object p1, p0, Lcom/datami/smi/a/f;->c:Lcom/datami/smi/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/datami/smi/a/f;->b:J

    iput-object p2, p0, Lcom/datami/smi/a/f;->a:Lcom/datami/smi/a/g;

    iput-wide p3, p0, Lcom/datami/smi/a/f;->b:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/datami/smi/a/d;Lcom/datami/smi/a/g;JLcom/datami/smi/a/e;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/datami/smi/a/f;-><init>(Lcom/datami/smi/a/d;Lcom/datami/smi/a/g;J)V

    return-void
.end method
