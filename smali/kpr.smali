.class Lkpr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lkpq;

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "code"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "description"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lkpq;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lkpr;->a:Lkpq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lkpr;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lkpr;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lkpr;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lkpr;->b:Ljava/lang/String;

    return-object v0
.end method
