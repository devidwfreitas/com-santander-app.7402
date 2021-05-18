.class public Lcom/ca/mdo/SessionUploadInfo;
.super Ljava/lang/Object;
.source "SessionUploadInfo.java"


# instance fields
.field private eventCounts:I

.field private sessionAcceptanceHeaderValue:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private statusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "eventsCount"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ca/mdo/SessionUploadInfo;->sessionId:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/ca/mdo/SessionUploadInfo;->eventCounts:I

    .line 16
    return-void
.end method


# virtual methods
.method public getEventCounts()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/ca/mdo/SessionUploadInfo;->eventCounts:I

    return v0
.end method

.method public getSessionAcceptanceHeaderValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ca/mdo/SessionUploadInfo;->sessionAcceptanceHeaderValue:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ca/mdo/SessionUploadInfo;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/ca/mdo/SessionUploadInfo;->statusCode:I

    return v0
.end method

.method public setEventCounts(I)V
    .locals 0
    .param p1, "eventCounts"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/ca/mdo/SessionUploadInfo;->eventCounts:I

    .line 46
    return-void
.end method

.method public setSessionAcceptanceHeaderValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionAcceptanceHeaderValue"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/ca/mdo/SessionUploadInfo;->sessionAcceptanceHeaderValue:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/ca/mdo/SessionUploadInfo;->statusCode:I

    .line 30
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionUploadInfo{sessionId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/mdo/SessionUploadInfo;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ca/mdo/SessionUploadInfo;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionAcceptanceHeaderValue=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/mdo/SessionUploadInfo;->sessionAcceptanceHeaderValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventCounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ca/mdo/SessionUploadInfo;->eventCounts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
