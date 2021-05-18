.class public Lbr/com/santander/msgsdk/domain/InterAcao;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private icon:I

.field private title:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lbr/com/santander/msgsdk/domain/InterAcao;->value:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lbr/com/santander/msgsdk/domain/InterAcao;->title:Ljava/lang/String;

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lbr/com/santander/msgsdk/domain/InterAcao;->icon:I

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lbr/com/santander/msgsdk/domain/InterAcao;->value:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lbr/com/santander/msgsdk/domain/InterAcao;->title:Ljava/lang/String;

    .line 19
    iput p3, p0, Lbr/com/santander/msgsdk/domain/InterAcao;->icon:I

    .line 20
    return-void
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lbr/com/santander/msgsdk/domain/InterAcao;->icon:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lbr/com/santander/msgsdk/domain/InterAcao;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lbr/com/santander/msgsdk/domain/InterAcao;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lbr/com/santander/msgsdk/domain/InterAcao;->icon:I

    .line 44
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lbr/com/santander/msgsdk/domain/InterAcao;->title:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lbr/com/santander/msgsdk/domain/InterAcao;->value:Ljava/lang/String;

    .line 28
    return-void
.end method
