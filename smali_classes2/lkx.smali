.class public Llkx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Llla;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Llla;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Llkx;->a:Ljava/lang/Object;

    .line 63
    iput-object p2, p0, Llkx;->b:Llla;

    .line 64
    return-void
.end method

.method static synthetic a(Llkx;)Llla;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Llkx;->b:Llla;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Llkx;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Llkx;->a:Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public a(Llla;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Llkx;->b:Llla;

    .line 83
    return-void
.end method

.method public b()Llla;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Llkx;->b:Llla;

    return-object v0
.end method
