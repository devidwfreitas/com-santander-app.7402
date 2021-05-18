.class public Lcom/ca/mdo/SessionMetaData;
.super Ljava/lang/Object;
.source "SessionMetaData.java"


# instance fields
.field private header:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private state:I

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "header"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/ca/mdo/SessionMetaData;->sessionId:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/ca/mdo/SessionMetaData;->status:Ljava/lang/String;

    .line 15
    iput p3, p0, Lcom/ca/mdo/SessionMetaData;->state:I

    .line 16
    iput-object p4, p0, Lcom/ca/mdo/SessionMetaData;->header:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ca/mdo/SessionMetaData;->header:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ca/mdo/SessionMetaData;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/ca/mdo/SessionMetaData;->state:I

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ca/mdo/SessionMetaData;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ca/mdo/SessionMetaData;->header:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/ca/mdo/SessionMetaData;->status:Ljava/lang/String;

    .line 33
    return-void
.end method
