.class public Lfvu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private errorDetail:Lfvv;

.field private faultactor:Ljava/lang/String;

.field private faultcode:Ljava/lang/String;

.field private faultstring:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lfvu;->faultcode:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lfvu;->faultactor:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lfvu;->faultstring:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lfvu;->errorDetail:Lfvv;

    return-void
.end method


# virtual methods
.method public getErrorDetail()Lfvv;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lfvu;->errorDetail:Lfvv;

    return-object v0
.end method

.method public getFaultactor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lfvu;->faultactor:Ljava/lang/String;

    return-object v0
.end method

.method public getFaultcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lfvu;->faultcode:Ljava/lang/String;

    return-object v0
.end method

.method public getFaultstring()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lfvu;->faultstring:Ljava/lang/String;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lfvu;->faultcode:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lfvu;->faultstring:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lfvu;->errorDetail:Lfvv;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFaultError()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lfvu;->faultcode:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lfvu;->faultstring:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setError(Lfvu;)V
    .locals 1

    .prologue
    .line 50
    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p1}, Lfvu;->getErrorDetail()Lfvv;

    move-result-object v0

    iput-object v0, p0, Lfvu;->errorDetail:Lfvv;

    .line 52
    invoke-virtual {p1}, Lfvu;->getFaultactor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfvu;->faultactor:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lfvu;->getFaultcode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfvu;->faultcode:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Lfvu;->getFaultstring()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfvu;->faultstring:Ljava/lang/String;

    .line 56
    :cond_0
    return-void
.end method

.method public setErrorDetail(Lfvv;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lfvu;->errorDetail:Lfvv;

    .line 39
    return-void
.end method

.method public setFaultactor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lfvu;->faultactor:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setFaultcode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lfvu;->faultcode:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setFaultstring(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lfvu;->faultstring:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lfvu;->getErrorDetail()Lfvv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lfvu;->getErrorDetail()Lfvv;

    move-result-object v0

    invoke-virtual {v0}, Lfvv;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lfvu;->getFaultstring()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
