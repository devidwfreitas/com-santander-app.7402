.class public final Lhu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lhw;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lht;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lhu;-><init>()V

    return-void
.end method

.method static synthetic a(Lhu;)Lhw;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lhu;->a:Lhw;

    return-object v0
.end method


# virtual methods
.method public a(Lhw;)Lhu;
    .locals 1

    .prologue
    .line 71
    invoke-static {p1}, Lnmd;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhw;

    iput-object v0, p0, Lhu;->a:Lhw;

    .line 72
    return-object p0
.end method

.method public a()Lhv;
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lhu;->a:Lhw;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lhw;

    .line 65
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    new-instance v0, Lhs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lhs;-><init>(Lhu;Lht;)V

    return-object v0
.end method
