.class public Lgec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lged;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lged;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lgec;->a:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lgec;->b:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lgec;->c:Lged;

    .line 28
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lgec;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lged;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lgec;->c:Lged;

    .line 56
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lgec;->a:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lgec;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lgec;->b:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public c()Lged;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lgec;->c:Lged;

    return-object v0
.end method
