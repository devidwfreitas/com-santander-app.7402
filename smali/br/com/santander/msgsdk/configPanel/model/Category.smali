.class public Lbr/com/santander/msgsdk/configPanel/model/Category;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private alertMessage:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private membershipStatus:Z

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lbr/com/santander/msgsdk/configPanel/model/Category;->code:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lbr/com/santander/msgsdk/configPanel/model/Category;->title:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lbr/com/santander/msgsdk/configPanel/model/Category;->description:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lbr/com/santander/msgsdk/configPanel/model/Category;->alertMessage:Ljava/lang/String;

    .line 23
    iput-boolean p5, p0, Lbr/com/santander/msgsdk/configPanel/model/Category;->membershipStatus:Z

    .line 24
    return-void
.end method


# virtual methods
.method public getAlertMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/model/Category;->alertMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/model/Category;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/model/Category;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/model/Category;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isMembershipStatus()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lbr/com/santander/msgsdk/configPanel/model/Category;->membershipStatus:Z

    return v0
.end method

.method public setAlertMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lbr/com/santander/msgsdk/configPanel/model/Category;->alertMessage:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lbr/com/santander/msgsdk/configPanel/model/Category;->code:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lbr/com/santander/msgsdk/configPanel/model/Category;->description:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setMembershipStatus(Z)V
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lbr/com/santander/msgsdk/configPanel/model/Category;->membershipStatus:Z

    .line 64
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lbr/com/santander/msgsdk/configPanel/model/Category;->title:Ljava/lang/String;

    .line 40
    return-void
.end method
