.class public Lipb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lipa;

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "errorMessage"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "errorCode"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lipa;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lipb;->a:Lipa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lipb;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lipb;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lipb;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lipb;->c:Ljava/lang/String;

    return-object v0
.end method
