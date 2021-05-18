.class public Laqd;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static final a:J = 0x5957012c1b649baeL

.field private static final d:Ljava/lang/String; = "[ChatServiceException]"


# instance fields
.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 38
    iput p1, p0, Laqd;->b:I

    .line 39
    iput-object p2, p0, Laqd;->c:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    iput p1, p0, Laqd;->b:I

    .line 57
    iput-object p2, p0, Laqd;->c:Ljava/lang/String;

    .line 59
    invoke-direct {p0, p3}, Laqd;->a(Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Laqd;->c:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    if-eqz p1, :cond_0

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Laqd;->b:I

    .line 69
    :cond_0
    iput-object p2, p0, Laqd;->c:Ljava/lang/String;

    .line 71
    invoke-direct {p0, p3}, Laqd;->a(Ljava/lang/Throwable;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 49
    iput-object p1, p0, Laqd;->c:Ljava/lang/String;

    .line 51
    invoke-direct {p0, p2}, Laqd;->a(Ljava/lang/Throwable;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 44
    invoke-direct {p0, p1}, Laqd;->a(Ljava/lang/Throwable;)V

    .line 45
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 116
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lase;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const-string v0, "[ChatServiceException]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==> Service log erro: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lase;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    const-string v0, "[ChatServiceException]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==> Service log cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 122
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Laqd;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Laqd;->b:I

    .line 90
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Laqd;->c:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Laqd;->c:Ljava/lang/String;

    return-object v0
.end method
