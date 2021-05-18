.class public Lbr/com/santander/msgsdk/entities/ListInbox;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private applicationId:Ljava/lang/String;
    .annotation runtime Leks;
        a = "applicationId"
    .end annotation
.end field

.field private dataInbox:Lbr/com/santander/msgsdk/entities/DataInbox;
    .annotation runtime Leks;
        a = "data"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Leks;
        a = "status"
    .end annotation
.end field

.field private time:Ljava/lang/String;
    .annotation runtime Leks;
        a = "timestamp"
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Leks;
        a = "userId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lbr/com/santander/msgsdk/entities/ListInbox;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getDataInbox()Lbr/com/santander/msgsdk/entities/DataInbox;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lbr/com/santander/msgsdk/entities/ListInbox;->dataInbox:Lbr/com/santander/msgsdk/entities/DataInbox;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbr/com/santander/msgsdk/entities/ListInbox;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lbr/com/santander/msgsdk/entities/ListInbox;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lbr/com/santander/msgsdk/entities/ListInbox;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setApplicationId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lbr/com/santander/msgsdk/entities/ListInbox;->applicationId:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setDataInbox(Lbr/com/santander/msgsdk/entities/DataInbox;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lbr/com/santander/msgsdk/entities/ListInbox;->dataInbox:Lbr/com/santander/msgsdk/entities/DataInbox;

    .line 59
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lbr/com/santander/msgsdk/entities/ListInbox;->status:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lbr/com/santander/msgsdk/entities/ListInbox;->time:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lbr/com/santander/msgsdk/entities/ListInbox;->userId:Ljava/lang/String;

    .line 35
    return-void
.end method
