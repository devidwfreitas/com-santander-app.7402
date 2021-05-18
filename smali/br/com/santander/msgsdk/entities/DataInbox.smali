.class public Lbr/com/santander/msgsdk/entities/DataInbox;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private idNotification:I
    .annotation runtime Leks;
        a = "idNotification"
    .end annotation
.end field

.field private isSelected:Z

.field private message:Ljava/lang/String;
    .annotation runtime Leks;
        a = "message"
    .end annotation
.end field

.field private metaDataInbox:Lbr/com/santander/msgsdk/entities/MetaDataInbox;
    .annotation runtime Leks;
        a = "metadata"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Leks;
        a = "title"
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
.method public getIdNotification()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lbr/com/santander/msgsdk/entities/DataInbox;->idNotification:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lbr/com/santander/msgsdk/entities/DataInbox;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaDataInbox()Lbr/com/santander/msgsdk/entities/MetaDataInbox;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lbr/com/santander/msgsdk/entities/DataInbox;->metaDataInbox:Lbr/com/santander/msgsdk/entities/MetaDataInbox;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lbr/com/santander/msgsdk/entities/DataInbox;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lbr/com/santander/msgsdk/entities/DataInbox;->isSelected:Z

    return v0
.end method

.method public setIdNotification(I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lbr/com/santander/msgsdk/entities/DataInbox;->idNotification:I

    .line 57
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lbr/com/santander/msgsdk/entities/DataInbox;->message:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setMetaDataInbox(Lbr/com/santander/msgsdk/entities/MetaDataInbox;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lbr/com/santander/msgsdk/entities/DataInbox;->metaDataInbox:Lbr/com/santander/msgsdk/entities/MetaDataInbox;

    .line 49
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lbr/com/santander/msgsdk/entities/DataInbox;->isSelected:Z

    .line 65
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lbr/com/santander/msgsdk/entities/DataInbox;->title:Ljava/lang/String;

    .line 33
    return-void
.end method
