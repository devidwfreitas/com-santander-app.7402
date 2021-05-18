.class public Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private expirationDate:Ljava/lang/String;

.field private sentDate:Ljava/lang/String;

.field private statusExcluded:Z

.field private statusRead:Z

.field private stimulumId:Ljava/lang/String;

.field private stimulumType:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private timestamp:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean v0, p0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->statusRead:Z

    .line 22
    iput-boolean v0, p0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->statusExcluded:Z

    .line 26
    return-void
.end method

.method public static getList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x14

    if-ge v0, v2, :cond_1

    .line 124
    new-instance v2, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    invoke-direct {v2}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;-><init>()V

    .line 125
    const-string v3, "20170909222222"

    invoke-virtual {v2, v3}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->setSentDate(Ljava/lang/String;)V

    .line 126
    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_0

    .line 127
    const-string v3, "20170922222222"

    invoke-virtual {v2, v3}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->setExpirationDate(Ljava/lang/String;)V

    .line 128
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->setStatusRead(Z)V

    .line 130
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Title "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->setTitle(Ljava/lang/String;)V

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Description "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->setText(Ljava/lang/String;)V

    .line 132
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getExpirationDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->expirationDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->title:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSentDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->sentDate:Ljava/lang/String;

    return-object v0
.end method

.method public getStimulumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->stimulumId:Ljava/lang/String;

    return-object v0
.end method

.method public getStimulumType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->stimulumType:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public isStatusExcluded()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->statusExcluded:Z

    return v0
.end method

.method public isStatusRead()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->statusRead:Z

    return v0
.end method

.method public setExpirationDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->expirationDate:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setSentDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->sentDate:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setStatusExcluded(Z)V
    .locals 0

    .prologue
    .line 117
    iput-boolean p1, p0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->statusExcluded:Z

    .line 118
    return-void
.end method

.method public setStatusRead(Z)V
    .locals 0

    .prologue
    .line 109
    iput-boolean p1, p0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->statusRead:Z

    .line 110
    return-void
.end method

.method public setStimulumId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->stimulumId:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setStimulumType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->stimulumType:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->text:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->timestamp:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->title:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->url:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->uuid:Ljava/lang/String;

    .line 66
    return-void
.end method
