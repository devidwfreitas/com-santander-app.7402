.class public final Lcom/datami/smi/b/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/datami/smi/b/i;->j:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/datami/smi/b/i;->k:I

    iput-object p1, p0, Lcom/datami/smi/b/i;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/datami/smi/b/i;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/datami/smi/b/i;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/datami/smi/b/i;->g:Ljava/lang/String;

    iput-wide p5, p0, Lcom/datami/smi/b/i;->d:J

    iput-object p7, p0, Lcom/datami/smi/b/i;->a:Ljava/lang/String;

    iput-object p8, p0, Lcom/datami/smi/b/i;->b:Ljava/lang/String;

    iput p9, p0, Lcom/datami/smi/b/i;->h:I

    iput-object p10, p0, Lcom/datami/smi/b/i;->i:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/datami/smi/b/i;->j:Z

    iput p12, p0, Lcom/datami/smi/b/i;->k:I

    return-void
.end method

.method private a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/datami/smi/b/i;->j:Z

    return-void
.end method

.method private j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/b/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/b/i;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/b/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/b/i;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/datami/smi/b/i;->d:J

    return-wide v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/b/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/b/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/datami/smi/b/i;->h:I

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/b/i;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/datami/smi/b/i;->j:Z

    return v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/datami/smi/b/i;->k:I

    return v0
.end method
