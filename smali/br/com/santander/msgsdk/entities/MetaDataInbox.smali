.class public Lbr/com/santander/msgsdk/entities/MetaDataInbox;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private actionId:Ljava/lang/String;
    .annotation runtime Leks;
        a = "actionId"
    .end annotation
.end field

.field private pushId:Ljava/lang/String;
    .annotation runtime Leks;
        a = "pushId"
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
.method public getActionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lbr/com/santander/msgsdk/entities/MetaDataInbox;->actionId:Ljava/lang/String;

    return-object v0
.end method

.method public getPushId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lbr/com/santander/msgsdk/entities/MetaDataInbox;->pushId:Ljava/lang/String;

    return-object v0
.end method

.method public setActionId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lbr/com/santander/msgsdk/entities/MetaDataInbox;->actionId:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setPushId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lbr/com/santander/msgsdk/entities/MetaDataInbox;->pushId:Ljava/lang/String;

    .line 25
    return-void
.end method
