.class public Lksv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lksw;
    .annotation runtime Leks;
        a = "paymentForm"
    .end annotation
.end field

.field private b:Lksm;
    .annotation runtime Leks;
        a = "card"
    .end annotation
.end field

.field private c:Lksg;
    .annotation runtime Leks;
        a = "account"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "companyCode"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lksw;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lksv;->a:Lksw;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lksv;->d:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public a(Lksg;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lksv;->c:Lksg;

    .line 51
    return-void
.end method

.method public a(Lksm;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lksv;->b:Lksm;

    .line 41
    return-void
.end method

.method public a(Lksw;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lksv;->a:Lksw;

    .line 31
    return-void
.end method

.method public b()Lksm;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lksv;->b:Lksm;

    return-object v0
.end method

.method public c()Lksg;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lksv;->c:Lksg;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lksv;->d:Ljava/lang/String;

    return-object v0
.end method
