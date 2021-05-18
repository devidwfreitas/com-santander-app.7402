.class public Lari;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Lapy;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Date;

.field private e:Larh;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lari;->d:Ljava/util/Date;

    .line 28
    sget-object v0, Lapy;->FileTransferRequest:Lapy;

    iput-object v0, p0, Lari;->b:Lapy;

    .line 29
    iput-object p1, p0, Lari;->c:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lari;->a:J

    return-wide v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 48
    iput-wide p1, p0, Lari;->a:J

    .line 49
    return-void
.end method

.method public a(Lapy;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lari;->b:Lapy;

    .line 67
    return-void
.end method

.method public a(Larh;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lari;->e:Larh;

    .line 124
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lari;->c:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public a(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lari;->d:Ljava/util/Date;

    .line 106
    return-void
.end method

.method public b()Lapy;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lari;->b:Lapy;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lari;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lari;->c:Ljava/lang/String;

    .line 78
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public d()Ljava/util/Date;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lari;->d:Ljava/util/Date;

    return-object v0
.end method

.method public e()Larh;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lari;->e:Larh;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileToken{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lari;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFileTransferRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lari;->b:Lapy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lari;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCreateDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lari;->d:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lari;->e:Larh;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
