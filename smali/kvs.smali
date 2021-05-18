.class public Lkvs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "lossStatus"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "description"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "descriptionDocument"
    .end annotation
.end field

.field private d:Ljava/util/Date;
    .annotation runtime Leks;
        a = "date"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Leks;
        a = "hour"
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkwk;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "documents"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkwk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lkvs;->f:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lkvs;->a:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public a(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lkvs;->d:Ljava/util/Date;

    .line 79
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkwk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    iput-object p1, p0, Lkvs;->f:Ljava/util/List;

    .line 47
    return-void
.end method

.method public b()Ljava/util/Date;
    .locals 5

    .prologue
    .line 50
    iget-object v0, p0, Lkvs;->d:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkvs;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    const-string v0, "%s%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lkvs;->d:Ljava/util/Date;

    const-string v4, "dd/MM/yyyy"

    invoke-static {v3, v4}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lkvs;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string v1, "dd/MM/yyyyHH:mm:ss"

    invoke-static {v0, v1}, Lmhj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lkvs;->d:Ljava/util/Date;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lkvs;->b:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lkvs;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lkvs;->e:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lkvs;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lkvs;->c:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public e()Ljava/util/Date;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lkvs;->d:Ljava/util/Date;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lkvs;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 90
    invoke-virtual {p0}, Lkvs;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkvs;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lkvs;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    invoke-virtual {p0}, Lkvs;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lkvs;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lkvs;->c:Ljava/lang/String;

    return-object v0
.end method
