.class public final Lcom/datami/smi/c/b;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/datami/smi/c/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/datami/smi/c/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/datami/smi/c/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/datami/smi/c/b;->d:Ljava/lang/String;

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/c/b;->f:Ljava/lang/Long;

    iput-object p5, p0, Lcom/datami/smi/c/b;->e:Ljava/lang/String;

    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/c/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/c/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method private f()J
    .locals 2

    iget-object v0, p0, Lcom/datami/smi/c/b;->f:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/c/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/c/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/c/b;->e:Ljava/lang/String;

    return-object v0
.end method
