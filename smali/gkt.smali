.class public Lgkt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private action:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "action"
    .end annotation
.end field

.field private code:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "code"
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "message"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lgkt;->action:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lgkt;->code:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lgkt;->message:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lgkt;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lgkt;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lgkt;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lgkt;->action:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lgkt;->code:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lgkt;->message:Ljava/lang/String;

    .line 51
    return-void
.end method
